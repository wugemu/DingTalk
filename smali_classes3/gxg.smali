.class public Lgxg;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RecyclingBitmapDrawable.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 35
    iput v0, p0, Lgxg;->a:I

    .line 36
    iput v0, p0, Lgxg;->b:I

    .line 42
    return-void
.end method

.method private declared-synchronized a()V
    .locals 0

    .prologue
    .line 102
    monitor-enter p0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "isCached"    # Z

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    iget v0, p0, Lgxg;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgxg;->a:I

    .line 81
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-direct {p0}, Lgxg;->a()V

    .line 86
    return-void

    .line 79
    :cond_0
    :try_start_1
    iget v0, p0, Lgxg;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgxg;->a:I

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
