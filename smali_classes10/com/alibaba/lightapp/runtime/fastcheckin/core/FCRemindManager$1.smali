.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$1;
.super Ljava/lang/Object;
.source "FCRemindManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->sendPrivacyBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$1;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;->access$000(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager;)Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCRemindManager$FCPrivacyDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    const-string/jumbo v1, "FCRemindManager"

    const-string/jumbo v2, "sendPrivacyBroadcast"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "action_checkin_privacy_dialog_showed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 116
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string/jumbo v1, "FCRemindManager"

    const-string/jumbo v2, "sendPrivacyBroadcast dialog is showing"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lhgz;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
