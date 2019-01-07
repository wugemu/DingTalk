.class Lcom/ali/user/enterprise/base/session/SessionManager$1;
.super Ljava/lang/Thread;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/enterprise/base/session/SessionManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/user/enterprise/base/session/SessionManager;


# direct methods
.method constructor <init>(Lcom/ali/user/enterprise/base/session/SessionManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/user/enterprise/base/session/SessionManager;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 124
    new-instance v3, Lcom/ali/user/enterprise/base/session/SessionManager$1$1;

    invoke-direct {v3, p0}, Lcom/ali/user/enterprise/base/session/SessionManager$1$1;-><init>(Lcom/ali/user/enterprise/base/session/SessionManager$1;)V

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$002(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "NOTIFY_CLEAR_SESSION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v3, "NOTIFY_SESSION_VALID"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$100(Lcom/ali/user/enterprise/base/session/SessionManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$000()Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$300(Lcom/ali/user/enterprise/base/session/SessionManager;)V

    .line 153
    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-virtual {v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->checkSessionValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "NOTIFY_SESSION_VALID"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "PROCESS_NAME"

    iget-object v4, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v4}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$100(Lcom/ali/user/enterprise/base/session/SessionManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/user/enterprise/base/thread/LoginThreadHelper;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$100(Lcom/ali/user/enterprise/base/session/SessionManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v3, p0, Lcom/ali/user/enterprise/base/session/SessionManager$1;->this$0:Lcom/ali/user/enterprise/base/session/SessionManager;

    invoke-static {v3}, Lcom/ali/user/enterprise/base/session/SessionManager;->access$100(Lcom/ali/user/enterprise/base/session/SessionManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    const-string/jumbo v3, "login.LoginSessionManager"

    const-string/jumbo v4, "sendBroadcast: NOTIFY_SESSION_VALID"

    invoke-static {v3, v4}, Lcom/ali/user/enterprise/base/log/TLogAdapter;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
