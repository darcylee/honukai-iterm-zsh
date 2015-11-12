# Honukai theme and colors for iTerm and Oh My Zsh

![](https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.png)

## Installation

### Theme

The theme is based on the wonderfully made [ys](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/ys.zsh-theme) theme from the official [oh-my-zsh repo](https://github.com/robbyrussell/oh-my-zsh).

1. Drop [`honukai.zsh-theme`](https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.itermcolors) into the `~/.oh-my-zsh/themes/` directory
2. Change the theme variable name to `ZSH_THEME="honukai"` in `~/.zshrc`
3. Reload ZSH with `source ~/.zshrc`

### Colors

1. Open **Preferences** pane on the **Profiles** tab in iTerm
2. Switch to the **Colors** tab and import the [`honukai.itermcolors`](https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.itermcolors) (drop-down in the lower right corner)

### Extra eye-candy

There's a bunch of settings you might want to change in your profile in order to get the extra eye-candy.

#### **Text** tab:

**Cursor**

- Set to **Vertical**

**Font**

- Change to **[12pt Fira Mono Medium](https://www.google.com/fonts/download?kit=fYE28jhsC94xTNRkQgmvA1tkqrIMaAZWyLYEoB48lSQ)** (I personally love the Fira font-face, and highly suggest using it)
- Enable **Anti-aliased**

**Text Rendering**

- Disable **Draw bold in bold font**
- Disable **Draw bold in bright colors**
- Enable **Draw anti-aliased text with thin strokes**

#### **Window** tab

**Window appearance**

- **Transparency** to **10-15%**
- **Blur** to **40-50%**