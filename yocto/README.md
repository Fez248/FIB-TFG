# Yocto BSP Layer for FIDES Electrònica

This folder contains all the necessary configurations and references for building a Yocto-based Linux image for FIDES Electrònica BA20 using the Yocto Project. Below, you'll find a detailed guide on the folder's contents and an explanation of the `yocto/.config.yaml` configuration file.

## General Overview of the Yocto Setup

The Yocto Project is a powerful tool for building custom Linux distributions. In this repository:
- **Board Support Package (BSP)**: This repository houses a custom BSP tailored for the BA20 platform from FIDES Electrònica, which contributes integration and compatibility for the specific hardware.
- **Docker**: The Yocto build and development environment can be containerized, facilitating reproducible builds and providing consistency across development setups.
- **QT and CI/CD**: The repository also includes Docker scripts for Qt SDK development and GitLab CI/CD runners aimed at automating the build process.

### Features
- Configured to build for the specified target hardware: **imx93evk**
- Multiple layers included, such as:
  - `meta-qt6` for utilizing QT6 graphical toolkits
  - `meta-arm` and `meta-arm-toolchain` for ARM architecture support
  - OpenEmbedded layers: multimedia, networking, filesystems, Python, etc.

---

## Configuration File: `.config.yaml`

The `.config.yaml` file reflects the detailed settings and dependencies essential for configuring the Yocto build environment.

### Header Section
- **Version**: `14` – Specifies the version of the configuration format.
- **Target**: The image being built is defined as `fides-ba20-image`.
- **Distro**: The distribution is set to `fsl-imx-fides`.
- **Machine**: The machine target is `imx93evk`.

### Repositories and Layers
Below is a summary of the repositories and layers included in the Yocto environment:

1. **Poky**
   - URL: https://git.yoctoproject.org/git/poky
   - Commit: `f16cffd030d21d12dd57bb95cfc310bda41f8a1f`
   - Layers:
     - `meta`
     - `meta-poky`
     - `meta-yocto-bsp`
   
2. **Meta-Ampliphy**
   - URL: https://git.phytec.de/meta-ampliphy/
   - Commit: `adeb2e94e58b7d67f39f9ebafa68a93c186fb534`
   - Branch: `scarthgap`

3. **Meta-Phytec**
   - URL: https://git.phytec.de/meta-phytec/
   - Commit: `43c5738bf3d5803d980397642329af5ab8449d54`
   - Branch: `scarthgap`

4. **Meta-Rauc**
   - URL: https://github.com/rauc/meta-rauc
   - Commit: `a0f4a8b9986954239850b9d4256c003c91e6b931`
   - Branch: `scarthgap`

5. **Meta-Freescale**
   - URL: https://github.com/Freescale/meta-freescale.git
   - Commit: `7d83a350d8b28498321a481a2a1c51bb4afb48e9`
   - Branch: `scarthgap`

6. **Meta-Freescale-Distro**
   - URL: https://github.com/Freescale/meta-freescale-distro
   - Commit: `b9d6a5d9931922558046d230c1f5f4ef6ee72345`
   - Branch: `scarthgap`

7. **Meta-BA20-BSP**
   - Path: `./meta-ba20-bsp` *(Local layer)*

8. **Meta-OpenEmbedded**
   - URL: https://git.openembedded.org/meta-openembedded
   - Commit: `15e18246dd0c0585cd1515a0be8ee5e2016d1329`
   - Layers:
     - `meta-oe`
     - `meta-multimedia`
     - `meta-networking`
     - `meta-filesystems`

9. **Meta-Python**
   - URL: https://git.openembedded.org/meta-openembedded
   - Commit: `15e18246dd0c0585cd1515a0be8ee5e2016d1329`
   - Layers:
     - `meta-python`

10. **Meta-QT6**
    - URL: git://code.qt.io/yocto/meta-qt6.git
    - Commit: `1a7a776c9f79c6b0500c64b78841aac5438f33`

11. **Meta-ARM**
    - URL: https://git.yoctoproject.org/meta-arm
    - Commit: `a81c19915b5b9e71ed394032e9a50fd06919e1cd`
    - Layers:
      - `meta-arm`
      - `meta-arm-toolchain`

12. **Meta-iMX**
    - URL: https://github.com/nxp-imx/meta-imx.git
    - Commit: `e1ec1a20d573e3913f4ad90fa36546ed2bc87715`
    - Layers:
      - `meta-imx-bsp`
      - `meta-imx-sdk`

### Configuration Options
- **meta-fides_test**:
  - `ACCEPT_FSL_EULA`: Agrees to the licensing terms for NXP software
  - Removes `spdx` inheritance.

---

## Using the Yocto Build System for BA20 BSP

To get started with building the Yocto project:

1. Clone the repository:
    ```bash
    git clone https://github.com/Fez248/FIB-TFG.git
    cd FIB-TFG/yocto
    ```

2. Configure your build environment:
    - Edit the `.config.yaml` to suit your specific setup and requirements by specifying different layers and configurations.
  
3. Initiate the build process:
    ```bash
    source poky/oe-init-build-env
    bitbake ${target}
    ```

   Replace `${target}` with the corresponding value in `.config.yaml` (e.g., `fides-ba20-image`).

4. For creating a Docker-based build environment:
    - Follow the instructions provided for setting up and using the Docker configuration for Yocto.

5. Setting up Qt SDK:
    - If you're utilizing *Qt SDK*, the corresponding configuration and layers for `meta-qt6` are already integrated into the build process.

6. Automating with CI/CD:
    - Integration with **GitLab CI/CD runners** is configured for systematic builds. Refer to the `.gitlab-ci.yml` located in the repository for more details.

### More Information
For more about Yocto Project and its capabilities, please visit [Yocto Project Official Website](https://www.yoctoproject.org/).

---
This folder & configuration supports the Yocto OpenEmbedded framework tuned for BA20 and includes multiple meta layers and advanced features for customization.
