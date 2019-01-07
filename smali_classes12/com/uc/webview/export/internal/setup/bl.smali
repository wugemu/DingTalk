.class final Lcom/uc/webview/export/internal/setup/bl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bk;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bk;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bi;->a:Lcom/uc/webview/export/internal/setup/bt;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/bt;->a(J)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VerifyTask Fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bh;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0x3f3

    const-string/jumbo v3, "So files hash verify timeout."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bh;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v11, v0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/bh;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/p;->mCL:Ljava/lang/ClassLoader;

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/p;->mShellCL:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-boolean v5, v5, Lcom/uc/webview/export/internal/setup/p;->a:Z

    iget-object v6, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v6, v6, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-boolean v6, v6, Lcom/uc/webview/export/internal/setup/p;->b:Z

    sget-object v7, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 v8, 0x2724

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v9, v9, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v9, v9, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    iget-object v9, v9, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v10, "scst_flag"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Boolean;)Z

    move-result v9

    iget-object v10, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-boolean v12, v10, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->isSpecified:Z

    iget-object v10, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    iget-object v10, v10, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v13, "scst_flag"

    invoke-virtual {v10, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-static {v10}, Lcom/uc/webview/export/internal/utility/j;->b(Ljava/lang/Boolean;)Z

    move-result v10

    invoke-static {v12, v10}, Lcom/uc/webview/export/internal/utility/j;->a(ZZ)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;-><init>(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;ZZLcom/uc/webview/export/internal/interfaces/UCMobileWebKit;IZI)V

    invoke-virtual {v11, v0}, Lcom/uc/webview/export/internal/setup/bh;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    const-string/jumbo v1, "init"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bh;->callback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    const-string/jumbo v1, "switch"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bh;->callback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    const-string/jumbo v1, "precreate_webview"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/bh;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/z;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uc/webview/export/internal/setup/z;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/z;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v4, v4, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/z;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bh;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/z;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/z;->setUCM(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->a:Lcom/uc/webview/export/internal/setup/p;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/p;->mCL:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/z;->setClassLoader(Ljava/lang/ClassLoader;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/z;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/z;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    const-string/jumbo v1, "success"

    new-instance v2, Lcom/uc/webview/export/internal/setup/bn;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/bn;-><init>(Lcom/uc/webview/export/internal/setup/bl;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/z;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    const-string/jumbo v1, "exception"

    new-instance v2, Lcom/uc/webview/export/internal/setup/bm;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/bm;-><init>(Lcom/uc/webview/export/internal/setup/bl;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/z;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/z;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/z;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/bh;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bk;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bk;->b:Lcom/uc/webview/export/internal/setup/bi;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bi;->b:Lcom/uc/webview/export/internal/setup/bh;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfb2

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/bh;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto/16 :goto_0
.end method
