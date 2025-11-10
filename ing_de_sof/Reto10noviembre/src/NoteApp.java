import javax.swing.*;
import java.awt.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

class NoteApp {
    private final JFrame frame = new JFrame("Blog Note");
    private final CardLayout cards = new CardLayout();
    private final JPanel root = new JPanel(cards);

    void show() {
        initUI();
        frame.setVisible(true);
    }

    private void initUI() {
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 800);
        frame.setLocationRelativeTo(null);

        // screen 1: icon view
        JPanel iconPanel = new JPanel(new GridBagLayout());
        JLabel iconLabel = new JLabel();
        iconLabel.setHorizontalAlignment(SwingConstants.CENTER);
        iconLabel.setVerticalAlignment(SwingConstants.CENTER);
        iconLabel.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));

        ImageIcon icon = loadIconFromAssets("7193817.png");
        if (icon != null) {
            iconLabel.setIcon(scaleIcon(icon, 256, 256));
            iconLabel.setToolTipText("Click to write");
        } else {
            iconLabel.setText("Image not found in assets/");
        }
        iconPanel.add(iconLabel);

        // screen 2: writing view
        JPanel editorPanel = new JPanel(new BorderLayout());
        JTextArea textArea = new JTextArea();
        textArea.setLineWrap(true);
        textArea.setWrapStyleWord(true);
        textArea.setFont(new Font(Font.SANS_SERIF, Font.PLAIN, 16));
        textArea.setText("Enter text here");
        editorPanel.add(new JScrollPane(textArea), BorderLayout.CENTER);

        // Add cards and behavior
        root.add(iconPanel, "ICON");
        root.add(editorPanel, "EDITOR");
        cards.show(root, "ICON");

        iconLabel.addMouseListener(new MouseAdapter() {
            @Override public void mouseClicked(MouseEvent e) {
                cards.show(root, "EDITOR");
                textArea.requestFocusInWindow();
                textArea.selectAll();
            }
        });

        frame.setContentPane(root);
    }

    // Loads a specific image from the `assets` folder.
    private ImageIcon loadIconFromAssets(String fileName) {
        Path path = Paths.get("assets").resolve(fileName);

        // --- DEBUG LOGGING START ---
        System.out.println("DEBUG: System property user.dir = " + System.getProperty("user.dir"));
        System.out.println("DEBUG: Looking for asset at (relative) = " + path);
        System.out.println("DEBUG: Looking for asset at (absolute) = " + path.toAbsolutePath());

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
        // --- DEBUG LOGGING END ---

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


}