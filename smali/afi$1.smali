.class final Lafi$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafi;->a(Landroid/widget/ImageView;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lafi;


# direct methods
.method constructor <init>(Lafi;Ljava/lang/ref/WeakReference;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lafi;

    .prologue
    .line 59
    iput-object p1, p0, Lafi$1;->f:Lafi;

    iput-object p2, p0, Lafi$1;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lafi$1;->b:Ljava/lang/String;

    iput p4, p0, Lafi$1;->c:I

    iput p5, p0, Lafi$1;->d:I

    iput p6, p0, Lafi$1;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 62
    iget-object v5, p0, Lafi$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 63
    .local v4, "view":Landroid/widget/ImageView;
    if-nez v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v5, p0, Lafi$1;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lafi$1;->f:Lafi;

    invoke-static {v5}, Lafi;->a(Lafi;)Ladk;

    move-result-object v5

    invoke-interface {v5, v1}, Ladk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v5, Laxo$f;->base_adapter_id:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "tag":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 70
    iget-object v5, p0, Lafi$1;->f:Lafi;

    invoke-static {v5}, Lafi;->b(Lafi;)Ladg;

    move-result-object v5

    iget-object v6, p0, Lafi$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ladg;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v5, p0, Lafi$1;->b:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 73
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lafi$1$1;

    invoke-direct {v6, p0, v0}, Lafi$1$1;-><init>(Lafi$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 88
    :cond_2
    iget-object v5, p0, Lafi$1;->b:Ljava/lang/String;

    iget v6, p0, Lafi$1;->c:I

    iget v7, p0, Lafi$1;->d:I

    iget v8, p0, Lafi$1;->e:I

    .line 1029
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1030
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1033
    invoke-static {v5, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1034
    if-eqz v2, :cond_3

    .line 1035
    const/4 v5, 0x2

    invoke-static {v2, v6, v7, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 89
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v2, :cond_0

    .line 90
    iget-object v5, p0, Lafi$1;->f:Lafi;

    invoke-static {v5}, Lafi;->b(Lafi;)Ladg;

    move-result-object v5

    iget-object v6, p0, Lafi$1;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ladg;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v5, p0, Lafi$1;->b:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 93
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lafi$1$2;

    invoke-direct {v6, p0, v2}, Lafi$1$2;-><init>(Lafi$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
