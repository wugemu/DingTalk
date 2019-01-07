.class Lcom/ali/user/enterprise/base/session/SessionManager$1$1;
.super Landroid/content/BroadcastReceiver;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/base/session/SessionManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ali/user/enterprise/base/session/SessionManager$1;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/base/session/SessionManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ali/user/enterprise/base/session/SessionManager$1;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1$1;->this$1:Lcom/ali/user/enterprise/base/session/SessionManager$1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1$1;->this$1:Lcom/ali/user/enterprise/base/session/SessionManager$1;

    iget-object v2, v2, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$100(Lcom/ali/user/enterprise/base/session/SessionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "curProcessName":Ljava/lang/String;
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NOTIFY_CLEAR_SESSION"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    const-string/jumbo v2, "PROCESS_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1$1;->this$1:Lcom/ali/user/enterprise/base/session/SessionManager$1;

    iget-object v2, v2, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v2}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$200(Lcom/ali/user/enterprise/base/session/SessionManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
