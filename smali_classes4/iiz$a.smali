.class final Liiz$a;
.super Ljava/lang/Object;
.source "MPaasScanServiceImpl.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liiz;


# direct methods
.method private constructor <init>(Liiz;)V
    .locals 1

    .prologue
    .line 683
    iput-object p1, p0, Liiz$a;->a:Liiz;

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

.method synthetic constructor <init>(Liiz;B)V
    .locals 0
    .param p1, "x0"    # Liiz;

    .prologue
    .line 683
    invoke-direct {p0, p1}, Liiz$a;-><init>(Liiz;)V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 686
    const-string/jumbo v0, "MPaasScanServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "BQCSurfaceCallback:onSurfaceTextureAvailable(): surface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Liiz$a;->a:Liiz;

    invoke-static {v0, p1}, Liiz;->a(Liiz;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 689
    iget-object v0, p0, Liiz$a;->a:Liiz;

    invoke-static {v0}, Liiz;->d(Liiz;)Liix;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Liiz$a;->a:Liiz;

    invoke-static {v0}, Liiz;->d(Liiz;)Liix;

    move-result-object v0

    .line 1191
    iget-object v1, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v1, :cond_0

    .line 1192
    iget-object v0, v0, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v0}, Lcom/alipay/mobile/bqcscanservice/a;->a()V

    .line 692
    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 701
    const-string/jumbo v0, "MPaasScanServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSurfaceTextureDestroyed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 696
    const-string/jumbo v0, "MPaasScanServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSurfaceTextureSizeChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Liiz$a;->a:Liiz;

    invoke-static {v2}, Liiz;->e(Liiz;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 707
    const-string/jumbo v1, "MPaasScanServiceImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSurfaceTextureUpdated("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), frameShowReported is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liiz$a;->a:Liiz;

    invoke-static {v2}, Liiz;->f(Liiz;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2021
    sget-object v1, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    if-eqz v1, :cond_0

    .line 2023
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/bqcscanservice/e;->a:Lcom/alipay/mobile/bqcscanservice/e$a;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/e$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 708
    :cond_0
    :goto_0
    iget-object v1, p0, Liiz$a;->a:Liiz;

    iget-object v2, p0, Liiz$a;->a:Liiz;

    invoke-static {v2}, Liiz;->c(Liiz;)J

    move-result-wide v2

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Liiz;->a(Liiz;J)J

    .line 709
    iget-object v1, p0, Liiz$a;->a:Liiz;

    invoke-static {v1}, Liiz;->f(Liiz;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 711
    :try_start_1
    iget-object v1, p0, Liiz$a;->a:Liiz;

    invoke-static {v1}, Liiz;->d(Liiz;)Liix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 712
    iget-object v1, p0, Liiz$a;->a:Liiz;

    invoke-static {v1}, Liiz;->d(Liiz;)Liix;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 2217
    :try_start_2
    iget-object v2, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    if-eqz v2, :cond_1

    .line 2218
    iget-object v1, v1, Liix;->b:Lcom/alipay/mobile/bqcscanservice/a;

    invoke-interface {v1}, Lcom/alipay/mobile/bqcscanservice/a;->c()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 713
    :cond_1
    :goto_1
    :try_start_3
    iget-object v1, p0, Liiz$a;->a:Liiz;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Liiz;->a(Liiz;Z)Z

    .line 719
    :cond_2
    :goto_2
    return-void

    .line 2220
    :catch_0
    move-exception v1

    .line 2221
    const-string/jumbo v2, "BQCScanController"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 715
    :catch_1
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MPaasScanServiceImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/bqcscanservice/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_0
.end method
