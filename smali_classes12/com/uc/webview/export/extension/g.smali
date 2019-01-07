.class final Lcom/uc/webview/export/extension/g;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/Callable;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/uc/webview/export/extension/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/webview/export/extension/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/webview/export/extension/g;->c:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/uc/webview/export/extension/g;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x2713

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 985
    :goto_0
    const/16 v0, 0x271a

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 987
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    goto :goto_0

    .line 992
    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v1, "force system webview, don\'t download uc player"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :goto_1
    return-void

    .line 996
    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v6, v0}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v1, "use ucmobile apollo, don\'t download uc player"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1000
    :cond_2
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->t:Z

    if-nez v0, :cond_3

    .line 1001
    const-string/jumbo v0, "tag_test_log"

    const-string/jumbo v1, "sUseUCPlayer is false, don\'t download uc player"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1005
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/extension/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uc/webview/export/extension/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uc/webview/export/extension/g;->c:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lcom/uc/webview/export/extension/g;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/extension/UCCore;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1007
    :catch_1
    move-exception v0

    goto :goto_1
.end method
