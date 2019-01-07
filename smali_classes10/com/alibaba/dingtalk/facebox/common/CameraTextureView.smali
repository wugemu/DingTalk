.class public Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;
.super Landroid/view/TextureView;
.source "CameraTextureView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lgsm;


# instance fields
.field private final a:Lgsl;

.field private b:Lgsm$b;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lgsh;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:I

.field private k:I

.field private l:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lgsl;

    invoke-direct {v0}, Lgsl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->c:Z

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    .line 42
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->j:I

    .line 43
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->k:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->l:F

    .line 49
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lgsl;

    invoke-direct {v0}, Lgsl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->c:Z

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    .line 42
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->j:I

    .line 43
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->k:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->l:F

    .line 54
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lgsl;

    invoke-direct {v0}, Lgsl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->c:Z

    .line 32
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f:I

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    .line 42
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->j:I

    .line 43
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->k:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->l:F

    .line 59
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d()V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;)Lgsm$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    new-instance v0, Lgsh;

    const-string/jumbo v1, "CameraHandlerThread"

    invoke-direct {v0, v1, p0}, Lgsh;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    .line 64
    invoke-virtual {p0, p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 65
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 5022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 137
    invoke-virtual {v0}, Lgsy;->c()V

    .line 139
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    invoke-interface {v0}, Lgsm$b;->f()V

    .line 142
    :cond_0
    return-void
.end method

.method private f()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    iget-object v5, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->i:Landroid/graphics/SurfaceTexture;

    .line 201
    .local v5, "surface":Landroid/graphics/SurfaceTexture;
    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->c:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d:Z

    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 12022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 205
    invoke-virtual {v6}, Lgsy;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f:I

    iget v7, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    if-eq v6, v7, :cond_0

    .line 210
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 13022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 210
    invoke-virtual {v6}, Lgsy;->c()V

    .line 214
    :cond_2
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    if-nez v6, :cond_4

    const/4 v0, 0x1

    .line 216
    .local v0, "back":Z
    :goto_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 14022
    iget-object v7, v6, Lgsl;->a:Lgsy;

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v7, v6, v0}, Lgsy;->a(Landroid/app/Activity;Z)I

    move-result v4

    .line 218
    .local v4, "ret":I
    if-nez v4, :cond_5

    .line 219
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    iput v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f:I

    .line 221
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 15022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 15234
    iget v3, v6, Lgsy;->b:I

    .line 222
    .local v3, "pw":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 16022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 16238
    iget v2, v6, Lgsy;->c:I

    .line 224
    .local v2, "ph":I
    mul-int v6, v3, v2

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 17022
    iget-object v7, v7, Lgsl;->a:Lgsy;

    .line 224
    invoke-virtual {v7}, Lgsy;->b()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x8

    .line 225
    .local v1, "bufferbyte":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 18022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 225
    new-array v7, v1, [B

    invoke-virtual {v6, v7}, Lgsy;->a([B)V

    .line 228
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 19022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 228
    invoke-virtual {v6, p0}, Lgsy;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 231
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 20022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 231
    invoke-virtual {v6, v5}, Lgsy;->a(Landroid/graphics/SurfaceTexture;)V

    .line 233
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 21022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 233
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgsy;->a(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 235
    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->e:Z

    if-eqz v6, :cond_3

    .line 236
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 22022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 236
    new-instance v7, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$2;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$2;-><init>(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;)V

    invoke-virtual {v6, v7}, Lgsy;->a(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 246
    :cond_3
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    if-eqz v6, :cond_0

    .line 247
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    invoke-interface {v6, v3, v2}, Lgsm$b;->a(II)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "back":Z
    .end local v1    # "bufferbyte":I
    .end local v2    # "ph":I
    .end local v3    # "pw":I
    .end local v4    # "ret":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 250
    .restart local v0    # "back":Z
    .restart local v4    # "ret":I
    :cond_5
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    invoke-interface {v6}, Lgsm$b;->e()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d:Z

    .line 85
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    .line 1054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 85
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 86
    return-void
.end method

.method public final a(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 1022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 69
    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Lgsy;->a(II)V

    .line 70
    return-void
.end method

.method public final a(Lgsm$a;)V
    .locals 3
    .param p1, "callback"    # Lgsm$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView$1;-><init>(Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;Lgsm$a;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "backCamera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->g:I

    .line 97
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    .line 2054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 97
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->d:Z

    .line 91
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->e()V

    .line 92
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    invoke-virtual {v0}, Lgsh;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    invoke-virtual {v0}, Lgsh;->quit()Z

    .line 149
    :cond_0
    return-void
.end method

.method public getCameraDispalayOrientation()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 3022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 3316
    iget v0, v0, Lgsy;->d:I

    .line 115
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 190
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f()V

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->f()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 282
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 283
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 288
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->c:Z

    .line 133
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->e()V

    .line 134
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 6022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 6234
    iget v2, v0, Lgsy;->b:I

    .line 177
    .local v2, "width":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 7022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 7238
    iget v3, v0, Lgsy;->c:I

    .line 178
    .local v3, "height":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 8022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 8312
    iget v4, v0, Lgsy;->e:I

    .line 179
    .local v4, "rotate":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 9022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 179
    invoke-virtual {v0}, Lgsy;->e()Z

    move-result v5

    .line 180
    .local v5, "mirror":Z
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 10022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 180
    invoke-virtual {v0}, Lgsy;->b()I

    move-result v6

    .line 181
    .local v6, "format":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lgsm$b;->a([BIIIZI)V

    .line 183
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "rotate":I
    .end local v5    # "mirror":Z
    .end local v6    # "format":I
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    .line 11022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 183
    invoke-virtual {v0, p1}, Lgsy;->a([B)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->c:Z

    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    .line 4054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 126
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->i:Landroid/graphics/SurfaceTexture;

    .line 259
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->h:Lgsh;

    .line 22054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 259
    const/16 v1, 0x1002

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->i:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 260
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->i:Landroid/graphics/SurfaceTexture;

    .line 270
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->e()V

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 265
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 277
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->a:Lgsl;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgsl;->a(IIFF)V

    .line 170
    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCameraCallback(Lgsm$b;)V
    .locals 0
    .param p1, "cameraCallback"    # Lgsm$b;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->b:Lgsm$b;

    .line 121
    return-void
.end method

.method public setFaceBeautyEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 75
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->e:Z

    .line 80
    return-void
.end method

.method public setFitRatio(F)V
    .locals 0
    .param p1, "fitRatio"    # F

    .prologue
    .line 309
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->l:F

    .line 310
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraTextureView;->requestLayout()V

    .line 311
    return-void
.end method
