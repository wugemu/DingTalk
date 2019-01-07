.class final Ldme$1;
.super Ljava/lang/Object;
.source "BitmapConverter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldme$a;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ldme;


# direct methods
.method constructor <init>(Ldme;Ljava/util/List;Ldme$a;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Ldme;

    .prologue
    .line 74
    iput-object p1, p0, Ldme$1;->d:Ldme;

    iput-object p2, p0, Ldme$1;->a:Ljava/util/List;

    iput-object p3, p0, Ldme$1;->b:Ldme$a;

    iput-object p4, p0, Ldme$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "imageInputStreamList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/image/ImageInputStream;>;"
    iget-object v7, p0, Ldme$1;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1086
    .local v4, "mediaId":Ljava/lang/String;
    const-string/jumbo v7, "IMAGE"

    invoke-static {v7}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1087
    invoke-static {v4}, Ldmm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1088
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1089
    invoke-interface {v7, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->getImageCache(Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;

    move-result-object v2

    .line 82
    .local v2, "currentStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "currentStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :cond_1
    move-object v2, v8

    .line 1091
    goto :goto_1

    .line 86
    .end local v4    # "mediaId":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 87
    iget-object v7, p0, Ldme$1;->b:Ldme$a;

    if-eqz v7, :cond_3

    iget-object v7, p0, Ldme$1;->d:Ldme;

    .line 2028
    iget-boolean v7, v7, Ldme;->c:Z

    .line 87
    if-nez v7, :cond_3

    .line 88
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Ldme$1$1;

    invoke-direct {v8, p0}, Ldme$1$1;-><init>(Ldme$1;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 129
    :cond_3
    :goto_2
    return-void

    .line 97
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/doraemon/image/ImageInputStream;

    .line 98
    .local v6, "stream":Lcom/alibaba/doraemon/image/ImageInputStream;
    const/4 v0, 0x0

    .line 100
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    iget-object v8, p0, Ldme$1;->d:Ldme;

    .line 3028
    iget-object v8, v8, Ldme;->b:Lhaw;

    .line 100
    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lhaw;->a(Lcom/alibaba/doraemon/image/ImageInputStream;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 113
    invoke-static {v6}, Ldhw;->a(Ljava/io/Closeable;)V

    .line 116
    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 117
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_5

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    :catch_0
    move-exception v5

    .line 102
    .local v5, "oom":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 103
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Ldme$1$2;

    invoke-direct {v9, p0}, Ldme$1$2;-><init>(Ldme$1;)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-static {v6}, Ldhw;->a(Ljava/io/Closeable;)V

    goto :goto_4

    .end local v5    # "oom":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v7

    invoke-static {v6}, Ldhw;->a(Ljava/io/Closeable;)V

    throw v7

    .line 121
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "stream":Lcom/alibaba/doraemon/image/ImageInputStream;
    :cond_6
    iget-object v7, p0, Ldme$1;->b:Ldme$a;

    if-eqz v7, :cond_3

    iget-object v7, p0, Ldme$1;->d:Ldme;

    .line 4028
    iget-boolean v7, v7, Ldme;->c:Z

    .line 121
    if-nez v7, :cond_3

    .line 122
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Ldme$1$3;

    invoke-direct {v8, p0, v1}, Ldme$1$3;-><init>(Ldme$1;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
