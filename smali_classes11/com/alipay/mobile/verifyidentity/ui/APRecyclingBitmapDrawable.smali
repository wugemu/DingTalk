.class public Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "APRecyclingBitmapDrawable.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CountingBitmapDrawable"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 34
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b:I

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->c:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No longer being used or cached so recycling. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Z
    .locals 1

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public setIsCached(Z)V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    if-eqz p1, :cond_0

    .line 78
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a:I

    .line 82
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a()V

    .line 87
    return-void

    .line 80
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a:I

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIsDisplayed(Z)V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    if-eqz p1, :cond_0

    .line 55
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->c:Z

    .line 60
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->a()V

    .line 65
    return-void

    .line 58
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APRecyclingBitmapDrawable;->b:I

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
