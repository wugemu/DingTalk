.class final Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$1;
.super Lfq;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfq",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;


# direct methods
.method constructor <init>(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;
    .param p2, "x0"    # I

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$1;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    invoke-direct {p0, p2}, Lfq;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 2156
    const-class v0, Lgxg;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2159
    check-cast p3, Lgxg;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lgxg;->a(Z)V

    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    invoke-static {}, Lgxh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2166
    iget-object v0, p0, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache$1;->a:Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;

    invoke-static {v0}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 148
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 1177
    invoke-static {p2}, Lcom/alibaba/dt/ar/core/dt/ar/core/android/image/ImageCache;->a(Landroid/graphics/drawable/BitmapDrawable;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 1178
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
