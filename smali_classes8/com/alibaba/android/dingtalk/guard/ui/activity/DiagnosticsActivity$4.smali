.class final Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "DiagnosticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 340
    invoke-static {}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/guardinterface/DoorGuardInterface;->getEnterRangeDevice()Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v0

    .line 341
    .local v0, "deviceModelBean":Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    if-nez v0, :cond_1

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 343
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->d(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->d(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    move-result-object v1

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u53d1\u73b0\u8bbe\u5907:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceNick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->mac:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->a(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    .line 349
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity$4;->a:Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;->c(Lcom/alibaba/android/dingtalk/guard/ui/activity/DiagnosticsActivity;)V

    goto :goto_0

    .line 347
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceNick:Ljava/lang/String;

    goto :goto_1
.end method
