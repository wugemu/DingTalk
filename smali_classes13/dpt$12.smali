.class final Ldpt$12;
.super Ljava/lang/Object;
.source "EmotionPackageMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldpt;->i(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ldpt;


# direct methods
.method constructor <init>(Ldpt;J)V
    .locals 0
    .param p1, "this$0"    # Ldpt;

    .prologue
    .line 456
    iput-object p1, p0, Ldpt$12;->b:Ldpt;

    iput-wide p2, p0, Ldpt$12;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 460
    iget-object v6, p0, Ldpt$12;->b:Ldpt;

    iget-wide v8, p0, Ldpt$12;->a:J

    invoke-virtual {v6, v8, v9}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v3

    .line 461
    .local v3, "model":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-nez v3, :cond_0

    .line 462
    const-string/jumbo v6, "im"

    const-string/jumbo v7, "traceEmotion"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "model null,pid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Ldpt$12;->a:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-wide v6, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v6, v7}, Ldpt;->h(J)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Ldpt$12;->b:Ldpt;

    invoke-static {v6, v1}, Ldpt;->a(Ldpt;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 469
    const-string/jumbo v6, "im"

    const-string/jumbo v7, "traceEmotion"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "in loaders,pid="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Ldpt$12;->a:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-wide v6, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, "path":Ljava/lang/String;
    iget-wide v6, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionFileStruct;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "fileName":Ljava/lang/String;
    new-instance v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;

    iget-object v6, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageMediaId:Ljava/lang/String;

    invoke-direct {v2, v5, v0, v6}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .local v2, "loader":Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;
    iget-object v6, p0, Ldpt$12;->b:Ldpt;

    invoke-static {v6, v1, v2}, Ldpt;->a(Ldpt;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;)Z

    .line 477
    new-instance v6, Ldpt$12$1;

    invoke-direct {v6, p0}, Ldpt$12$1;-><init>(Ldpt$12;)V

    .line 1167
    iput-object v6, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->c:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$b;

    .line 511
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 512
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Ldpt;->c:Ljava/lang/String;

    iget-wide v8, v3, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v6, Ldpt;->b:Ljava/lang/String;

    sget-object v7, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;->ZIP:Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader$DownloadType;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    iput-object v4, v2, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->d:Ljava/util/HashMap;

    .line 515
    const-string/jumbo v6, "im"

    const-string/jumbo v7, "traceEmotion"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "isRequesting="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Ldpt$12;->b:Ldpt;

    invoke-static {v9}, Ldpt;->f(Ldpt;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Ldpt$12;->a:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v6, p0, Ldpt$12;->b:Ldpt;

    invoke-static {v6}, Ldpt;->f(Ldpt;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 517
    iget-object v6, p0, Ldpt$12;->b:Ldpt;

    invoke-static {v6}, Ldpt;->g(Ldpt;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 519
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/mgr/emotion/EmotionDownloader;->a()V

    .line 520
    iget-object v6, p0, Ldpt$12;->b:Ldpt;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ldpt;->a(Ldpt;Z)Z

    goto/16 :goto_0
.end method
