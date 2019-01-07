.class public Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;
.super Ljava/lang/Object;
.source "ImageAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
.implements Ljps;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private transferToMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 57
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public loadImage(Ljava/lang/String;Ljps$b;Ljps$a;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageStrategy"    # Ljps$b;
    .param p3, "imageListener"    # Ljps$a;

    .prologue
    .line 50
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "wxImageQuality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "strategy"    # Lcom/taobao/weex/common/WXImageStrategy;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 23
    if-eqz p1, :cond_0

    const-string/jumbo v1, "localfile://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 26
    :cond_0
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 27
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;->transferToMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcru;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 28
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-interface {v0, p2, p1, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method public setImageUrl(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 36
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 37
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    if-eqz p2, :cond_0

    const-string/jumbo v1, "localfile://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/16 v1, 0xc

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 40
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/weex/adapter/ImageAdapter;->transferToMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcru;->a(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 41
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-interface {v0, p1, p2, v3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
