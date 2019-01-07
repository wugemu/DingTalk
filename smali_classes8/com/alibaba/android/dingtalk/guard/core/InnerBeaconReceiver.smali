.class public Lcom/alibaba/android/dingtalk/guard/core/InnerBeaconReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InnerBeaconReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 26
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    .line 37
    invoke-static {}, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    const-string/jumbo v2, "com.alibaba.android.dingtalk.ACTION_BLUETHOOTH_STATE_CHANGED"

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->startBeaconService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
