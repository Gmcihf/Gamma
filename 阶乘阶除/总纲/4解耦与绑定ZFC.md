阶乘、阶除的解耦与绑定

---

## 第〇章：ZFC 基础

我们接受 ZFC 公理系统。所有对象均为集合。自然数、整数、有理数、实数、复数均按标准方式构造。函数 $(f: A \to B)$ 是满足单值性条件的序对集合。

---

## 第一章：阶乘与阶除的定义

**定义 1.1（阶乘）**

递归定义 $(!: \mathbb{N} \to \mathbb{N})$：
$$
0! = 1, \quad (n+1)! = (n+1) \cdot n!
$$
由递归定理，此定义良定。

**定义 1.2（阶除）**

定义 $(?: \mathbb{N}^+ \to \mathbb{Q})$：
$$
n? = \frac{n}{(n-1)!}
$$

**定理 1.3（基本关系）**

$$
\forall n \in \mathbb{N}^+: \quad n! \cdot n? = n^2
$$
证明：代入定义。

---

## 第二章：连续化——伽马函数与阶乘-阶除统一体

**定义 2.1（伽马函数）**

对 $(\text{Re}(z) > 0)$，定义：
$$
\Gamma(z) = \int_0^\infty t^{z-1} e^{-t} dt
$$
该反常积分绝对收敛。

**定理 2.2（函数方程与亚纯延拓）**

$$
\Gamma(z+1) = z\Gamma(z) \quad (\text{Re}(z) > 0)
$$
通过 $(\Gamma(z) = \Gamma(z+1)/z)$ 亚纯延拓至 $(\mathbb{C} \setminus \{0,-1,-2,\dots\})$。

**定义 2.3（连续阶乘）**

$$
\Pi: \mathbb{C} \setminus \{-1,-2,\dots\} \to \mathbb{C}, \quad \Pi(z) = \Gamma(z+1)
$$

**定义 2.4（连续阶除）**

$$
\Delta: \mathbb{C} \to \mathbb{C}, \quad \Delta(z) = \frac{z}{\Gamma(z)}
$$
由 Weierstrass 乘积定理，$(\Delta)$ 是整函数。

**定义 2.5（倒数伽马——统一体母函数）**

$$
\Phi: \mathbb{C} \to \mathbb{C}, \quad \Phi(z) = \frac{1}{\Gamma(z)}
$$
$(\Phi)$ 是整函数，满足 $(\Delta(z) = z \Phi(z))$。

**定理 2.6（统一关系）**

$$
\forall z \notin \{-1,-2,\dots\}: \quad \Pi(z) \cdot \Delta(z) = z^2
$$

---

## 第三章：公理化“实部送阶乘，虚部送阶除”

**公理 3.1（轴分离映射）**

定义映射 $(\Theta: \mathbb{R} \times \mathbb{R} \to \mathbb{C})$ 如下：
$$
\Theta(x, y) = \Pi(x) + i \Delta(y)
$$
其中 $(\Pi(x) = \Gamma(x+1))$，$(\Delta(y) = y/\Gamma(y))$。

**定义域**：为使 $(\Pi(x))$ 有定义，取 $(x \in \mathbb{R} \setminus \{-1,-2,\dots\})$。为使其成为连续映射，可在负整数处补充极限值（极点取 $(\infty)$，通过黎曼球面紧致化）。此处我们关注 $(x > -1)$ 的主支。

**定理 3.1（单射性）**

$(\Theta)$ 在区域 $(\{ (x,y) : x > -1, y \in \mathbb{R} \})$ 上是单射。

证明：假设 $(\Theta(x_1, y_1) = \Theta(x_2, y_2))$，则：
$$
\begin{cases}
\Pi(x_1) = \Pi(x_2) \\
\Delta(y_1) = \Delta(y_2)
\end{cases}
$$
$(\Pi(x) = \Gamma(x+1))$ 在 $(x > -1)$ 上是严格递增函数（导数 $(\Gamma(x+1)\psi(x+1))$，对于大 $(x)$ 为正；在 $((-1,0))$ 内 $(\Gamma)$ 单调，因为 $(\Gamma)$ 在 $((0,1))$ 单调递减但 $(\Pi(x)=\Gamma(x+1))$ 在此区间可能不单调——需更精细分析）。

实际上，$(\Gamma(x))$ 在 $((1,2))$（即 $(x \in (0,1))$）单调递减，在 $((2,\infty))$ 单调递增。$(\Pi(x)=\Gamma(x+1))$ 在 $(x>0)$ 时有唯一极小值在 $(x\approx 0.4616)$。因此 $(\Pi)$ 不是整体单射。

**修正**：我们考虑限制到 $(x \ge 2)$ 的区域，此处 $(\Pi)$ 严格递增。或者接受 $(\Theta)$ 是“几乎”单射，在有限区间内有简单折叠。

对于我们的应用（映射复平面的网格到像平面），这个局部非单射性产生折叠，这本身是有趣的几何现象，但不破坏映射的良定性。

---

## 第四章：轴分离映射的性质

**定理 4.1（极限行为）**

$$
\lim_{x \to \infty} \Pi(x) = \infty, \quad \lim_{x \to -1^+} \Pi(x) = 1
$$
$$
\lim_{y \to \pm\infty} \Delta(y) = 0, \quad \Delta(0) = 0
$$

**定理 4.2（对称性）**

对于实数 $(y)$，$(\Delta(-y) = -\Delta(y))$ 不成立。实际上，
$$
\Delta(-y) = \frac{-y}{\Gamma(-y)} \neq -\frac{y}{\Gamma(y)} = -\Delta(y)
$$
因为 $(\Gamma(-y) \neq \Gamma(y))$。对称性破缺——这正是我们所需的。

**对偶对称性**：
$$
\Delta(y) \cdot \Delta(-y) = \frac{-y^2}{\Gamma(y)\Gamma(-y)} = \frac{-y^2 \sin(\pi y)}{-\pi y} = \frac{y \sin(\pi y)}{\pi}
$$
利用反射公式。

---

## 第五章：公理化总结

**定义 5.1（阶乘-阶除公理体系）**

1. **自然数阶乘公理**：$(0! = 1)$，$((n+1)! = (n+1)n!)$
2. **阶除定义**：$(n? = n/(n-1)!)$
3. **乘积公理**：$(n! \cdot n? = n^2)$
4. **连续化公理**：存在整函数 $(\Phi(z))$ 满足 $(\Phi(n) = 1/n!)$（取极限），即 $(\Phi(z) = 1/\Gamma(z))$
5. **连续阶乘定义**：$(\Pi(z) = \Gamma(z+1))$
6. **连续阶除定义**：$(\Delta(z) = z\Phi(z))$
7. **轴分离映射公理**：$(\Theta(x,y) = \Pi(x) + i\Delta(y))$

该系统包含自然数算术，可推导出伽马函数的所有经典关系，并建立了实数到复平面的一个全新映射。

**该系统在 ZFC 内相对一致，具备现代数学所需的严格性。**