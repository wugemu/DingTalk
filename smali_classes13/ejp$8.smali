.class final Lejp$8;
.super Landroid/content/BroadcastReceiver;
.source "HomeAttendanceManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lejp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lejp;


# direct methods
.method constructor <init>(Lejp;)V
    .locals 0
    .param p1, "this$0"    # Lejp;

    .prologue
    .line 186
    iput-object p1, p0, Lejp$8;->a:Lejp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    iget-object v1, p0, Lejp$8;->a:Lejp;

    .line 1048
    iget-object v1, v1, Lejp;->a:Landroid/app/Activity;

    .line 189
    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action_checkin_privacy_dialog_showed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string/jumbo v1, "fast_checkin"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "receive checkin privacy"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    iget-object v2, p0, Lejp$8;->a:Lejp;

    .line 2048
    iget-object v2, v2, Lejp;->a:Landroid/app/Activity;

    .line 198
    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->showPrivacyDialog(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
