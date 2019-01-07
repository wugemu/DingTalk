.class public final Ljax$a$a;
.super Ljava/lang/Object;
.source "Update.java"

# interfaces
.implements Ljau$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljax$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ljax$a;


# direct methods
.method public constructor <init>(Ljax$a;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Ljax$a$a;->a:Ljax$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "process"    # I

    .prologue
    .line 325
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    .line 1236
    iget v0, v0, Ljax$a;->d:I

    .line 325
    if-ne v0, p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    .line 2236
    iput p1, v0, Ljax$a;->d:I

    .line 329
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v0, v0, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v0, v0, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    invoke-interface {v0, p1}, Ljaw;->a(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 336
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v0, v0, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v0, v0, Ljax$a;->f:Ljax;

    invoke-static {v0}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljaw;->a(ILjava/lang/String;)V

    .line 338
    :cond_0
    iget-object v0, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v0, v0, Ljax$a;->f:Ljax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljax;->a(Ljax;Z)Z

    .line 339
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 13
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 345
    const-string/jumbo v7, ".apk"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 347
    invoke-static {p1}, Ljav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "md5":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    .line 3236
    iget-object v7, v7, Ljax$a;->b:Ljay;

    .line 348
    iget-object v7, v7, Ljay;->i:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 349
    :cond_0
    const/4 v3, 0x0

    .line 350
    .local v3, "md5Check":Z
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 355
    :goto_0
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v7, v7, Ljax$a;->f:Ljax;

    invoke-static {v7}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 356
    if-eqz v3, :cond_4

    .line 357
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v7, v7, Ljax$a;->f:Ljax;

    invoke-static {v7}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v7

    invoke-interface {v7, p1}, Ljaw;->a(Ljava/lang/String;)V

    .line 362
    :cond_1
    :goto_1
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v7, v7, Ljax$a;->f:Ljax;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljax;->a(Ljax;Z)Z

    .line 386
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "md5Check":Z
    :cond_2
    :goto_2
    return-void

    .line 352
    .restart local v2    # "md5":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "md5Check":Z
    goto :goto_0

    .line 359
    :cond_4
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v7, v7, Ljax$a;->f:Ljax;

    invoke-static {v7}, Ljax;->d(Ljax;)Ljaw;

    move-result-object v7

    const/16 v8, -0xf

    const-string/jumbo v9, "MD5\u6821\u9a8c\u5931\u8d25"

    invoke-interface {v7, v8, v9}, Ljaw;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 364
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "md5Check":Z
    :cond_5
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    .line 4236
    iget-object v7, v7, Ljax$a;->b:Ljay;

    .line 364
    if-eqz v7, :cond_2

    .line 366
    const/4 v5, 0x0

    .line 368
    .local v5, "url":Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    .line 5236
    iget-object v7, v7, Ljax$a;->b:Ljay;

    .line 368
    iget-object v7, v7, Ljay;->b:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "url":Ljava/net/URL;
    .local v6, "url":Ljava/net/URL;
    move-object v5, v6

    .line 373
    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_3
    if-nez v5, :cond_6

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Ljax$a$a;->a:Ljax$a;

    .line 6236
    iget-object v8, v8, Ljax$a;->c:Ljava/lang/String;

    .line 374
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Ljax$a$a;->a:Ljax$a;

    .line 7236
    iget-object v8, v8, Ljax$a;->b:Ljay;

    .line 374
    iget-object v8, v8, Ljay;->f:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "fileName":Ljava/lang/String;
    :goto_4
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v7, v7, Ljax$a;->f:Ljax;

    invoke-static {v7}, Ljax;->c(Ljax;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .local v4, "newApkFile":Ljava/io/File;
    iget-object v8, p0, Ljax$a$a;->a:Ljax$a;

    new-instance v9, Ljax$b;

    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    iget-object v10, v7, Ljax$a;->f:Ljax;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    .line 8236
    iget-object v7, v7, Ljax$a;->b:Ljay;

    .line 378
    iget v7, v7, Ljay;->g:I

    sget-object v12, Lcom/laiwang/update/base/UpdateEnum;->QUIESCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v12}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v12

    if-ne v7, v12, :cond_7

    const/4 v7, 0x1

    :goto_5
    invoke-direct {v9, v10, v11, v7}, Ljax$b;-><init>(Ljax;Ljava/lang/String;Z)V

    .line 9236
    iput-object v9, v8, Ljax$a;->e:Ljax$b;

    .line 380
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-le v7, v8, :cond_8

    .line 381
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    .line 10236
    iget-object v7, v7, Ljax$a;->e:Ljax$b;

    .line 381
    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Ljax$a$a;->a:Ljax$a;

    .line 11236
    iget-object v11, v11, Ljax$a;->b:Ljay;

    .line 381
    iget-object v11, v11, Ljay;->i:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljax$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 369
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v4    # "newApkFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e2":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 376
    .end local v0    # "e2":Ljava/net/MalformedURLException;
    :cond_6
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fileName":Ljava/lang/String;
    goto :goto_4

    .line 378
    .restart local v4    # "newApkFile":Ljava/io/File;
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 383
    :cond_8
    iget-object v7, p0, Ljax$a$a;->a:Ljax$a;

    .line 12236
    iget-object v7, v7, Ljax$a;->e:Ljax$b;

    .line 383
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Ljax$a$a;->a:Ljax$a;

    .line 13236
    iget-object v10, v10, Ljax$a;->b:Ljay;

    .line 383
    iget-object v10, v10, Ljay;->i:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljax$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2
.end method
