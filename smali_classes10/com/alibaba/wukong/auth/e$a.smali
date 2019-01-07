.class Lcom/alibaba/wukong/auth/e$a;
.super Landroid/content/BroadcastReceiver;
.source "AuthStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic y:Lcom/alibaba/wukong/auth/e;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/e;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/wukong/auth/e$a;->y:Lcom/alibaba/wukong/auth/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncService;->reset()V

    .line 47
    invoke-static {}, Lify;->a()Lify;

    move-result-object v0

    .line 1316
    iget-object v1, v0, Lify;->a:Ljava/util/Map;

    monitor-enter v1

    .line 1317
    :try_start_0
    iget-object v0, v0, Lify;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncParaService;->getInstance()Lcom/alibaba/wukong/sync/SyncParaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/sync/SyncParaService;->reset()V

    .line 49
    return-void

    .line 1318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.alibaba.wukong.auth.LOGIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    const-string/jumbo v4, "openId"

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 35
    .local v2, "openId":J
    const-string/jumbo v4, "domain"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "domain":Ljava/lang/String;
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lifo;->a(JLjava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/e$a;->c()V

    .line 43
    .end local v1    # "domain":Ljava/lang/String;
    .end local v2    # "openId":J
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string/jumbo v4, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "com.alibaba.wukong.auth.KICKOUT"

    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    :cond_2
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lifo;->a(JLjava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/e$a;->c()V

    goto :goto_0
.end method
