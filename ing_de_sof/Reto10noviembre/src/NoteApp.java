import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

class NoteApp {
    private final JFrame frame = new JFrame("Blog Note");
    private final CardLayout cards = new CardLayout();
    private final JPanel root = new JPanel(cards);

    // Editor state
    private JTextArea textArea;
    private JLabel statusBar;
    private Path currentFile = null;

    // Explicit OnlyOffice path you provided
    private static final Path ONLY_OFFICE_ABSOLUTE = Paths.get("/usr/bin/snap/onlyoffice-desktopeditors");

    void show() {
        initUI();
        frame.setVisible(true);
    }

    private void initUI() {
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 800);
        frame.setLocationRelativeTo(null);

        // screen 1: icon view (two icons)
        JPanel iconPanel = new JPanel(new GridBagLayout());
        iconPanel.setBackground(Color.DARK_GRAY);

        JPanel icons = new JPanel(new GridBagLayout());
        icons.setOpaque(false);
        GridBagConstraints c = new GridBagConstraints();
        c.insets = new Insets(24, 24, 24, 24);

        // Note icon
        JLabel noteIcon = makeIconLabel("7193817.png", "Click to write");
        noteIcon.addMouseListener(new MouseAdapter() {
            @Override public void mouseClicked(MouseEvent e) {
                cards.show(root, "EDITOR");
                textArea.requestFocusInWindow();
                textArea.selectAll();
            }
        });

        // OnlyOffice icon
        JLabel onlyOfficeIcon = makeIconLabel("Pasted image.png", "Open OnlyOffice");
        onlyOfficeIcon.addMouseListener(new MouseAdapter() {
            @Override public void mouseClicked(MouseEvent e) {
                tryLaunchOnlyOffice();
            }
        });

        c.gridx = 0; c.gridy = 0;
        icons.add(wrapWithCaption(noteIcon, "Note (Blog)"), c);
        c.gridx = 1;
        icons.add(wrapWithCaption(onlyOfficeIcon, "OnlyOffice"), c);

        iconPanel.add(icons);

        // screen 2: writing view
        JPanel editorPanel = new JPanel(new BorderLayout());
        textArea = new JTextArea();
        textArea.setLineWrap(true);
        textArea.setWrapStyleWord(true);
        textArea.setFont(new Font(Font.SANS_SERIF, Font.PLAIN, 16));
        textArea.setText("Enter text here");
        editorPanel.add(new JScrollPane(textArea), BorderLayout.CENTER);

        // Toolbar
        JToolBar toolbar = new JToolBar();
        toolbar.setFloatable(false);
        JButton btnSave = new JButton("Save (Ctrl+S)");
        JButton btnOpen = new JButton("Open (Ctrl+O)");
        JButton btnOpenPath = new JButton("Open via Path (Ctrl+L)");
        JButton btnNew = new JButton("New (Ctrl+N)");
        JButton btnBack = new JButton("Back (Esc)");
        toolbar.add(btnSave);
        toolbar.add(btnOpen);
        toolbar.add(btnOpenPath);
        toolbar.add(btnNew);
        toolbar.add(Box.createHorizontalStrut(16));
        toolbar.add(btnBack);
        editorPanel.add(toolbar, BorderLayout.NORTH);

        // Status bar
        statusBar = new JLabel("Ready");
        statusBar.setBorder(BorderFactory.createEmptyBorder(4, 8, 4, 8));
        editorPanel.add(statusBar, BorderLayout.SOUTH);

        // Actions
        btnSave.addActionListener(e -> doSave());
        btnOpen.addActionListener(e -> doOpenWithChooser());
        btnOpenPath.addActionListener(e -> doOpenViaPastedPath());
        btnNew.addActionListener(e -> doNew());
        btnBack.addActionListener(e -> doBackToIcons());

        // Key bindings
        int MENU = Toolkit.getDefaultToolkit().getMenuShortcutKeyMaskEx(); // Ctrl on Linux/Win
        bindKey(editorPanel, KeyStroke.getKeyStroke(KeyEvent.VK_S, MENU), "save", this::doSave);
        bindKey(editorPanel, KeyStroke.getKeyStroke(KeyEvent.VK_O, MENU), "open", this::doOpenWithChooser);
        bindKey(editorPanel, KeyStroke.getKeyStroke(KeyEvent.VK_L, MENU), "openPath", this::doOpenViaPastedPath);
        bindKey(editorPanel, KeyStroke.getKeyStroke(KeyEvent.VK_N, MENU), "new", this::doNew);
        bindKey(editorPanel, KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0), "back", this::doBackToIcons);

        // Cards
        root.add(iconPanel, "ICON");
        root.add(editorPanel, "EDITOR");
        cards.show(root, "ICON");

        frame.setContentPane(root);
    }

    private JLabel makeIconLabel(String assetFile, String tooltip) {
        JLabel label = new JLabel();
        label.setHorizontalAlignment(SwingConstants.CENTER);
        label.setVerticalAlignment(SwingConstants.CENTER);
        label.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        label.setToolTipText(tooltip);

        ImageIcon icon = loadIconFromAssets(assetFile);
        if (icon != null) {
            label.setIcon(scaleIcon(icon, 256, 256));
        } else {
            label.setText("<html><div style='color:#ddd;'>Image not found:<br>" + assetFile + "</div></html>");
        }
        return label;
    }

    private JPanel wrapWithCaption(JComponent comp, String caption) {
        JPanel p = new JPanel(new BorderLayout());
        p.setOpaque(false);
        p.add(comp, BorderLayout.CENTER);
        JLabel cap = new JLabel(caption, SwingConstants.CENTER);
        cap.setForeground(Color.WHITE);
        cap.setBorder(BorderFactory.createEmptyBorder(8, 0, 0, 0));
        p.add(cap, BorderLayout.SOUTH);
        return p;
    }

    private void bindKey(JComponent target, KeyStroke ks, String name, Runnable action) {
        InputMap im = target.getInputMap(JComponent.WHEN_ANCESTOR_OF_FOCUSED_COMPONENT);
        ActionMap am = target.getActionMap();
        im.put(ks, name);
        am.put(name, new AbstractAction() {
            @Override public void actionPerformed(java.awt.event.ActionEvent e) { action.run(); }
        });
    }

    // Loads a specific image from the `assets` folder.
    private ImageIcon loadIconFromAssets(String fileName) {
        Path path = Paths.get("assets").resolve(fileName);

        // Debug logging
        System.out.println("DEBUG: user.dir = " + System.getProperty("user.dir"));
        System.out.println("DEBUG: Looking for asset relative = " + path);
        System.out.println("DEBUG: Looking for asset absolute = " + path.toAbsolutePath());

        try {
            Path assetsDir = Paths.get("assets");
            if (Files.exists(assetsDir) && Files.isDirectory(assetsDir)) {
                System.out.println("DEBUG: assets/ exists. Listing contents:");
                try (var stream = Files.list(assetsDir)) {
                    stream.forEach(p -> System.out.println("  - " + p.getFileName()));
                }
            } else {
                System.out.println("DEBUG: assets/ does NOT exist or is not a directory: " + assetsDir.toAbsolutePath());
            }
        } catch (Exception e) {
            System.out.println("DEBUG: Exception while listing assets:");
            e.printStackTrace(System.out);
        }

        if (Files.exists(path) && Files.isRegularFile(path)) {
            return new ImageIcon(path.toString());
        }
        System.err.println("Could not find icon at: " + path.toAbsolutePath());
        return null;
    }

    private ImageIcon scaleIcon(ImageIcon icon, int w, int h) {
        Image img = icon.getImage().getScaledInstance(w, h, Image.SCALE_SMOOTH);
        return new ImageIcon(img);
    }

    // Actions

    private void doNew() {
        textArea.setText("");
        currentFile = null;
        setStatus("New note");
        textArea.requestFocusInWindow();
    }

    private void doSave() {
        try {
            if (currentFile == null) {
                doSaveAs();
            } else {
                Files.writeString(currentFile, textArea.getText(), StandardCharsets.UTF_8,
                        StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE);
                setStatus("Saved: " + currentFile.toAbsolutePath());
            }
        } catch (IOException ex) {
            showError("Failed to save: " + ex.getMessage());
        }
    }

    private void doSaveAs() {
        JFileChooser fc = new JFileChooser();
        fc.setDialogTitle("Save note as...");
        fc.setSelectedFile(defaultNotePath().toFile());
        int res = fc.showSaveDialog(frame);
        if (res == JFileChooser.APPROVE_OPTION) {
            currentFile = fc.getSelectedFile().toPath();
            doSave();
        } else {
            setStatus("Save canceled");
        }
    }

    private void doOpenWithChooser() {
        JFileChooser fc = new JFileChooser();
        fc.setDialogTitle("Open text file...");
        int res = fc.showOpenDialog(frame);
        if (res == JFileChooser.APPROVE_OPTION) {
            openFile(fc.getSelectedFile().toPath());
        } else {
            setStatus("Open canceled");
        }
    }

    private void doOpenViaPastedPath() {
        String s = JOptionPane.showInputDialog(frame, "Paste full path to a .txt file:", "Open via Path",
                JOptionPane.QUESTION_MESSAGE);
        if (s == null || s.isBlank()) {
            setStatus("Open via path canceled");
            return;
        }
        openFile(Paths.get(s.trim()));
    }

    private void openFile(Path p) {
        try {
            if (!Files.exists(p) || !Files.isRegularFile(p)) {
                showError("File not found: " + p.toAbsolutePath());
                return;
            }
            String content = Files.readString(p, StandardCharsets.UTF_8);
            textArea.setText(content);
            currentFile = p;
            cards.show(root, "EDITOR");
            setStatus("Opened: " + p.toAbsolutePath());
            textArea.requestFocusInWindow();
        } catch (IOException ex) {
            showError("Failed to open: " + ex.getMessage());
        }
    }

    private void doBackToIcons() {
        cards.show(root, "ICON");
        setStatus("Back to icons");
    }

    private void setStatus(String msg) {
        statusBar.setText(msg);
        System.out.println("STATUS: " + msg);
    }

    private void showError(String msg) {
        setStatus("Error: " + msg);
        JOptionPane.showMessageDialog(frame, msg, "Error", JOptionPane.ERROR_MESSAGE);
    }

    private Path defaultNotePath() {
        String ts = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd-HHmmss"));
        return Paths.get(System.getProperty("user.home")).resolve("note-" + ts + ".txt");
    }

    // Launch OnlyOffice respecting the explicit absolute path first
    private void tryLaunchOnlyOffice() {
        // 1. Absolute path attempt
        if (Files.isRegularFile(ONLY_OFFICE_ABSOLUTE) && Files.isExecutable(ONLY_OFFICE_ABSOLUTE)) {
            if (launchProcess(ONLY_OFFICE_ABSOLUTE.toString())) {
                setStatus("Launched (absolute): " + ONLY_OFFICE_ABSOLUTE);
                return;
            } else {
                setStatus("Failed launching absolute path; falling back to PATH search.");
            }
        } else {
            System.out.println("DEBUG: Absolute path not executable or missing: " + ONLY_OFFICE_ABSOLUTE);
        }

        // 2. Fallback to common names on PATH
        String[] candidates = { "desktopeditors", "onlyoffice" };
        for (String cmd : candidates) {
            if (isOnPath(cmd)) {
                if (launchProcess(cmd)) {
                    setStatus("Launched (PATH): " + cmd);
                    return;
                }
            }
        }

        // 3. Failure message
        JOptionPane.showMessageDialog(frame,
                "Unable to launch OnlyOffice.\nChecked:\n - " + ONLY_OFFICE_ABSOLUTE +
                        "\n - desktopeditors (PATH)\n - onlyoffice (PATH)\nAdjust ONLY_OFFICE_ABSOLUTE or install a supported package.",
                "OnlyOffice", JOptionPane.INFORMATION_MESSAGE);
        setStatus("OnlyOffice not found");
    }

    private boolean launchProcess(String... command) {
        try {
            new ProcessBuilder(command).start();
            return true;
        } catch (IOException e) {
            System.out.println("DEBUG: Launch failed for " + String.join(" ", command) + " -> " + e);
            return false;
        }
    }

    private boolean isOnPath(String command) {
        try {
            Process p = new ProcessBuilder("which", command).redirectErrorStream(true).start();
            int code = p.waitFor();
            return code == 0;
        } catch (Exception e) {
            return false;
        }
    }
}