.class public Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
.super Landroid/view/TextureView;
.source "DdTextureVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lemj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;
    }
.end annotation


# instance fields
.field private A:Landroid/media/MediaPlayer$OnInfoListener;

.field private B:Landroid/media/MediaPlayer$OnErrorListener;

.field private C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private D:Landroid/view/TextureView$SurfaceTextureListener;

.field private E:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private final F:Landroid/media/MediaPlayer$OnInfoListener;

.field public a:Landroid/content/res/AssetFileDescriptor;

.field private final b:Leml;

.field private c:I

.field private d:I

.field private e:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

.field private f:Landroid/net/Uri;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/SurfaceTexture;

.field private i:Landroid/media/MediaPlayer;

.field private j:Lemh;

.field private k:Landroid/media/MediaPlayer$OnCompletionListener;

.field private l:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m:Landroid/media/MediaPlayer$OnErrorListener;

.field private n:Landroid/media/MediaPlayer$OnInfoListener;

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lemk;

.field private v:Landroid/app/AlertDialog;

.field private w:Landroid/view/Surface;

.field private x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private y:Landroid/media/MediaPlayer$OnPreparedListener;

.field private z:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput v3, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 83
    iput v3, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    .line 341
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$1;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 351
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$4;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->y:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 395
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$5;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->z:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 409
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$6;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->A:Landroid/media/MediaPlayer$OnInfoListener;

    .line 419
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$7;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    .line 524
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$9;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 573
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$10;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->D:Landroid/view/TextureView$SurfaceTextureListener;

    .line 742
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$11;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->E:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 809
    new-instance v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$2;-><init>(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->F:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1121
    sget-object v0, Leid$a;->DdTextureVideoView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1122
    if-eqz v1, :cond_0

    .line 1125
    new-array v0, v4, [I

    const v2, 0x7f010057

    aput v2, v0, v3

    .line 1126
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_1

    .line 1129
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1130
    invoke-static {}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->values()[Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    move-result-object v2

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    :cond_0
    :goto_0
    new-instance v0, Leml;

    invoke-direct {v0}, Leml;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->b:Leml;

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->b:Leml;

    invoke-virtual {v0, v3, v3}, Leml;->a(II)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->D:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1166
    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setFocusable(Z)V

    .line 1167
    invoke-virtual {p0, v4}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setFocusableInTouchMode(Z)V

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->requestFocus()Z

    .line 1169
    iput v3, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 1170
    iput v3, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->F:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 118
    return-void

    .line 1132
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 1135
    :cond_1
    sget-object v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->SCALE_TO_FIT:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->h:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Leml;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->b:Leml;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/util/Map;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p3, "seekInSeconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f:Landroid/net/Uri;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->g:Ljava/util/Map;

    .line 228
    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->p:I

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e()V

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->requestLayout()V

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->invalidate()V

    .line 232
    return-void
.end method

.method private a(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->w:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->w:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->w:Landroid/view/Surface;

    .line 291
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->w:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 294
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "clearTargetState"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/view/Surface;)V

    .line 612
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 613
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 614
    iput-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    .line 615
    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 616
    if-eqz p1, :cond_0

    .line 617
    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 620
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;II)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 55
    .line 4464
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->m:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 4465
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->m:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p1, p2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    :goto_0
    return v0

    .line 4468
    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Lemh;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    .line 4386
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->s:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->p:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->t:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    .line 4455
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-ne p1, v0, :cond_1

    .line 4456
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4457
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 4460
    :cond_1
    const/4 v0, 0x0

    .line 55
    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    .line 4472
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4473
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->v:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->v:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4475
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->v:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4477
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    const v3, 0x7f0921a8

    .line 4483
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4484
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x104000a

    new-instance v4, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$8;

    invoke-direct {v4, v1, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$8;-><init>(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer;)V

    .line 4485
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 4498
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4499
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4477
    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->v:Landroid/app/AlertDialog;

    .line 4478
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->v:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->q:I

    return p1
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    invoke-interface {v0, p0}, Lemh;->setMediaPlayer(Lemj;)V

    .line 337
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lemh;->setEnabled(Z)V

    .line 339
    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    invoke-interface {v0}, Lemh;->b()V

    .line 446
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    invoke-interface {v0}, Lemh;->a()V

    .line 452
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    .line 4390
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    if-eqz v0, :cond_0

    .line 4391
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lemh;->a(I)V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->g()V

    return-void
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->u:Lemk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->n:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e()V

    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    .line 4833
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;)Lemk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->u:Lemk;

    return-object v0
.end method

.method private setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->n:Landroid/media/MediaPlayer$OnInfoListener;

    .line 571
    return-void
.end method

.method private setScaleType(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 210
    const/16 v0, 0x10

    invoke-static {v0}, Lcms;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d()V

    .line 807
    return-void
.end method

.method public final a(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "seekInSeconds"    # I

    .prologue
    const/4 v0, 0x0

    .line 189
    .line 3175
    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 190
    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/net/Uri;Ljava/util/Map;I)V

    .line 191
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e()V

    .line 703
    return-void
.end method

.method public final c()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 773
    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->r:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->s:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->t:Z

    return v0
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/view/Surface;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 239
    iput-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    .line 240
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setKeepScreenOn(Z)V

    .line 241
    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 242
    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 244
    :cond_0
    return-void
.end method

.method public e()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 247
    .line 3309
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->h:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    move v0, v7

    .line 247
    :goto_0
    if-eqz v0, :cond_1

    .line 284
    :goto_1
    return-void

    :cond_0
    move v0, v8

    .line 3309
    goto :goto_0

    .line 3314
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3315
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3316
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    invoke-direct {p0, v8}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Z)V

    .line 255
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    .line 257
    iget v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o:I

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 262
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->y:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->x:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->z:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->A:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 267
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->C:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->q:I

    .line 4297
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_3

    .line 4298
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 4299
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 4300
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 4301
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 4298
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 271
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->e:Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setScaleType(Lcom/alibaba/android/rimet/video/view/DdTextureVideoView$ScaleType;)V

    .line 273
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->h:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/view/Surface;)V

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 280
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 281
    :catch_0
    move-exception v6

    .line 4320
    .local v6, "ex":Ljava/lang/Exception;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to open content:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4321
    iput v9, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 4322
    iput v9, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 4323
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->B:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v7, v8}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_1

    .line 260
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o:I

    goto/16 :goto_2

    .line 281
    :catch_1
    move-exception v6

    goto :goto_4

    .line 4304
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f:Landroid/net/Uri;

    iget-object v3, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->g:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3
.end method

.method public getAudioSessionId()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 796
    iget v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o:I

    if-nez v1, :cond_0

    .line 797
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 798
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o:I

    .line 799
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 801
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->o:I

    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 767
    iget v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->q:I

    .line 769
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 722
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPositionInSeconds()I
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 711
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 148
    const-class v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 154
    const-class v0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 632
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 639
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    if-eqz v2, :cond_8

    .line 640
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 641
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 642
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->pause()V

    .line 643
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->h()V

    .line 666
    :cond_1
    :goto_1
    return v1

    .line 632
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 645
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->start()V

    .line 646
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->g()V

    goto :goto_1

    .line 649
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 650
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->start()V

    .line 652
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->g()V

    goto :goto_1

    .line 655
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 656
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->pause()V

    .line 658
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->h()V

    goto :goto_1

    .line 662
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    invoke-interface {v1}, Lemh;->a()V

    .line 666
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 141
    iget-object v5, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->b:Leml;

    .line 2028
    iget v1, v5, Leml;->b:I

    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v2

    .line 2029
    iget v1, v5, Leml;->c:I

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 2030
    invoke-virtual {v5}, Leml;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2032
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 2033
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 2034
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 2035
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2037
    if-ne v6, v4, :cond_2

    if-ne v7, v4, :cond_2

    .line 2043
    iget v2, v5, Leml;->b:I

    mul-int/2addr v2, v1

    iget v4, v5, Leml;->c:I

    mul-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 2044
    iget v2, v5, Leml;->b:I

    mul-int/2addr v2, v1

    iget v3, v5, Leml;->c:I

    div-int/2addr v2, v3

    .line 2080
    :cond_0
    :goto_0
    iget-object v3, v5, Leml;->a:Leml$a;

    iput v2, v3, Leml$a;->a:I

    .line 2081
    iget-object v2, v5, Leml;->a:Leml$a;

    iput v1, v2, Leml$a;->b:I

    .line 2082
    iget-object v0, v5, Leml;->a:Leml$a;

    .line 2098
    .local v0, "dimens":Leml$a;
    iget v1, v0, Leml$a;->a:I

    .line 2102
    iget v2, v0, Leml$a;->b:I

    .line 142
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setMeasuredDimension(II)V

    .line 143
    return-void

    .line 2045
    .end local v0    # "dimens":Leml$a;
    :cond_1
    iget v2, v5, Leml;->b:I

    mul-int/2addr v2, v1

    iget v4, v5, Leml;->c:I

    mul-int/2addr v4, v3

    if-le v2, v4, :cond_7

    .line 2046
    iget v1, v5, Leml;->c:I

    mul-int/2addr v1, v3

    iget v2, v5, Leml;->b:I

    div-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    .line 2048
    :cond_2
    if-ne v6, v4, :cond_3

    .line 2051
    iget v2, v5, Leml;->c:I

    mul-int/2addr v2, v3

    iget v4, v5, Leml;->b:I

    div-int/2addr v2, v4

    .line 2052
    if-ne v7, v8, :cond_6

    if-le v2, v1, :cond_6

    move v2, v3

    .line 2054
    goto :goto_0

    .line 2056
    :cond_3
    if-ne v7, v4, :cond_4

    .line 2059
    iget v2, v5, Leml;->b:I

    mul-int/2addr v2, v1

    iget v4, v5, Leml;->c:I

    div-int/2addr v2, v4

    .line 2060
    if-ne v6, v8, :cond_0

    if-le v2, v3, :cond_0

    move v2, v3

    .line 2062
    goto :goto_0

    .line 2066
    :cond_4
    iget v4, v5, Leml;->b:I

    .line 2067
    iget v2, v5, Leml;->c:I

    .line 2068
    if-ne v7, v8, :cond_5

    if-le v2, v1, :cond_5

    .line 2071
    iget v2, v5, Leml;->b:I

    mul-int/2addr v2, v1

    iget v4, v5, Leml;->c:I

    div-int/2addr v2, v4

    .line 2073
    :goto_1
    if-ne v6, v8, :cond_0

    if-le v2, v3, :cond_0

    .line 2076
    iget v1, v5, Leml;->c:I

    mul-int/2addr v1, v3

    iget v2, v5, Leml;->b:I

    div-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    :cond_5
    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_6
    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v3

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    invoke-interface {v0}, Lemh;->a()V

    .line 627
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x4

    .line 683
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 686
    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setKeepScreenOn(Z)V

    .line 690
    :cond_0
    iput v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 691
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->u:Lemk;

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->u:Lemk;

    invoke-interface {v0}, Lemk;->f()V

    .line 694
    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "millis"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 733
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 734
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->p:I

    .line 738
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->E:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 740
    return-void

    .line 736
    :cond_0
    iput p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->p:I

    goto :goto_0
.end method

.method public setMediaController(Lemh;)V
    .locals 0
    .param p1, "controller"    # Lemh;

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->g()V

    .line 328
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->j:Lemh;

    .line 329
    invoke-direct {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->f()V

    .line 330
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 549
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->m:Landroid/media/MediaPlayer$OnErrorListener;

    .line 561
    return-void
.end method

.method public setOnPlayStateListener(Lemk;)V
    .locals 0
    .param p1, "onPlayStateListener"    # Lemk;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->u:Lemk;

    .line 842
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 539
    return-void
.end method

.method public setVideo(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 194
    iput-object p1, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/net/Uri;Ljava/util/Map;I)V

    .line 196
    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    .line 2175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a:Landroid/content/res/AssetFileDescriptor;

    .line 180
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->a(Landroid/net/Uri;I)V

    .line 181
    return-void
.end method

.method public start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 671
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->setKeepScreenOn(Z)V

    .line 673
    iget v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 675
    iput v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->c:I

    .line 678
    :cond_0
    iput v2, p0, Lcom/alibaba/android/rimet/video/view/DdTextureVideoView;->d:I

    .line 679
    return-void
.end method
