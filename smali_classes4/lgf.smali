.class public final Llgf;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field volatile b:Z

.field c:J

.field protected final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Bitmap;

.field public final f:Lpl/droidsonroids/gif/GifInfoHandle;

.field final g:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Llgb;",
            ">;"
        }
    .end annotation
.end field

.field final h:Z

.field final i:Llgj;

.field j:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final k:Landroid/graphics/Rect;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/graphics/PorterDuffColorFilter;

.field private n:Landroid/graphics/PorterDuff$Mode;

.field private final o:Llgo;

.field private final p:Landroid/graphics/Rect;

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {p1, p2}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Llgf;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Llgf;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 209
    return-void
.end method

.method private constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Llgf;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Llgf;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Llgf;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    .line 96
    invoke-static {p1, p2}, Llgh;->a(Landroid/content/res/Resources;I)F

    move-result v0

    .line 97
    .local v0, "densityScale":F
    iget-object v1, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Llgf;->r:I

    .line 98
    iget-object v1, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Llgf;->q:I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llgf;-><init>(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 148
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Llgf;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Llgf;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Llgf;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Llgf;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lpl/droidsonroids/gif/GifInfoHandle;Llgf;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 5
    .param p1, "gifInfoHandle"    # Lpl/droidsonroids/gif/GifInfoHandle;
    .param p2, "oldDrawable"    # Llgf;
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p4, "isRenderingTriggeredOnDraw"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    iput-boolean v0, p0, Llgf;->b:Z

    .line 59
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Llgf;->c:J

    .line 61
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Llgf;->k:Landroid/graphics/Rect;

    .line 65
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Llgf;->d:Landroid/graphics/Paint;

    .line 71
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Llgf;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 78
    new-instance v2, Llgo;

    invoke-direct {v2, p0}, Llgo;-><init>(Llgf;)V

    iput-object v2, p0, Llgf;->o:Llgo;

    .line 231
    iput-boolean v0, p0, Llgf;->h:Z

    .line 232
    invoke-static {}, Llgg;->a()Llgg;

    move-result-object v2

    iput-object v2, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 233
    iput-object p1, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 248
    iget-object v2, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v2

    iget-object v3, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Llgf;->e:Landroid/graphics/Bitmap;

    .line 252
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 253
    iget-object v2, p0, Llgf;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->s()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 255
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v2

    iget-object v3, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v3}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Llgf;->p:Landroid/graphics/Rect;

    .line 256
    new-instance v0, Llgj;

    invoke-direct {v0, p0}, Llgj;-><init>(Llgf;)V

    iput-object v0, p0, Llgf;->i:Llgj;

    .line 257
    iget-object v0, p0, Llgf;->o:Llgo;

    invoke-virtual {v0}, Llgo;->a()V

    .line 258
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v0

    iput v0, p0, Llgf;->q:I

    .line 259
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v0

    iput v0, p0, Llgf;->r:I

    .line 260
    return-void

    :cond_1
    move v0, v1

    .line 253
    goto :goto_0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 845
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 846
    :cond_0
    const/4 v1, 0x0

    .line 850
    :goto_0
    return-object v1

    .line 849
    :cond_1
    invoke-virtual {p0}, Llgf;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 850
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 381
    iget-object v0, p0, Llgf;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Llgf;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 384
    :cond_0
    iget-object v0, p0, Llgf;->i:Llgj;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Llgj;->removeMessages(I)V

    .line 385
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 270
    .line 1275
    const/4 v0, 0x0

    iput-boolean v0, p0, Llgf;->b:Z

    .line 1276
    iget-object v0, p0, Llgf;->i:Llgj;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Llgj;->removeMessages(I)V

    .line 1277
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a()V

    .line 271
    iget-object v0, p0, Llgf;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "frameIndex"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 543
    if-gez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Frame index is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    iget-object v0, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Llgf$3;

    invoke-direct {v1, p0, p0, p1}, Llgf$3;-><init>(Llgf;Llgf;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 553
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "lastFrameRemainder"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 338
    iget-boolean v0, p0, Llgf;->h:Z

    if-eqz v0, :cond_0

    .line 339
    iput-wide v2, p0, Llgf;->c:J

    .line 340
    iget-object v0, p0, Llgf;->i:Llgj;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Llgj;->sendEmptyMessageAtTime(IJ)Z

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-direct {p0}, Llgf;->c()V

    .line 343
    iget-object v0, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Llgf;->o:Llgo;

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Llgf;->j:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public final a(Llgb;)V
    .locals 1
    .param p1, "listener"    # Llgb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 813
    iget-object v0, p0, Llgf;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 814
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 353
    iget-object v0, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Llgf$1;

    invoke-direct {v1, p0, p0}, Llgf$1;-><init>(Llgf;Llgf;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public final canPause()Z
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 633
    .line 1434
    iget-object v1, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->r()I

    move-result v1

    .line 633
    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canSeekForward()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 643
    .line 2434
    iget-object v1, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->r()I

    move-result v1

    .line 643
    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/high16 v10, -0x8000000000000000L

    .line 756
    iget-object v1, p0, Llgf;->m:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 757
    iget-object v1, p0, Llgf;->d:Landroid/graphics/Paint;

    iget-object v4, p0, Llgf;->m:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 758
    const/4 v0, 0x1

    .line 763
    .local v0, "clearColorFilter":Z
    :goto_0
    iget-object v1, p0, Llgf;->e:Landroid/graphics/Bitmap;

    iget-object v4, p0, Llgf;->p:Landroid/graphics/Rect;

    iget-object v5, p0, Llgf;->k:Landroid/graphics/Rect;

    iget-object v6, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 767
    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Llgf;->d:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 771
    :cond_0
    iget-boolean v1, p0, Llgf;->h:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Llgf;->b:Z

    if-eqz v1, :cond_1

    iget-wide v4, p0, Llgf;->c:J

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    .line 772
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Llgf;->c:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 773
    .local v2, "renderDelay":J
    iput-wide v10, p0, Llgf;->c:J

    .line 774
    iget-object v1, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v4, p0, Llgf;->o:Llgo;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 775
    iget-object v1, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v4, p0, Llgf;->o:Llgo;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v2, v3, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Llgf;->j:Ljava/util/concurrent/ScheduledFuture;

    .line 777
    .end local v2    # "renderDelay":J
    :cond_1
    return-void

    .line 760
    .end local v0    # "clearColorFilter":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clearColorFilter":Z
    goto :goto_0
.end method

.method public final getAlpha()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public final getAudioSessionId()I
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public final getBufferPercentage()I
    .locals 1

    .prologue
    .line 613
    const/16 v0, 0x64

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->h()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->g()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Llgf;->r:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Llgf;->q:I

    return v0
.end method

.method public final getOpacity()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 315
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    .line 316
    :cond_0
    const/4 v0, -0x2

    .line 318
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final isPlaying()Z
    .locals 1

    .prologue
    .line 602
    iget-boolean v0, p0, Llgf;->b:Z

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Llgf;->b:Z

    return v0
.end method

.method public final isStateful()Z
    .locals 1

    .prologue
    .line 878
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llgf;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llgf;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 742
    iget-object v0, p0, Llgf;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 746
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 869
    iget-object v0, p0, Llgf;->l:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llgf;->n:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Llgf;->l:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Llgf;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Llgf;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Llgf;->m:Landroid/graphics/PorterDuffColorFilter;

    .line 871
    const/4 v0, 0x1

    .line 873
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 482
    invoke-virtual {p0}, Llgf;->stop()V

    .line 483
    return-void
.end method

.method public final seekTo(I)V
    .locals 2
    .param p1, "position"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x7fffffffL
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 523
    if-gez p1, :cond_0

    .line 524
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Position is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    iget-object v0, p0, Llgf;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Llgf$2;

    invoke-direct {v1, p0, p0, p1}, Llgf$2;-><init>(Llgf;Llgf;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method public final setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .prologue
    .line 299
    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 300
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 304
    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 305
    return-void
.end method

.method public final setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 803
    invoke-virtual {p0}, Llgf;->invalidateSelf()V

    .line 804
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 794
    iget-object v0, p0, Llgf;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 795
    invoke-virtual {p0}, Llgf;->invalidateSelf()V

    .line 796
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 855
    iput-object p1, p0, Llgf;->l:Landroid/content/res/ColorStateList;

    .line 856
    iget-object v0, p0, Llgf;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Llgf;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Llgf;->m:Landroid/graphics/PorterDuffColorFilter;

    .line 857
    invoke-virtual {p0}, Llgf;->invalidateSelf()V

    .line 858
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 862
    iput-object p1, p0, Llgf;->n:Landroid/graphics/PorterDuff$Mode;

    .line 863
    iget-object v0, p0, Llgf;->l:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Llgf;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Llgf;->m:Landroid/graphics/PorterDuffColorFilter;

    .line 864
    invoke-virtual {p0}, Llgf;->invalidateSelf()V

    .line 865
    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 897
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 898
    .local v0, "changed":Z
    iget-boolean v1, p0, Llgf;->h:Z

    if-nez v1, :cond_1

    .line 899
    if-eqz p1, :cond_2

    .line 900
    if-eqz p2, :cond_0

    .line 901
    invoke-virtual {p0}, Llgf;->b()V

    .line 903
    :cond_0
    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {p0}, Llgf;->start()V

    .line 910
    :cond_1
    :goto_0
    return v0

    .line 906
    :cond_2
    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {p0}, Llgf;->stop()V

    goto :goto_0
.end method

.method public final start()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iget-boolean v2, p0, Llgf;->b:Z

    if-eqz v2, :cond_0

    .line 329
    monitor-exit p0

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Llgf;->b:Z

    .line 332
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    iget-object v2, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->b()J

    move-result-wide v0

    .line 334
    .local v0, "lastFrameRemainder":J
    invoke-virtual {p0, v0, v1}, Llgf;->a(J)V

    goto :goto_0

    .line 332
    .end local v0    # "lastFrameRemainder":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-boolean v0, p0, Llgf;->b:Z

    if-nez v0, :cond_0

    .line 371
    monitor-exit p0

    .line 378
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Llgf;->b:Z

    .line 374
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-direct {p0}, Llgf;->c()V

    .line 377
    iget-object v0, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->d()V

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 426
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "GIF: size: %dx%d, frames: %d, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 427
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->p()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->r()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Llgf;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 426
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
