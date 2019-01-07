.class public abstract Lbtu;
.super Lbtv;
.source "FloatWindowController.java"


# instance fields
.field protected d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Lbtv;-><init>()V

    .line 18
    new-instance v0, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    iget-object v1, p0, Lbtu;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    .line 19
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-super {p0}, Lbtv;->c()V

    .line 25
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    .line 1063
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setKeepScreenOn(Z)V

    .line 2047
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    const-string/jumbo v1, "sp_key_float_window_x"

    invoke-static {v1, v4}, Lbyp;->a(Ljava/lang/String;I)I

    move-result v1

    .line 2052
    const-string/jumbo v2, "sp_key_float_window_y"

    invoke-static {v2, v4}, Lbyp;->a(Ljava/lang/String;I)I

    move-result v2

    .line 2054
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 2055
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v1, v3, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v2, v1, :cond_0

    .line 3034
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 3035
    const-string/jumbo v2, "ding_live"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2056
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2057
    const-string/jumbo v2, "sp_key_float_window_x"

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2058
    const-string/jumbo v2, "sp_key_float_window_y"

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2059
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final e()Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 35
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setVisibility(I)V

    .line 38
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 41
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lbtu;->d:Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/widget/FloatWindow;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method
