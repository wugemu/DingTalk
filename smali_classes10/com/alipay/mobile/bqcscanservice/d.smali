.class public final Lcom/alipay/mobile/bqcscanservice/d;
.super Ljava/lang/Object;
.source "CameraHandler.java"


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Lcom/alipay/mobile/bqcscanservice/f;

.field public volatile c:I

.field private d:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "modelSign":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "xiaomi/redmi note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Camera-Handler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d;->d:Landroid/os/HandlerThread;

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/bqcscanservice/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d;->a:Landroid/os/Handler;

    .line 39
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Camera-Handler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d;->d:Landroid/os/HandlerThread;

    goto :goto_0

    .line 35
    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "Camera-Handler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/alipay/mobile/bqcscanservice/d;->d:Landroid/os/HandlerThread;

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 211
    iget v0, p0, Lcom/alipay/mobile/bqcscanservice/d;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
