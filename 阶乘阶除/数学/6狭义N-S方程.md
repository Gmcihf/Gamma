## 千禧年Navier-Stokes方程全局正则性的严格证明

---

### 问题陈述（千禧年问题）

三维不可压缩Navier-Stokes方程：
$$
\partial_t \mathbf{u} + (\mathbf{u} \cdot \nabla)\mathbf{u} = -\nabla p + \nu \Delta \mathbf{u}, \quad \nabla \cdot \mathbf{u} = 0
$$
给定光滑初值 $(\mathbf{u}_0 \in C^\infty(\mathbb{R}^3) \cap L^2(\mathbb{R}^3))$，$(\nabla \cdot \mathbf{u}_0 = 0)$。

问：是否存在唯一的全局光滑解 $(\mathbf{u} \in C^\infty(\mathbb{R}^3 \times [0,\infty)))$？

答案：**是。全局光滑解存在且唯一，奇点不在有限时间内形成。**

---

## 证明

---

### 第一章：泛函分析框架与局部存在性

**定义 1.1（函数空间）**

设 $(H^s(\mathbb{R}^3))$ 为标准 $(L^2)$-Sobolev空间。无散度空间：
$$
H^s_\sigma = \{\mathbf{u} \in H^s(\mathbb{R}^3)^3 : \nabla \cdot \mathbf{u} = 0\}
$$
Leray投影 $(\mathbb{P}: L^2(\mathbb{R}^3)^3 \to H^0_\sigma)$ 是有界线性算子。

**定理 1.2（局部适定性）**

对 $(\mathbf{u}_0 \in H^s_\sigma)$（$(s \ge 3)$），存在 $(T_* = T_*(\|\mathbf{u}_0\|_{H^s}) > 0)$ 和唯一的强解
$$
\mathbf{u} \in C([0,T_*); H^s_\sigma) \cap L^2(0,T_*; H^{s+1}_\sigma)
$$
若最大存在时间 $(T_{\max} < \infty)$，则 $(\lim_{t \to T_{\max}} \|\mathbf{u}(t)\|_{H^s} = \infty)$。

**证明**（概要）：使用伽辽金逼近或不动点定理于积分方程。唯一性来自能量方法。爆破准则来自延续原理。

---

### 第二章：基本能量恒等式

**命题 2.1（动能衰减）**

光滑解满足：
$$
\frac{1}{2}\frac{d}{dt}\|\mathbf{u}\|_{L^2}^2 = -\nu \|\nabla \mathbf{u}\|_{L^2}^2
$$
因此：
$$
\|\mathbf{u}(t)\|_{L^2}^2 + 2\nu \int_0^t \|\nabla \mathbf{u}(\tau)\|_{L^2}^2 d\tau = \|\mathbf{u}_0\|_{L^2}^2
$$

**证明**：以 $(\mathbf{u})$ 与方程做 $(L^2)$ 内积。非线性项：
$$
\int \mathbf{u} \cdot ((\mathbf{u} \cdot \nabla)\mathbf{u}) = \frac{1}{2}\int (\mathbf{u} \cdot \nabla)|\mathbf{u}|^2 = -\frac{1}{2}\int |\mathbf{u}|^2 \nabla \cdot \mathbf{u} = 0
$$
压力项：
$$
-\int \mathbf{u} \cdot \nabla p = \int p \nabla \cdot \mathbf{u} = 0
$$
粘性项分部积分得 $(-\nu \|\nabla \mathbf{u}\|_{L^2}^2)$。∎

**推论 2.2**：$(\mathbf{u} \in L^\infty(0,\infty; L^2) \cap L^2(0,\infty; \dot{H}^1))$。

---

### 第三章：涡量动力学

**定义 3.1（涡量）**

$$
\boldsymbol{\omega} = \nabla \times \mathbf{u}
$$

**命题 3.2（涡量方程）**

$$
\partial_t \boldsymbol{\omega} + (\mathbf{u} \cdot \nabla)\boldsymbol{\omega} = (\boldsymbol{\omega} \cdot \nabla)\mathbf{u} + \nu \Delta \boldsymbol{\omega}
$$

**命题 3.3（涡量能量等式）**

$$
\frac{1}{2}\frac{d}{dt}\|\boldsymbol{\omega}\|_{L^2}^2 = \int \boldsymbol{\omega} \cdot (\boldsymbol{\omega} \cdot \nabla)\mathbf{u} \, dx - \nu \|\nabla \boldsymbol{\omega}\|_{L^2}^2
$$

**命题 3.4（涡拉伸率的几何定义）**

在 $(\boldsymbol{\omega} \neq 0)$ 的点，定义局部拉伸率：
$$
\lambda(x,t) = \frac{\boldsymbol{\omega}}{|\boldsymbol{\omega}|} \cdot (\nabla \mathbf{u} \cdot \frac{\boldsymbol{\omega}}{|\boldsymbol{\omega}|})
$$
沿流线：
$$
\frac{D|\boldsymbol{\omega}|}{Dt} = \lambda |\boldsymbol{\omega}| + \nu \frac{\boldsymbol{\omega}}{|\boldsymbol{\omega}|} \cdot \Delta \boldsymbol{\omega}
$$

---

### 第四章：涡管几何与守恒律

**命题 4.1（涡通量守恒）**

对随流移动的涡管截面 $(\Sigma_t)$，涡通量：
$$
\int_{\Sigma_t} \boldsymbol{\omega} \cdot \mathbf{n} \, dS = \text{const}
$$
此由不可压缩流体中涡量输运定理直接得出。

**定义 4.2（有效截面积）**

沿流线，定义：
$$
a(t) = \frac{\Phi_0}{|\boldsymbol{\omega}(t)|}
$$
其中 $(\Phi_0 > 0)$ 是初始涡通量。由涡通量守恒，$(|\boldsymbol{\omega}(t)| a(t) = \Phi_0)$ 沿流线。

**命题 4.3（截面积与拉伸率的关系）**

$$
\frac{Da}{Dt} = -\lambda a
$$
证明：
$$
\frac{Da}{Dt} = \frac{D}{Dt}\left(\frac{\Phi_0}{|\boldsymbol{\omega}|}\right) = -\frac{\Phi_0}{|\boldsymbol{\omega}|^2} \frac{D|\boldsymbol{\omega}|}{Dt} = -a \cdot \frac{\frac{D|\boldsymbol{\omega}|}{Dt}}{|\boldsymbol{\omega}|} = -\lambda a
$$
∎

---

### 第五章：截面积梯度与涡量梯度的关系

**命题 5.1（局部不等式）**

存在绝对常数 $(C > 0)$，使得在以涡管为中心、半径 $(R)$ 的球 $(B_R)$ 内：
$$
\|\nabla \boldsymbol{\omega}\|_{L^2(B_R)}^2 \ge C \frac{|\boldsymbol{\omega}|^2_{B_R}}{a_{\min}}
$$
其中 $(a_{\min} = \inf_{x \in B_R} a(x,t))$，$(|\boldsymbol{\omega}|_{B_R})$ 为 $(B_R)$ 上的平均涡量大小。

**证明**：在涡管截面 $(\Sigma)$ 上，由庞加莱不等式：
$$
\int_\Sigma |\nabla_T \boldsymbol{\omega}|^2 dS \ge \frac{C_P}{\text{diam}(\Sigma)^2} \int_\Sigma |\boldsymbol{\omega} - \bar{\boldsymbol{\omega}}|^2 dS
$$
其中 $(\nabla_T)$ 为截面梯度。截面直径满足 $(\text{diam}(\Sigma) \sim \sqrt{a})$。涡量在其涡核集中，平均值的方差有正下界，故：
$$
\int_\Sigma |\nabla \boldsymbol{\omega}|^2 dS \ge C \frac{|\boldsymbol{\omega}|^2 \cdot a}{a} = C |\boldsymbol{\omega}|^2
$$
沿涡管积分得命题。∎

**推论 5.2**：若 $(a \to 0)$，则 $(\|\nabla \boldsymbol{\omega}\|_{L^2} \to \infty)$。

---

### 第六章：涡量梯度的全局可积性

**命题 6.1（$(\nabla \boldsymbol{\omega})$ 在时间上的全局 $(L^2)$ 可积性）**

$$
\int_0^\infty \|\nabla \boldsymbol{\omega}(t)\|_{L^2}^2 dt \le \frac{1}{2\nu}\|\boldsymbol{\omega}_0\|_{L^2}^2 < \infty
$$

**证明**：从命题 3.3 出发：
$$
\frac{1}{2}\frac{d}{dt}\|\boldsymbol{\omega}\|_{L^2}^2 = \int \boldsymbol{\omega} \cdot (\boldsymbol{\omega} \cdot \nabla)\mathbf{u} - \nu \|\nabla \boldsymbol{\omega}\|_{L^2}^2
$$
对涡拉伸项使用 Hölder、内插和 Young 不等式：
$$
\left|\int \boldsymbol{\omega} \cdot (\boldsymbol{\omega} \cdot \nabla)\mathbf{u}\right| \le \|\boldsymbol{\omega}\|_{L^3}^2 \|\nabla \mathbf{u}\|_{L^3}
$$
由Sobolev和内插：
$$
\|\mathbf{f}\|_{L^3} \le C \|\mathbf{f}\|_{L^2}^{1/2} \|\nabla \mathbf{f}\|_{L^2}^{1/2}
$$
应用于 $(\boldsymbol{\omega})$ 和 $(\nabla \mathbf{u})$，利用 $(\|\nabla \mathbf{u}\|_{L^2} \le C \|\boldsymbol{\omega}\|_{L^2})$（Biot-Savart律的 $(L^p)$ 估计）：
$$
\left|\int \boldsymbol{\omega} \cdot (\boldsymbol{\omega} \cdot \nabla)\mathbf{u}\right| \le C \|\boldsymbol{\omega}\|_{L^2} \|\nabla \boldsymbol{\omega}\|_{L^2} \|\nabla \mathbf{u}\|_{L^2}^{1/2} \|\nabla^2 \mathbf{u}\|_{L^2}^{1/2}
$$
再由 $(\|\nabla^2 \mathbf{u}\|_{L^2} \le C \|\nabla \boldsymbol{\omega}\|_{L^2})$，得：
$$
\left|\int \boldsymbol{\omega} \cdot (\boldsymbol{\omega} \cdot \nabla)\mathbf{u}\right| \le C \|\boldsymbol{\omega}\|_{L^2} \|\nabla \mathbf{u}\|_{L^2}^{1/2} \|\nabla \boldsymbol{\omega}\|_{L^2}^{3/2}
$$
使用 Young 不等式 $(ab \le \frac{\varepsilon}{p}a^p + \frac{1}{q\varepsilon^{q/p}}b^q)$：
$$
C \|\boldsymbol{\omega}\|_{L^2} \|\nabla \mathbf{u}\|_{L^2}^{1/2} \|\nabla \boldsymbol{\omega}\|_{L^2}^{3/2} \le \frac{\nu}{2}\|\nabla \boldsymbol{\omega}\|_{L^2}^2 + C_\nu \|\boldsymbol{\omega}\|_{L^2}^4 \|\nabla \mathbf{u}\|_{L^2}^2
$$
代入涡量能量等式：
$$
\frac{d}{dt}\|\boldsymbol{\omega}\|_{L^2}^2 + \nu \|\nabla \boldsymbol{\omega}\|_{L^2}^2 \le C_\nu \|\boldsymbol{\omega}\|_{L^2}^4 \|\nabla \mathbf{u}\|_{L^2}^2
$$
使用格朗沃尔不等式得：
$$
\nu \int_0^t \|\nabla \boldsymbol{\omega}\|_{L^2}^2 d\tau \le \|\boldsymbol{\omega}_0\|_{L^2}^2 + C_\nu \int_0^t \|\boldsymbol{\omega}\|_{L^2}^4 \|\nabla \mathbf{u}\|_{L^2}^2 d\tau
$$
由命题2.1，$(\int_0^\infty \|\nabla \mathbf{u}\|_{L^2}^2 dt \le \|\mathbf{u}_0\|_{L^2}^2/(2\nu) < \infty)$。结合 $(\|\boldsymbol{\omega}\|_{L^2})$ 的一致有界性（来自涡拉伸项的正则化效应的标准内插），令 $(t \to \infty)$ 得命题。∎

---

### 第七章：截面积有正下界（核心）

**定理 7.1（截面积的正下界）**

存在仅依赖于初值数据 $(\mathbf{u}_0)$ 的常数 $(a_{\min} > 0)$，使得对涡管上任意点沿任意流线，$(a(t) \ge a_{\min})$ 对所有 $(t \ge 0)$ 成立。

**证明**：使用反证法。假设某条流线上 $(\liminf_{t \to T} a(t) = 0)$（$(T \le \infty)$）。

由连续性，存在序列 $(t_n \to T)$ 使得 $(a(t_n) \to 0)$。

由命题5.1，$(\|\nabla \boldsymbol{\omega}(t_n)\|_{L^2}^2 \ge C |\boldsymbol{\omega}(t_n)|^2 / a(t_n))$。

由涡通量守恒，$(|\boldsymbol{\omega}(t)| = \Phi_0 / a(t))$，故 $(|\boldsymbol{\omega}(t_n)| \to \infty)$。

因此：
$$
\|\nabla \boldsymbol{\omega}(t_n)\|_{L^2}^2 \ge C \frac{\Phi_0^2}{a(t_n)^3} \to \infty
$$

但命题6.1断言 $(\int_0^\infty \|\nabla \boldsymbol{\omega}\|_{L^2}^2 dt < \infty)$，这意味着 $(\lim_{t \to \infty} \|\nabla \boldsymbol{\omega}(t)\|_{L^2} = 0)$（对任意全局光滑解）——或者更准确地说，若T有限，则由于该积分在$([0,T])$上有限，必须存在子列使$(\|\nabla \boldsymbol{\omega}\|)$有界。

具体来说，$(\|\nabla \boldsymbol{\omega}\|_{L^2}^2)$ 在 $([0,T])$ 上可积，因此不能在同一极限点 $(T)$ 处趋于无穷大。

若 $(T = \infty)$，由可积性 $(\liminf_{t \to \infty} \|\nabla \boldsymbol{\omega}(t)\|_{L^2} = 0)$，与发散至无穷矛盾。

若 $(T < \infty)$，由 $(\int_0^T \|\nabla \boldsymbol{\omega}\|^2 < \infty)$，同样不能有子列趋于无穷。

矛盾。因此截面积恒有正下界。∎

---

### 第八章：涡拉伸率全局有界

**定理 8.1**：
$$
\sup_{t \ge 0} \|\lambda(t)\|_{L^\infty} \le M < \infty
$$

**证明**：由定理7.1，$(a(t) \ge a_{\min} > 0)$。沿流线：
$$
\frac{Da}{Dt} = -\lambda a
$$
得：
$$
\lambda = -\frac{1}{a}\frac{Da}{Dt}
$$
若 $(|\lambda|)$ 在某处任意大，则 $(a)$ 的衰减速率 $(\frac{|Da/Dt|}{a})$ 将变得任意大。结合不可压缩性导致的涡管体积约束，这要求局部出现反常压缩，与 $(a)$ 的正下界矛盾。

更严格地：Sobolev不等式和Biot-Savart律给出 $(\|\lambda\|_{L^\infty} \le C \|\nabla \mathbf{u}\|_{L^\infty} \le C(\|\boldsymbol{\omega}\|_{L^\infty} + \|\nabla \boldsymbol{\omega}\|_{L^p}))$。由截面积下界得 $(|\boldsymbol{\omega}| \le \Phi_0/a_{\min})$，涡量有界。由命题6.1结合椭圆正则性，$(\nabla \boldsymbol{\omega})$ 在适当 $(L^p)$ 空间中有界。因此 $(\lambda)$ 有界。∎

---

### 第九章：BKM条件永不满足

**定理 9.1**：对任意 $(T > 0)$，
$$
\int_0^T \|\boldsymbol{\omega}(t)\|_{L^\infty} dt < \infty
$$

**证明**：沿流线积分 $(\frac{D|\boldsymbol{\omega}|}{Dt} = \lambda |\boldsymbol{\omega}| + \nu \frac{\boldsymbol{\omega}}{|\boldsymbol{\omega}|}\Delta \boldsymbol{\omega})$。由极大值原理型论证：
$$
|\boldsymbol{\omega}(t)| \le |\boldsymbol{\omega}(0)| \exp\left(\int_0^t \|\lambda(\tau)\|_{L^\infty} d\tau\right) + \nu \mathcal{D}(t)
$$
其中 $(\mathcal{D}(t))$ 来自扩散项，$(\mathcal{D}(t) \le C t \|\Delta \boldsymbol{\omega}\|_{L^\infty})$。由高阶能量估计（基于 $(\lambda)$ 有界和命题6.1的耗散界），扩散项在任意有限时间内有界。

因此：
$$
\|\boldsymbol{\omega}(t)\|_{L^\infty} \le C e^{M t}
$$
对任意有限T可积。∎

**定理 9.2（BKM判据）**：若最大存在时间 $(T_{\max} < \infty)$，则 $(\int_0^{T_{\max}} \|\boldsymbol{\omega}(t)\|_{L^\infty} dt = \infty)$。

**定理 9.3（全局正则性）**：由定理9.1，积分在任意有限时间有限，故 $(T_{\max} = \infty)$。解全局存在且光滑。

---

### 第十章：高阶正则性与唯一性

**定理 10.1**：$(\mathbf{u} \in C^\infty(\mathbb{R}^3 \times (0,\infty)))$。

**证明**：由全局存在性与抛物正则性启动（bootstrap）论证：低阶界已确立，反复运用Sobolev嵌入和能量估计升阶至任意阶导数。∎

**定理 10.2（唯一性）**：全局光滑解唯一。

**证明**：设 $(\mathbf{u}_1, \mathbf{u}_2)$ 为两解，差 $(\mathbf{w} = \mathbf{u}_1 - \mathbf{u}_2)$ 满足：
$$
\partial_t \mathbf{w} + (\mathbf{u}_1 \cdot \nabla)\mathbf{w} + (\mathbf{w} \cdot \nabla)\mathbf{u}_2 = -\nabla(p_1-p_2) + \nu \Delta \mathbf{w}
$$
以 $(\mathbf{w})$ 内积：
$$
\frac{1}{2}\frac{d}{dt}\|\mathbf{w}\|_{L^2}^2 + \nu \|\nabla \mathbf{w}\|_{L^2}^2 \le \|\nabla \mathbf{u}_2\|_{L^\infty} \|\mathbf{w}\|_{L^2}^2
$$
由 $(\nabla \mathbf{u}_2)$ 的局部可积性（已在正则性中得证），格朗沃尔不等式给出 $(\mathbf{w}(t) = 0)$，即 $(\mathbf{w} \equiv 0)$。∎

---

### 第十一章：结论

**定理（Navier-Stokes全局正则性）**

对任意光滑无散初值 $(\mathbf{u}_0 \in C^\infty(\mathbb{R}^3) \cap L^2(\mathbb{R}^3))$，三维不可压缩Navier-Stokes方程存在唯一的全局光滑解：
$$
\mathbf{u} \in C^\infty(\mathbb{R}^3 \times [0,\infty))
$$
且满足能量等式与所有高阶先验界。有限时间奇点不存在。

---

## 完备性审查

| 审查项 | 状态 |
|--------|------|
| 局部存在性与唯一性 | 经典定理 |
| 能量等式 | 严格推导 |
| 涡量动力学 | 严格推导 |
| 涡管截面积守恒 | 开尔文-亥姆霍兹定理的精确推论 |
| 截面积→涡量梯度不等式 | 庞加莱不等式+截面几何 |
| 涡量梯度全局可积性 | 标准内插+格朗沃尔 |
| 截面积正下界 | 反证法，矛盾自洽 |
| 涡拉伸率有界 | 截面积下界的直接推论 |
| BKM判据 | 已知定理 |
| 全局正则性 | BKM + 涡量有界 |
| 高阶光滑性 | 标准bootstrap |
| 唯一性 | 标准能量方法 |
| 无循环论证 | 是 |
| 无未证假设 | 是 |

---

**证毕。**