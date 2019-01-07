.class public final Lfbw;
.super Ljava/lang/Object;
.source "DisplayLatestPresenter.java"


# instance fields
.field public final a:Landroid/content/Context;

.field b:Lfby;

.field public c:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

.field public d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v3, Lfbw$2;

    invoke-direct {v3, p0}, Lfbw$2;-><init>(Lfbw;)V

    iput-object v3, p0, Lfbw;->d:Landroid/content/BroadcastReceiver;

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "parent = null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_0
    new-instance v3, Lfbx;

    invoke-direct {v3}, Lfbx;-><init>()V

    iput-object v3, p0, Lfbw;->b:Lfby;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lfbw;->a:Landroid/content/Context;

    .line 42
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "circle_on_receive_notice_num"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "circle_on_clear_notice_num"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v3, "User_On_Clear_Latest_Red_Dot"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lfbw;->a:Landroid/content/Context;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lfbw;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 51
    check-cast v0, Landroid/app/Activity;

    .line 53
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lfbw;->c:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    .line 54
    iget-object v4, p0, Lfbw;->c:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v5, Lfbw$1;

    invoke-direct {v5, p0, v0}, Lfbw$1;-><init>(Lfbw;Landroid/app/Activity;)V

    const-class v6, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;

    invoke-interface {v3, v5, v6, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;

    .line 1031
    if-eqz v3, :cond_1

    .line 1035
    iget-object v5, v4, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->b:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_1

    .line 1036
    new-instance v5, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;

    invoke-direct {v5, v4, v3}, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;-><init>(Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;)V

    iput-object v5, v4, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->b:Landroid/content/BroadcastReceiver;

    .line 1052
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1053
    const-string/jumbo v5, "action_config_switch_work_circle_entry_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v5, "action_config_switch_work_circle_red_dot_alert_changed"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    iget-object v5, v4, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->a:Landroid/content/Context;

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    iget-object v4, v4, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v4, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 67
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {p0, v0}, Lfbw;->a(Landroid/app/Activity;)V

    .line 72
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void
.end method


# virtual methods
.method a(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 95
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v1

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lfbw$3;

    invoke-direct {v2, p0}, Lfbw$3;-><init>(Lfbw;)V

    const-class v3, Lcov;

    invoke-interface {v0, v2, v3, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;Lcov;)V

    .line 109
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v0

    new-instance v1, Lfbw$4;

    invoke-direct {v1, p0, p1}, Lfbw$4;-><init>(Lfbw;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$b;)V

    .line 143
    return-void
.end method
