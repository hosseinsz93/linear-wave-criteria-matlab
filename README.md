# 🌊 Linear Wave Criteria Calculator (MATLAB)

This MATLAB script computes important characteristics of water waves using **linear wave theory**. It's useful for marine engineers, oceanographers, and coastal researchers to evaluate wave conditions and determine if the linear assumptions hold.

## 🔧 Features

- Calculates wave period using the dispersion relation
- Computes wave steepness and dimensionless wave parameters
- Estimates minimum required depth for deep-water assumptions
- Uses both theoretical and empirical formulas for wave analysis

## 🧮 Parameters

The following input parameters are defined in the script:
- `d` – Water depth (m)
- `L` – Wavelength (m)
- `H` – Wave height (m)

## 📈 Outputs

The script prints:
- Wave period (T)
- Horizontal and vertical non-dimensional wave values
- Estimated wavelength (using empirical relation)
- Minimum depth for deep-water wave assumption
- Wave steepness (H/L)

## 📘 Requirements

- MATLAB (any modern version that supports basic math functions)

## 🚀 How to Use

1. Open the script in MATLAB.
2. Adjust the input parameters `d`, `L`, and `H` to your case.
3. Run the script to view wave criteria results in the Command Window.

## 📌 Notes

- The results assume **linear wave theory** (valid when wave steepness is small and depth is sufficient).
- If steepness exceeds ~0.14 (i.e., H/L > 1/7), waves are likely to break and nonlinear effects dominate.

---

### 📬 Contact

If you have questions or want to improve the script, feel free to reach out or fork this project.

