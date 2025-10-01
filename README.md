# RS-GNU-Skel

This repository contains my personal preferences for a GNU/Linux skeleton environment.  
It includes customized versions of:

- `.bashrc`
- `.profile`
- `.vim/` (colors, syntax, filetypes)
- `.vimrc`
- `.tmux.conf`

---

## 📦 Deployment

To deploy these settings to `/etc/skel` on a new system, run:

```bash
git archive --remote=https://github.com/rhigmus/RS-GNU-Skel.git HEAD:skel \
  | sudo tar -x -C /etc/skel
sudo chown -R root:root /etc/skel

