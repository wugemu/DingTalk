.class final Ladg$1;
.super Lfq;
.source "ImageMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ladg;-><init>()V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ladg;


# direct methods
.method constructor <init>(Ladg;I)V
    .locals 0
    .param p1, "this$0"    # Ladg;
    .param p2, "x0"    # I

    .prologue
    .line 40
    iput-object p1, p0, Ladg$1;->a:Ladg;

    invoke-direct {p0, p2}, Lfq;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    .line 1050
    if-eqz p3, :cond_0

    iget-object v0, p0, Ladg$1;->a:Ladg;

    .line 2012
    iget-object v0, v0, Ladg;->a:Ljava/util/HashMap;

    .line 1050
    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Ladg$1;->a:Ladg;

    .line 3012
    iget-object v1, v0, Ladg;->a:Ljava/util/HashMap;

    .line 1051
    monitor-enter v1

    .line 1052
    :try_start_0
    iget-object v0, p0, Ladg$1;->a:Ladg;

    .line 4012
    iget-object v0, v0, Ladg;->a:Ljava/util/HashMap;

    .line 1052
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 40
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1042
    if-eqz p2, :cond_0

    .line 1043
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    :goto_0
    return v0

    .line 1046
    :cond_0
    const/4 v0, 0x0

    .line 40
    goto :goto_0
.end method
