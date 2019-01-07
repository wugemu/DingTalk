.class public Lcom/alibaba/dingtalk/facebox/common/CameraGLView;
.super Landroid/opengl/GLSurfaceView;
.source "CameraGLView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/os/Handler$Callback;
.implements Lgsm;


# instance fields
.field private final a:Lgsl;

.field private b:Lgsh;

.field private c:Lgse;

.field private d:Lgsm$b;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

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
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lgsl;

    invoke-direct {v0}, Lgsl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e:Z

    .line 36
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f:Z

    .line 37
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->g:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->h:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    .line 42
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->j:I

    .line 43
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->k:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->l:F

    .line 49
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d()V

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
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lgsl;

    invoke-direct {v0}, Lgsl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e:Z

    .line 36
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f:Z

    .line 37
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->g:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->h:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    .line 42
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->j:I

    .line 43
    iput v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->k:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->l:F

    .line 54
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d()V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)Lgsm$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)Lgse;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/common/CameraGLView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->setEGLContextClientVersion(I)V

    .line 59
    new-instance v0, Lgsh;

    const-string/jumbo v1, "CameraHandlerThread"

    invoke-direct {v0, v1, p0}, Lgsh;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    .line 60
    new-instance v1, Lgse;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    .line 1054
    iget-object v2, v2, Lgsh;->a:Landroid/os/Handler;

    .line 60
    invoke-direct {v1, v0, v2}, Lgse;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    .line 61
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->setRenderMode(I)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgse;->a(Z)V

    .line 65
    return-void
.end method

.method private e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    .line 3075
    iget-object v5, v6, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 105
    .local v5, "surface":Landroid/graphics/SurfaceTexture;
    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f:Z

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 4022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 109
    invoke-virtual {v6}, Lgsy;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 110
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->h:I

    iget v7, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    if-eq v6, v7, :cond_0

    .line 114
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 5022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 114
    invoke-virtual {v6}, Lgsy;->c()V

    .line 118
    :cond_2
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    if-nez v6, :cond_4

    const/4 v0, 0x1

    .line 121
    .local v0, "back":Z
    :goto_1
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 6022
    iget-object v7, v6, Lgsl;->a:Lgsy;

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v7, v6, v0}, Lgsy;->a(Landroid/app/Activity;Z)I

    move-result v4

    .line 122
    .local v4, "ret":I
    if-nez v4, :cond_5

    .line 123
    iget v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    iput v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->h:I

    .line 125
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 7022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 7234
    iget v3, v6, Lgsy;->b:I

    .line 126
    .local v3, "pw":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 8022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 8238
    iget v2, v6, Lgsy;->c:I

    .line 128
    .local v2, "ph":I
    mul-int v6, v3, v2

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 9022
    iget-object v7, v7, Lgsl;->a:Lgsy;

    .line 128
    invoke-virtual {v7}, Lgsy;->b()I

    move-result v7

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v7

    mul-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x8

    .line 129
    .local v1, "bufferbyte":I
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 10022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 129
    new-array v7, v1, [B

    invoke-virtual {v6, v7}, Lgsy;->a([B)V

    .line 132
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 11022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 132
    invoke-virtual {v6, p0}, Lgsy;->a(Landroid/hardware/Camera$PreviewCallback;)V

    .line 135
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 12022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 135
    invoke-virtual {v6, v5}, Lgsy;->a(Landroid/graphics/SurfaceTexture;)V

    .line 137
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 13022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 137
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgsy;->a(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 139
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    iget-object v7, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 14022
    iget-object v7, v7, Lgsl;->a:Lgsy;

    .line 139
    invoke-virtual {v7}, Lgsy;->e()Z

    move-result v7

    iget-object v8, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 15022
    iget-object v8, v8, Lgsl;->a:Lgsy;

    .line 15312
    iget v8, v8, Lgsy;->e:I

    .line 16288
    iget-object v9, v6, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput v3, v9, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iWidth:I

    .line 16289
    iget-object v9, v6, Lgse;->c:Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;

    iput v2, v9, Lcom/taobao/xsandroidcamerademo/ImgTextureIdInfo;->iHeight:I

    .line 16290
    iput-boolean v7, v6, Lgse;->f:Z

    .line 16291
    iput v8, v6, Lgse;->e:I

    .line 141
    iget-boolean v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->g:Z

    if-eqz v6, :cond_3

    .line 142
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 17022
    iget-object v6, v6, Lgsl;->a:Lgsy;

    .line 142
    new-instance v7, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$1;

    invoke-direct {v7, p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$1;-><init>(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)V

    invoke-virtual {v6, v7}, Lgsy;->a(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 152
    :cond_3
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    if-eqz v6, :cond_0

    .line 153
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    invoke-interface {v6, v3, v2}, Lgsm$b;->a(II)V

    goto/16 :goto_0

    .line 118
    .end local v0    # "back":Z
    .end local v1    # "bufferbyte":I
    .end local v2    # "ph":I
    .end local v3    # "pw":I
    .end local v4    # "ret":I
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 156
    .restart local v0    # "back":Z
    .restart local v4    # "ret":I
    :cond_5
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    if-eqz v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    invoke-interface {v6}, Lgsm$b;->e()V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 20022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 204
    invoke-virtual {v0}, Lgsy;->c()V

    .line 206
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    invoke-interface {v0}, Lgsm$b;->f()V

    .line 209
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f:Z

    .line 165
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    .line 17054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 165
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
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
    .line 73
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 2022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 73
    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2}, Lgsy;->a(II)V

    .line 74
    return-void
.end method

.method public final a(Lgsm$a;)V
    .locals 2
    .param p1, "callback"    # Lgsm$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$3;-><init>(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;Lgsm$a;)V

    .line 20352
    iput-object v1, v0, Lgse;->h:Lgse$a;

    .line 228
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    .line 21122
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgse;->d:Z

    .line 229
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "backCamera"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->i:I

    .line 177
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    .line 18054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 177
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f:Z

    .line 171
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f()V

    .line 172
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    invoke-virtual {v0}, Lgsh;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    invoke-virtual {v0}, Lgsh;->quit()Z

    .line 216
    :cond_0
    return-void
.end method

.method public getCameraDispalayOrientation()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 22022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 22316
    iget v0, v0, Lgsy;->d:I

    .line 233
    return v0
.end method

.method public getRender()Lgse;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    .line 2075
    iget-object v0, v1, Lgse;->a:Landroid/graphics/SurfaceTexture;

    .line 91
    .local v0, "surface":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e()V

    goto :goto_0

    .line 97
    .end local v0    # "surface":Landroid/graphics/SurfaceTexture;
    :pswitch_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->requestRender()V

    .line 278
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 284
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 289
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e:Z

    .line 192
    new-instance v0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView$2;-><init>(Lcom/alibaba/dingtalk/facebox/common/CameraGLView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->queueEvent(Ljava/lang/Runnable;)V

    .line 200
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->f()V

    .line 201
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
    .line 256
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 23022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 23234
    iget v2, v0, Lgsy;->b:I

    .line 258
    .local v2, "width":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 24022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 24238
    iget v3, v0, Lgsy;->c:I

    .line 259
    .local v3, "height":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 25022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 25312
    iget v4, v0, Lgsy;->e:I

    .line 260
    .local v4, "rotate":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 26022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 260
    invoke-virtual {v0}, Lgsy;->e()Z

    move-result v5

    .line 261
    .local v5, "mirror":Z
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 27022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 261
    invoke-virtual {v0}, Lgsy;->b()I

    move-result v6

    .line 262
    .local v6, "format":I
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lgsm$b;->a([BIIIZI)V

    .line 264
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "rotate":I
    .end local v5    # "mirror":Z
    .end local v6    # "format":I
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    .line 28022
    iget-object v0, v0, Lgsl;->a:Lgsy;

    .line 264
    invoke-virtual {v0, p1}, Lgsy;->a([B)V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->e:Z

    .line 184
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->b:Lgsh;

    .line 19054
    iget-object v0, v0, Lgsh;->a:Landroid/os/Handler;

    .line 184
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 185
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->a:Lgsl;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lgsl;->a(IIFF)V

    .line 272
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCameraCallback(Lgsm$b;)V
    .locals 0
    .param p1, "cameraCallback"    # Lgsm$b;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->d:Lgsm$b;

    .line 252
    return-void
.end method

.method public setFaceBeautyEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->c:Lgse;

    invoke-virtual {v0, p1}, Lgse;->a(Z)V

    .line 79
    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->g:Z

    .line 84
    return-void
.end method

.method public setFitRatio(F)V
    .locals 0
    .param p1, "fitRatio"    # F

    .prologue
    .line 310
    iput p1, p0, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->l:F

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/common/CameraGLView;->requestLayout()V

    .line 312
    return-void
.end method
