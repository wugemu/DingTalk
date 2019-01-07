.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;
.super Landroid/content/BroadcastReceiver;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x42700000    # 60.0f

    .line 1060
    if-eqz p2, :cond_0

    .line 1061
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "intent_action_efficient_smart_time"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1063
    const-string/jumbo v2, "intent_key_efficient_smart_HOUR"

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    .line 1064
    .local v1, "hour":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1064
    invoke-interface {v2}, Ldyy$b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 1064
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->q()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1065
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iput v1, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 1066
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    mul-float v3, v1, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-double v4, v3

    .line 4116
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k:D

    .line 1067
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1067
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget v3, v3, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 1067
    invoke-interface {v2, v3}, Ldyy$b;->a(F)V

    .line 1068
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 7116
    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V

    .line 1080
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "hour":F
    :cond_0
    :goto_0
    return-void

    .line 1070
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "intent_action_efficient_mode_force_changed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1071
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1071
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1071
    invoke-interface {v2}, Ldyy$b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 10116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1072
    invoke-interface {v2}, Ldyy$b;->o()V

    goto :goto_0

    .line 1074
    :cond_2
    const-string/jumbo v2, "intent_action_efficient_mode_force_open"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 11116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1075
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1075
    invoke-interface {v2}, Ldyy$b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$10;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 13116
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 1076
    invoke-interface {v2, v6}, Ldyy$b;->f(Z)V

    goto :goto_0
.end method
