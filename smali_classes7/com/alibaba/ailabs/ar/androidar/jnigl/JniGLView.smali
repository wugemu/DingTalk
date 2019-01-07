.class public Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;
.super Landroid/opengl/GLSurfaceView;
.source "JniGLView.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Low;

.field protected b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

.field private d:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView$1;-><init>(Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->d:Landroid/view/SurfaceHolder$Callback;

    .line 38
    iput-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->a:Low;

    .line 39
    iput-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 43
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->a:Low;

    if-eqz v0, :cond_2

    .line 69
    iget-object v1, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->a:Low;

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "closeEngine : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v1, Low;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1154
    monitor-enter v1

    .line 1155
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Low;->d:Z

    .line 1156
    iget-wide v2, v1, Low;->c:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, v1, Low;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    iget-wide v2, v1, Low;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dt/ar/core/ArJniWrapper;->onNativeCloseEngine(J)I

    .line 1158
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Low;->c:J

    .line 1160
    iget-object v0, v1, Low;->m:Loy;

    .line 2084
    iget-object v2, v0, Loy;->g:[I

    if-eqz v2, :cond_1

    .line 2085
    const/4 v2, 0x1

    iget-object v3, v0, Loy;->g:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2086
    const/4 v2, 0x0

    iput-object v2, v0, Loy;->g:[I

    .line 1161
    :cond_1
    iget-object v0, v1, Low;->m:Loy;

    invoke-virtual {v0}, Loy;->a()V

    .line 1162
    iget-object v0, v1, Low;->n:Lox;

    invoke-virtual {v0}, Lox;->a()V

    .line 1165
    monitor-exit v1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/alibaba/dt/ar/core/ArJniWrapper;)V
    .locals 7
    .param p1, "jniWrapper"    # Lcom/alibaba/dt/ar/core/ArJniWrapper;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 46
    new-instance v0, Low;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Low;-><init>(Landroid/content/Context;Lcom/alibaba/dt/ar/core/ArJniWrapper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->a:Low;

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    .line 48
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->setEGLContextClientVersion(I)V

    .line 51
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->setEGLConfigChooser(IIIIII)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->a:Low;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 54
    invoke-virtual {p0, v6}, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->setRenderMode(I)V

    .line 57
    return-void
.end method

.method public getJniWrapper()Lcom/alibaba/dt/ar/core/ArJniWrapper;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->b:Lcom/alibaba/dt/ar/core/ArJniWrapper;

    return-object v0
.end method

.method public getRenderer()Low;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/ar/androidar/jnigl/JniGLView;->a:Low;

    return-object v0
.end method
