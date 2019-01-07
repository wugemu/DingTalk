.class final Lgos$c;
.super Ljava/lang/Object;
.source "CSpaceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 338
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgos$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lgos$b;)V
    .locals 10
    .param p0, "x0"    # Lgos$b;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 310
    .line 1341
    if-eqz p0, :cond_7

    .line 1345
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v5

    .line 1346
    iget-object v0, p0, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1348
    const-string/jumbo v6, "spaceType"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1349
    const-string/jumbo v6, "fileExtension"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1350
    const-string/jumbo v6, "fileSize"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1352
    :cond_0
    const-string/jumbo v6, "errorCode"

    iget-boolean v0, p0, Lgos$b;->h:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "OK"

    :goto_0
    invoke-virtual {v5, v6, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1354
    iget-boolean v0, p0, Lgos$b;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgos$b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1355
    :cond_1
    const-string/jumbo v0, "errorMsg"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    iget-object v7, p0, Lgos$b;->j:Ljava/lang/String;

    aput-object v7, v6, v2

    const-string/jumbo v7, " [method: "

    aput-object v7, v6, v3

    iget-object v7, p0, Lgos$b;->b:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x3

    const-string/jumbo v8, "]"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1358
    :cond_2
    iget-object v0, p0, Lgos$b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1361
    iget-object v6, p0, Lgos$b;->a:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 1376
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1377
    const-string/jumbo v4, "business"

    invoke-virtual {v5, v4, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1379
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1380
    const-string/jumbo v1, "protocol"

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1384
    :cond_5
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    .line 1385
    const-string/jumbo v1, "costTime"

    iget-wide v6, p0, Lgos$b;->f:J

    long-to-double v6, v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1386
    const-string/jumbo v1, "transferTime"

    iget-wide v6, p0, Lgos$b;->g:J

    long-to-double v6, v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1387
    const-string/jumbo v1, "transferSize"

    iget-wide v6, p0, Lgos$b;->e:J

    long-to-double v6, v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1388
    const-string/jumbo v1, "rssi"

    iget v4, p0, Lgos$b;->m:I

    int-to-double v6, v4

    invoke-virtual {v0, v1, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 1390
    sget-object v1, Lgos$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1398
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 1399
    const-string/jumbo v2, "spaceType"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1400
    const-string/jumbo v2, "fileExtension"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1401
    const-string/jumbo v2, "fileSize"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1402
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1403
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1404
    const-string/jumbo v2, "errorMsg"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1405
    const-string/jumbo v2, "protocol"

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 1407
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    .line 1408
    const-string/jumbo v3, "costTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 1409
    const-string/jumbo v3, "transferTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 1410
    const-string/jumbo v3, "transferSize"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 1411
    const-string/jumbo v3, "rssi"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 1413
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "cspace"

    const-string/jumbo v6, "cspace_monitor"

    invoke-interface {v3, v4, v6, v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 1394
    :cond_6
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "cspace"

    const-string/jumbo v3, "cspace_monitor"

    invoke-interface {v1, v2, v3, v5, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 310
    :cond_7
    return-void

    .line 1352
    :cond_8
    iget v0, p0, Lgos$b;->i:I

    .line 1353
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1361
    :sswitch_0
    const-string/jumbo v4, "httpUploadFile"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v4, "lwpUploadFile"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo v7, "httpDownloadFile"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    goto/16 :goto_1

    .line 1363
    :pswitch_0
    const-string/jumbo v1, "upload"

    .line 1364
    const-string/jumbo v0, "https"

    goto/16 :goto_2

    .line 1367
    :pswitch_1
    const-string/jumbo v1, "upload"

    .line 1368
    const-string/jumbo v0, "lwp"

    goto/16 :goto_2

    .line 1371
    :pswitch_2
    const-string/jumbo v1, "download"

    .line 1372
    const-string/jumbo v0, "https"

    goto/16 :goto_2

    .line 1361
    :sswitch_data_0
    .sparse-switch
        -0x40c8c2be -> :sswitch_1
        -0x21ab963b -> :sswitch_0
        0x58607ecc -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
