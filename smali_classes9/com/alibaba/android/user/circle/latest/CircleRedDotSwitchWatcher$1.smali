.class public final Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "CircleRedDotSwitchWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;

.field final synthetic b:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;->b:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher;

    iput-object p2, p0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;->a:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const-string/jumbo v1, "action_config_switch_work_circle_red_dot_alert_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "action_config_switch_work_circle_entry_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->f()Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;->a:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;

    invoke-interface {v1}, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;->a()V

    goto :goto_0

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$1;->a:Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;

    invoke-interface {v1}, Lcom/alibaba/android/user/circle/latest/CircleRedDotSwitchWatcher$a;->b()V

    goto :goto_0
.end method
