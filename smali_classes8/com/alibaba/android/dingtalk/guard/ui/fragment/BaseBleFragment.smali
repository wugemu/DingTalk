.class public abstract Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "BaseBleFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "modelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 214
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2}, Lbsw$a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    .line 217
    :cond_0
    return-void
.end method

.method public final a(Lbsy$a;)V
    .locals 1
    .param p1, "listener"    # Lbsy$a;

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 158
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p1}, Lbsw$a;->a(Lbsy$a;)V

    .line 161
    :cond_0
    return-void
.end method

.method public final a(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 200
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1}, Lbsw$a;->h(Lbsy$b;)V

    .line 203
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 221
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p1, p2}, Lbsw$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public final b(Lbsy$a;)V
    .locals 1
    .param p1, "listener"    # Lbsy$a;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 165
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0, p1}, Lbsw$a;->b(Lbsy$a;)V

    .line 168
    :cond_0
    return-void
.end method

.method public final b(Lbsy$b;)V
    .locals 1
    .param p1, "listener"    # Lbsy$b;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 207
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0, p1}, Lbsw$a;->i(Lbsy$b;)V

    .line 210
    :cond_0
    return-void
.end method

.method c()Lbsw$a;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->l()Lbsw$c;

    move-result-object v0

    .line 20
    .local v0, "presenter":Lbsw$c;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lbsw$a;

    if-eqz v1, :cond_0

    .line 21
    check-cast v0, Lbsw$a;

    .line 23
    .end local v0    # "presenter":Lbsw$c;
    :goto_0
    return-object v0

    .restart local v0    # "presenter":Lbsw$c;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 36
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lbsw$a;->e()Ljava/lang/String;

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 45
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lbsw$a;->x()Z

    move-result v1

    .line 48
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 54
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lbsw$a;->y()Z

    move-result v1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 114
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lbsw$a;->d()Z

    move-result v1

    .line 117
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 123
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lbsw$a;->A()V

    .line 126
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v0

    .line 229
    .local v0, "presenter":Lbsw$a;
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Lbsw$a;->C()V

    .line 232
    :cond_0
    return-void
.end method
