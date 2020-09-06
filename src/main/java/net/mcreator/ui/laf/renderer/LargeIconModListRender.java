/*
 * MCreator (https://mcreator.net/)
 * Copyright (C) 2020 Pylo and contributors
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

package net.mcreator.ui.laf.renderer;

import net.mcreator.minecraft.MCItem;
import net.mcreator.ui.init.TiledImageCache;
import net.mcreator.ui.laf.AbstractMCreatorTheme;
import net.mcreator.util.StringUtils;
import net.mcreator.util.image.ImageUtils;
import net.mcreator.workspace.elements.ModElement;

import javax.swing.*;
import java.awt.*;

public class LargeIconModListRender extends JPanel implements ListCellRenderer<ModElement> {

	public LargeIconModListRender() {
		super(new BorderLayout(0, 0));
	}

	@Override
	public Component getListCellRendererComponent(JList<? extends ModElement> list, ModElement ma, int index,
			boolean isSelected, boolean cellHasFocus) {
		removeAll();
		setBorder(null);

		JPanel text = new JPanel();
		text.setLayout(new BoxLayout(text, BoxLayout.PAGE_AXIS));
		text.setOpaque(false);
		text.setBorder(BorderFactory.createEmptyBorder(0, 5, 0, 0));

		JLabel label = new JLabel();
		JLabel label_details = new JLabel();

		JLabel icon = new JLabel();
		if (ma != null) {
			if (isSelected) {
				label.setForeground((Color) UIManager.get("MCreatorLAF.DARK_ACCENT"));
				label_details.setForeground((Color) UIManager.get("MCreatorLAF.DARK_ACCENT"));
				label.setBackground((Color) UIManager.get("MCreatorLAF.BRIGHT_COLOR"));
				label_details.setBackground((Color) UIManager.get("MCreatorLAF.BRIGHT_COLOR"));
				setBackground((Color) UIManager.get("MCreatorLAF.BRIGHT_COLOR"));
				setOpaque(true);
			} else {
				label.setForeground((Color) UIManager.get("MCreatorLAF.BRIGHT_COLOR"));
				label_details.setForeground((Color) UIManager.get("MCreatorLAF.BRIGHT_COLOR"));
				setOpaque(false);
			}

			label.setText(StringUtils.abbreviateString(ma.getName(), 18));

			label.setFont(AbstractMCreatorTheme.light_font.deriveFont(24.0f));
			label_details.setText("<html><div width=210 height=42 style=\"overflow: hidden;\"><small" + (isSelected ?
					(" color=#" + Integer.toHexString(((Color) UIManager.get("MCreatorLAF.DARK_ACCENT")).getRGB())
							.substring(2)) :
					"") + ">" + ma.getType().getDescription());

			ImageIcon dva = null;

			if (!ma.doesCompile()) {
				dva = TiledImageCache.modTabRed;
			}

			if (ma.isCodeLocked()) {
				if (dva != null) {
					dva = ImageUtils.drawOver(dva, TiledImageCache.modTabPurple);
				} else {
					dva = TiledImageCache.modTabPurple;
				}
			}

			ImageIcon modIcon = ma.getElementIcon();
			if (modIcon != null && modIcon.getImage() != null && modIcon.getIconWidth() > 0
					&& modIcon.getIconHeight() > 0 && modIcon != MCItem.DEFAULT_ICON) {
				if (dva != null) {
					icon.setIcon(ImageUtils.drawOver(
							ImageUtils.drawOver(TiledImageCache.getModTypeIcon(null), modIcon, 18, 18, 28, 28), dva));
				} else {
					icon.setIcon(ImageUtils.drawOver(TiledImageCache.getModTypeIcon(null), modIcon, 18, 18, 28, 28));
				}
			} else {
				if (dva != null) {
					icon.setIcon(ImageUtils.drawOver(TiledImageCache.getModTypeIcon(ma.getType()), dva));
				} else {
					icon.setIcon(TiledImageCache.getModTypeIcon(ma.getType()));
				}
			}
		}

		text.add(label);
		text.add(label_details);

		add("Center", text);
		add("West", icon);
		return this;
	}

}