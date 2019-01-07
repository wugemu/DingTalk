.class public Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/interfaces/IWaStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaStat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;
    }
.end annotation


# static fields
.field static a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static saveData()V
    .locals 2

    .prologue
    .line 415
    sget-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;->onWillSave()V

    .line 419
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Z)V

    .line 422
    :cond_1
    return-void
.end method

.method public static saveData(Z)V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;->onWillSave()V

    .line 432
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Z)V

    .line 435
    :cond_1
    return-void
.end method

.method public static setSaveListener(Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;)V
    .locals 0

    .prologue
    .line 438
    sput-object p0, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a:Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat$ISaveListener;

    .line 439
    return-void
.end method

.method public static stat(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .line 388
    instance-of v0, p0, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 389
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stat(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 297
    .line 298
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 299
    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->a(Ljava/lang/String;)V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    instance-of v0, p0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 301
    check-cast p0, Landroid/util/Pair;

    invoke-static {p0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->statAKV(Landroid/util/Pair;)V

    goto :goto_0
.end method

.method public static stat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 358
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static stat(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 376
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static statAKV(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 401
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 402
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v2

    invoke-static {p0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Landroid/util/Pair;)V

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x64

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SDKWaStat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "second length("

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") more then 100"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lcom/uc/webview/export/internal/uc/wa/a;->h:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, v2, Lcom/uc/webview/export/internal/uc/wa/a;->c:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/uc/webview/export/internal/uc/wa/a;->c:Ljava/util/List;

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string/jumbo v4, "tm"

    iget-object v5, v2, Lcom/uc/webview/export/internal/uc/wa/a;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Lcom/uc/webview/export/internal/uc/wa/a;->c:Ljava/util/List;

    new-instance v5, Lcom/uc/webview/export/internal/uc/wa/a$b;

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v5, v2, v0, v1}, Lcom/uc/webview/export/internal/uc/wa/a$b;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    .line 408
    :cond_2
    :goto_0
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 407
    :catch_0
    move-exception v0

    goto :goto_0

    .line 404
    :cond_3
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public static statAdd(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 324
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static statAverage(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 341
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "stat>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static statPV(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 284
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 285
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v1

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ill_upv"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget-boolean v0, Lcom/uc/webview/export/internal/uc/wa/a;->a:Z

    if-eqz v0, :cond_3

    sput-boolean v6, Lcom/uc/webview/export/internal/uc/wa/a;->a:Z

    const/16 v0, 0x2726

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;

    if-eqz v0, :cond_2

    const-string/jumbo v2, "SdkStatFileLimit"

    invoke-interface {v0, v2}, Lcom/uc/webview/export/internal/interfaces/IGlobalSettings;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    sget v2, Lcom/uc/webview/export/internal/uc/wa/a;->e:I

    if-ge v0, v2, :cond_2

    sput v0, Lcom/uc/webview/export/internal/uc/wa/a;->d:I

    add-int/lit16 v0, v0, 0x400

    sput v0, Lcom/uc/webview/export/internal/uc/wa/a;->f:I

    :cond_2
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/a;->b:Landroid/os/Handler;

    new-instance v2, Lcom/uc/webview/export/internal/uc/wa/c;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/uc/wa/c;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v0, "ill_upv"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "SDKWaStat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "statPV:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v0, "sum_pv"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x271a

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    const/16 v0, 0x2724

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/SDKFactory;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_0

    const-string/jumbo v0, "sum_swv_pv"

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_6
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "statPV>>WaStatImp not inited"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static upload()V
    .locals 6

    .prologue
    .line 442
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->a()Lcom/uc/webview/export/internal/uc/wa/a;

    move-result-object v1

    invoke-static {}, Lcom/uc/webview/export/internal/uc/wa/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "process_private_data_dir_suffix"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    iget-object v0, v1, Lcom/uc/webview/export/internal/uc/wa/a;->b:Landroid/os/Handler;

    new-instance v2, Lcom/uc/webview/export/internal/uc/wa/d;

    invoke-direct {v2, v1}, Lcom/uc/webview/export/internal/uc/wa/d;-><init>(Lcom/uc/webview/export/internal/uc/wa/a;)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
