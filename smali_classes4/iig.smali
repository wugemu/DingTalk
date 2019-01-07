.class public final Liig;
.super Ljava/lang/Object;
.source "CameraManager.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Liif;

.field public c:Landroid/hardware/Camera;

.field public d:Landroid/hardware/Camera$Parameters;

.field public e:Liie;

.field public f:Z

.field public g:J

.field public h:I

.field public volatile i:Z

.field public j:Landroid/graphics/Point;

.field public k:Landroid/graphics/Point;

.field public l:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraParameters"    # Landroid/hardware/Camera$Parameters;
    .param p3, "screenResolution"    # Landroid/graphics/Point;
    .param p4, "previewResolution"    # Landroid/graphics/Point;
    .param p5, "pictureResolution"    # Landroid/graphics/Point;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Liig;->g:J

    .line 60
    iput-object p1, p0, Liig;->a:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Liig;->j:Landroid/graphics/Point;

    .line 62
    iput-object p4, p0, Liig;->k:Landroid/graphics/Point;

    .line 63
    iput-object p5, p0, Liig;->l:Landroid/graphics/Point;

    .line 64
    new-instance v0, Liif;

    invoke-direct {v0, p1, p3, p4, p5}, Liif;-><init>(Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v0, p0, Liig;->b:Liif;

    .line 65
    iput-object p2, p0, Liig;->d:Landroid/hardware/Camera$Parameters;

    .line 66
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
.method public final a(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 4
    .param p1, "previewCallback"    # Landroid/hardware/Camera$PreviewCallback;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 247
    iget-object v1, p0, Liig;->c:Landroid/hardware/Camera;

    .line 248
    .local v1, "theCamera":Landroid/hardware/Camera;
    if-eqz v1, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "CameraManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/bqcscanservice/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Liig;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
