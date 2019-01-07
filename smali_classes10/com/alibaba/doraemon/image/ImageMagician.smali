.class public interface abstract Lcom/alibaba/doraemon/image/ImageMagician;
.super Ljava/lang/Object;
.source "ImageMagician.java"


# static fields
.field public static final IMAGE_ARTIFACT:Ljava/lang/String; = "IMAGE"


# virtual methods
.method public abstract cancelPreDownloadImage(Landroid/view/View;Ljava/lang/String;Z)V
.end method

.method public abstract cancelPreDownloadImage(Ljava/lang/String;Z)V
.end method

.method public abstract clearDiskCache()Z
.end method

.method public abstract clearMemoryCache(F)V
.end method

.method public abstract clearMemoryCache(J)V
.end method

.method public abstract cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract cloneBitmpaInCache(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/view/View;I)V
.end method

.method public abstract cloneBitmpaInCache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cloneBitmpaInCache(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract dumpImageMemory()Lcom/alibaba/doraemon/image/ImageMemoryStatus;
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BILandroid/view/View;Ljava/lang/String;I)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BILjava/lang/String;)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BLandroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BLandroid/view/View;Ljava/lang/String;I)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
.end method

.method public abstract fillImage2Cache(Landroid/graphics/Bitmap;[BLjava/lang/String;I)V
.end method

.method public abstract fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fillImage2Cache(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fillImage2Cache(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract fillImage2Cache(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract fillImage2CacheInMainThread(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
.end method

.method public abstract fillImage2CacheInMainThread(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
.end method

.method public abstract fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
.end method

.method public abstract fillImage2CacheInMainThread(Landroid/view/View;Landroid/graphics/Bitmap;[BLjava/lang/String;)V
.end method

.method public abstract fillImage2MemoryCache(Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
.end method

.method public abstract fillImage2MemoryCache(Landroid/view/View;Landroid/graphics/Bitmap;[BILjava/lang/String;I)V
.end method

.method public abstract getDiskCacheSize()J
.end method

.method public abstract getImageBitmapMemorySize()J
.end method

.method public abstract getImageCache(Landroid/view/View;Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;
.end method

.method public abstract getImageCache(Ljava/lang/String;)Lcom/alibaba/doraemon/image/ImageInputStream;
.end method

.method public abstract getImageDescription(Landroid/view/View;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageDescription(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageMaxMemSize()J
.end method

.method public abstract getImageMemorySize()J
.end method

.method public abstract hasImageCache(Landroid/view/View;Ljava/lang/String;)Z
.end method

.method public abstract hasImageCache(Ljava/lang/String;)Z
.end method

.method public abstract preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preDownloadImage(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preDownloadImage(Landroid/view/View;Ljava/lang/String;ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preDownloadImage(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preDownloadImage(Ljava/lang/String;ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V
.end method

.method public abstract removeImageCache(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract removeImageCache(Ljava/lang/String;)V
.end method

.method public abstract removeImageCacheAsync(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract removeImageCacheAsync(Ljava/lang/String;)V
.end method

.method public abstract setDecoder(Lcom/alibaba/doraemon/image/ImageDecoder;)V
.end method

.method public abstract setFastScrollEnabled(Landroid/widget/AbsListView;Z)V
.end method

.method public abstract setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V
.end method

.method public abstract setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
.end method

.method public abstract setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "IZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Landroid/widget/AbsListView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocalImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZ)V
.end method

.method public abstract setLocalImageDrawalbe(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZ)V
.end method

.method public abstract setUrlParser(Landroid/content/Context;Lcom/alibaba/doraemon/image/UrlParser;)V
.end method

.method public abstract unBindViews(Landroid/app/Activity;)V
.end method

.method public abstract unregisterEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V
.end method
