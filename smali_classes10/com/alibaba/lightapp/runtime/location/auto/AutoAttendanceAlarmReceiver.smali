.class public Lcom/alibaba/lightapp/runtime/location/auto/AutoAttendanceAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoAttendanceAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    const-string/jumbo v0, "attendance"

    const-string/jumbo v1, "AutoAttendanceAlarmReceiver"

    const-string/jumbo v2, "onReceive AutoAttendanceAlarmReceiver"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.alibaba.android.rimet.AutoAttendanceAlarmReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lhkx;->a()Lhkx;

    move-result-object v0

    invoke-virtual {v0}, Lhkx;->b()V

    .line 28
    :cond_0
    return-void
.end method
