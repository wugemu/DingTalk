.class final Lcom/uc/webview/export/extension/a;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/concurrent/Callable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/uc/webview/export/extension/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uc/webview/export/extension/a;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/uc/webview/export/extension/a;->c:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lcom/uc/webview/export/extension/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/uc/webview/export/extension/a;->e:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 884
    const/16 v0, 0xa

    move v1, v0

    .line 885
    :goto_0
    const/16 v0, 0x271a

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->q:Z

    if-nez v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    .line 888
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 891
    goto :goto_0

    .line 890
    :catch_0
    move-exception v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 893
    :cond_1
    if-gtz v1, :cond_2

    .line 894
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const-string/jumbo v1, "Waiting timeout for UCCore initialization finish!"

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :cond_2
    :try_start_1
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Integer;)V

    .line 900
    new-instance v3, Lcom/uc/webview/export/internal/setup/cj;

    invoke-direct {v3}, Lcom/uc/webview/export/internal/setup/cj;-><init>()V

    .line 901
    const-string/jumbo v0, "CONTEXT"

    iget-object v1, p0, Lcom/uc/webview/export/extension/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/uc/webview/export/internal/setup/cj;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const/16 v1, 0x2711

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 902
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipDir"

    const/4 v4, 0x0

    .line 903
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipFile"

    const/4 v4, 0x0

    .line 904
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "sdk_setup"

    const/4 v4, 0x1

    .line 905
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "chkMultiCore"

    const/4 v4, 0x1

    .line 906
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "downloadException"

    new-instance v4, Lcom/uc/webview/export/extension/c;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/extension/c;-><init>(Lcom/uc/webview/export/extension/a;)V

    .line 907
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "updateProgress"

    new-instance v4, Lcom/uc/webview/export/extension/b;

    invoke-direct {v4, p0}, Lcom/uc/webview/export/extension/b;-><init>(Lcom/uc/webview/export/extension/a;)V

    .line 913
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 919
    iget-object v0, p0, Lcom/uc/webview/export/extension/a;->c:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_3

    .line 920
    const-string/jumbo v0, "dlChecker"

    iget-object v1, p0, Lcom/uc/webview/export/extension/a;->c:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v0, v1}, Lcom/uc/webview/export/internal/setup/cj;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 921
    :cond_3
    iget-object v0, p0, Lcom/uc/webview/export/extension/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 922
    const-string/jumbo v0, "ucmUpdUrl"

    iget-object v1, p0, Lcom/uc/webview/export/extension/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/uc/webview/export/internal/setup/cj;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 923
    :cond_4
    iget-object v0, p0, Lcom/uc/webview/export/extension/a;->e:Ljava/util/Map;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uc/webview/export/extension/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 924
    iget-object v0, p0, Lcom/uc/webview/export/extension/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 925
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/uc/webview/export/internal/setup/cj;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    goto :goto_1

    .line 931
    :catch_1
    move-exception v0

    .line 932
    :goto_2
    return-void

    .line 928
    :cond_5
    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v0, v1}, Lcom/uc/webview/export/internal/setup/cj;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 929
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2
.end method
