.class public Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;
.super Ljava/lang/Object;
.source "FaceDecoratePresenter.java"


# instance fields
.field public volatile a:Z

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->a:Z

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 117
    const-string/jumbo v6, "CACHE"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/cache/Cache;

    .line 118
    .local v1, "cache":Lcom/alibaba/doraemon/cache/Cache;
    invoke-static {p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/alibaba/doraemon/cache/Cache;->read(Ljava/lang/String;)Lcom/alibaba/doraemon/cache/CacheEntity;

    move-result-object v2

    .line 119
    .local v2, "entity":Lcom/alibaba/doraemon/cache/CacheEntity;
    if-eqz v2, :cond_0

    .line 121
    :try_start_0
    invoke-interface {v2}, Lcom/alibaba/doraemon/cache/CacheEntity;->getCacheData()Ljava/io/InputStream;

    move-result-object v4

    .line 122
    .local v4, "inputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 123
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 126
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v6

    .line 129
    :catch_0
    move-exception v3

    .line 130
    .local v3, "error":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    const-string/jumbo v6, "facebox"

    const-string/jumbo v8, "FaceDecoratePresenter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "decodeStream err "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "error":Ljava/lang/Throwable;
    :cond_0
    move-object v6, v7

    .line 134
    goto :goto_0

    .line 129
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 30
    .line 1139
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 1140
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    .line 1141
    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    const-string/jumbo v2, "FaceDecoratePresenter"

    .line 1142
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v1

    new-instance v2, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$3;-><init>(Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;Lcma;Ljava/lang/String;)V

    .line 1143
    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1185
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "listener":Lcma;, "Lcma<Landroid/graphics/drawable/Drawable;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "Url is empty"

    invoke-interface {p1, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string/jumbo v0, "facebox"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter$2;-><init>(Ljava/lang/String;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Lcom/alibaba/dingtalk/facebox/camera/presenter/FaceDecoratePresenter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "FACE_DECORATE:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
