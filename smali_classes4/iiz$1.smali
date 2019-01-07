.class final Liiz$1;
.super Ljava/lang/Object;
.source "MPaasScanServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liiz;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Liiz;


# direct methods
.method constructor <init>(Liiz;I)V
    .locals 1
    .param p1, "this$0"    # Liiz;

    .prologue
    .line 305
    iput-object p1, p0, Liiz$1;->b:Liiz;

    iput p2, p0, Liiz$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "seconds":I
    iget-object v4, p0, Liiz$1;->b:Liiz;

    invoke-static {v4}, Liiz;->a(Liiz;)J

    move-result-wide v0

    .line 312
    .local v0, "bqcCode":J
    :cond_0
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 313
    add-int/lit8 v3, v3, 0x2

    .line 314
    iget v4, p0, Liiz$1;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v4, :cond_0

    .line 318
    :goto_0
    iget-object v4, p0, Liiz$1;->b:Liiz;

    invoke-static {v4}, Liiz;->b(Liiz;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 319
    const-string/jumbo v4, "MPaasScanServiceImpl"

    const-string/jumbo v5, "enableCameraOpenWatcher is false, not check camera open status"

    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_1
    return-void

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MPaasScanServiceImpl"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 322
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v4, "MPaasScanServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The Postcode is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Liiz$1;->b:Liiz;

    invoke-static {v6}, Liiz;->a(Liiz;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", the bqcCode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", the statisticCamera is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Liiz$1;->b:Liiz;

    .line 323
    invoke-static {v6}, Liiz;->c(Liiz;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v4, v5}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v4, p0, Liiz$1;->b:Liiz;

    invoke-static {v4}, Liiz;->a(Liiz;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Liiz$1;->b:Liiz;

    invoke-static {v4}, Liiz;->c(Liiz;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 325
    iget-object v4, p0, Liiz$1;->b:Liiz;

    invoke-static {v4}, Liiz;->d(Liiz;)Liix;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 326
    iget-object v4, p0, Liiz$1;->b:Liiz;

    invoke-static {v4}, Liiz;->d(Liiz;)Liix;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/bqcscanservice/BQCScanError;

    sget-object v6, Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;->CameraOpenError:Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;

    const-string/jumbo v7, "preview_error"

    invoke-direct {v5, v6, v7}, Lcom/alipay/mobile/bqcscanservice/BQCScanError;-><init>(Lcom/alipay/mobile/bqcscanservice/BQCScanError$ErrorType;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Liix;->a(Lcom/alipay/mobile/bqcscanservice/BQCScanError;)V

    goto :goto_1
.end method
