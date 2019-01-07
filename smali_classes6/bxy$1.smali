.class final Lbxy$1;
.super Ljava/lang/Object;
.source "LiveReplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxy;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxy;


# direct methods
.method constructor <init>(Lbxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lbxy;

    .prologue
    .line 164
    iput-object p1, p0, Lbxy$1;->b:Lbxy;

    iput-object p2, p0, Lbxy$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 167
    iget-object v7, p0, Lbxy$1;->b:Lbxy;

    iget-object v8, p0, Lbxy$1;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lbxy;->a(Lbxy;Ljava/lang/String;)Lbxy$a;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v7, p0, Lbxy$1;->b:Lbxy;

    invoke-static {v7}, Lbxy;->a(Lbxy;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v7

    iget-object v8, p0, Lbxy$1;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->getImageCache(Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;

    move-result-object v3

    .line 173
    .local v3, "imageInputStream":Lcom/alibaba/doraemon/image/ImageInputStream;
    if-eqz v3, :cond_0

    .line 176
    invoke-static {v3, v9, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, "isMatch":Z
    iget-object v7, p0, Lbxy$1;->b:Lbxy;

    invoke-static {v7}, Lbxy;->b(Lbxy;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 182
    .local v5, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    if-eqz v5, :cond_2

    .line 185
    iget-object v8, v5, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->largeCoverUrl:Ljava/lang/String;

    iget-object v9, p0, Lbxy$1;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 186
    const/4 v4, 0x1

    goto :goto_1

    .line 189
    .end local v5    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    :cond_3
    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 193
    .local v6, "ratio":F
    const/4 v2, 0x0

    .line 194
    .local v2, "blurImage":Lbxy$a;
    const v7, 0x3fe28f5c    # 1.77f

    sub-float v7, v6, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 196
    new-instance v2, Lbxy$a;

    .end local v2    # "blurImage":Lbxy$a;
    iget-object v7, p0, Lbxy$1;->b:Lbxy;

    invoke-direct {v2, v7, v10}, Lbxy$a;-><init>(Lbxy;B)V

    .line 1344
    .restart local v2    # "blurImage":Lbxy$a;
    iput-boolean v10, v2, Lbxy$a;->b:Z

    .line 206
    :cond_4
    :goto_2
    if-eqz v2, :cond_0

    .line 209
    iget-object v7, p0, Lbxy$1;->b:Lbxy;

    invoke-static {v7}, Lbxy;->c(Lbxy;)Landroid/util/LruCache;

    move-result-object v7

    iget-object v8, p0, Lbxy$1;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4344
    iget-boolean v7, v2, Lbxy$a;->b:Z

    .line 210
    if-eqz v7, :cond_0

    .line 211
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v8, Lbxy$1$1;

    invoke-direct {v8, p0}, Lbxy$1$1;-><init>(Lbxy$1;)V

    invoke-virtual {v7, v8}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 199
    :cond_5
    invoke-static {v0}, Lbye;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .local v1, "blurBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    .line 201
    new-instance v2, Lbxy$a;

    .end local v2    # "blurImage":Lbxy$a;
    iget-object v7, p0, Lbxy$1;->b:Lbxy;

    invoke-direct {v2, v7, v10}, Lbxy$a;-><init>(Lbxy;B)V

    .line 2344
    .restart local v2    # "blurImage":Lbxy$a;
    iput-object v1, v2, Lbxy$a;->a:Landroid/graphics/Bitmap;

    .line 203
    const/4 v7, 0x1

    .line 3344
    iput-boolean v7, v2, Lbxy$a;->b:Z

    goto :goto_2
.end method
