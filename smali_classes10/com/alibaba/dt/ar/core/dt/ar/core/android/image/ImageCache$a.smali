.class public final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/File;

.field public d:Landroid/graphics/Bitmap$CompressFormat;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diskCacheDirectoryName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/16 v0, 0x1400

    iput v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->a:I

    .line 466
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->b:I

    .line 468
    invoke-static {}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->b()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->d:Landroid/graphics/Bitmap$CompressFormat;

    .line 469
    const/16 v0, 0x46

    iput v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->e:I

    .line 470
    iput-boolean v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->f:Z

    .line 471
    iput-boolean v1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->g:Z

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->h:Z

    .line 484
    invoke-static {p1, p2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$a;->c:Ljava/io/File;

    .line 485
    return-void
.end method
