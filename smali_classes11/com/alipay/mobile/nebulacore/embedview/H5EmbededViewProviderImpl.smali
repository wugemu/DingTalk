.class public Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;
.super Ljava/lang/Object;
.source "H5EmbededViewProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5EmbededViewProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5EmbededViewProviderImpl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmbedViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/view/IH5EmbedView;",
            ">;"
        }
    .end annotation
.end field

.field private mH5Page:Liop;


# direct methods
.method public constructor <init>(Landroid/content/Context;Liop;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h5Page"    # Liop;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mH5Page:Liop;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    .line 33
    return-void
.end method

.method private getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "type":Ljava/lang/String;
    const-string/jumbo v2, "TINY_COMPONENT"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    move-object v0, p1

    .line 260
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 258
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private getEmbedViewWrapper(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-static {}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getInstance()Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewConfigManager;->getConfig(Ljava/lang/String;)Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;

    move-result-object v3

    .line 188
    .local v3, "config":Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;
    if-nez v3, :cond_0

    move-object v4, v6

    .line 211
    :goto_0
    return-object v4

    .line 191
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getBundleName()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "bundleName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/config/H5EmbedViewConfig;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "clazzName":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 194
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 195
    const-string/jumbo v7, "H5EmbededViewProviderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getEmbedViewWrapper reflect clazz == null "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 196
    goto :goto_0

    .line 199
    :cond_1
    :try_start_0
    const-class v7, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v4, v6

    .line 200
    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 203
    .local v4, "embedView":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-nez v4, :cond_3

    .line 204
    const-string/jumbo v7, "H5EmbededViewProviderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getEmbedViewWrapper reflect embedView == null "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    .line 205
    goto :goto_0

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mH5Page:Liop;

    invoke-interface {v4, v7, v8}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onCreate(Landroid/content/Context;Liop;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v4    # "embedView":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :catch_0
    move-exception v5

    .line 210
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "H5EmbededViewProviderImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "getEmbedViewWrapper reflect catch exception "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v6

    .line 211
    goto :goto_0
.end method


# virtual methods
.method public getEmbedView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl getEmbedView, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz p5, :cond_3

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 41
    const-string/jumbo v1, "type"

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 42
    .local v8, "type":Ljava/lang/String;
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    const-string/jumbo v2, "H5EmbededViewProviderImpl getEmbedView init"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v8}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getEmbedViewWrapper(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    move-result-object v0

    .line 46
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_3

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v9

    .line 49
    .local v9, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mH5Page:Liop;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mH5Page:Liop;

    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 51
    .local v7, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "elementid"

    invoke-virtual {v7, v1, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mH5Page:Liop;

    invoke-interface {v1}, Liop;->getBridge()Linx;

    move-result-object v1

    const-string/jumbo v2, "nbcomponent.canrender"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v7, v3}, Linx;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lioa;)V

    .line 67
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v9

    .line 57
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v8    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    const-string/jumbo v2, "H5EmbededViewProviderImpl getEmbedView reuse"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 59
    .restart local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    const-string/jumbo v1, "map"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 61
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v9

    goto :goto_0

    :cond_2
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 63
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v9

    goto :goto_0

    .line 67
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v6    # "id":Ljava/lang/String;
    .end local v8    # "type":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getEmbedViewWrapperById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    return-object v0
.end method

.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 230
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl getSnapshot, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 235
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 237
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v6    # "id":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl onEmbedViewAttachedToWebView, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 78
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v6    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl onEmbedViewDestory, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 107
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 109
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v6    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl onEmbedViewDetachedFromWebView, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 92
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 94
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v6    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "name"    # [Ljava/lang/String;
    .param p7, "value"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl onEmbedViewParamChanged, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 122
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 124
    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 127
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v8    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "H5EmbededViewProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "H5EmbededViewProviderImpl onEmbedViewVisibilityChanged, viewId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-direct {p0, p3, p5}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->getElementId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 137
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 139
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 142
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v7    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onWebViewDestory()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    const-string/jumbo v2, "H5EmbededViewProviderImpl"

    const-string/jumbo v3, "H5EmbededViewProviderImpl onWebViewDestory"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "item":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 178
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onWebViewDestory()V

    goto :goto_0

    .line 184
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onWebViewPause()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 160
    const-string/jumbo v2, "H5EmbededViewProviderImpl"

    const-string/jumbo v3, "H5EmbededViewProviderImpl onWebViewPause"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, "item":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 164
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onWebViewPause()V

    goto :goto_0

    .line 170
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onWebViewResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    const-string/jumbo v2, "H5EmbededViewProviderImpl"

    const-string/jumbo v3, "H5EmbededViewProviderImpl onWebViewResume"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "item":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 150
    .local v0, "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->onWebViewResume()V

    goto :goto_0

    .line 156
    .end local v0    # "embedViewWrapper":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    .end local v1    # "item":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public releaseView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mContext:Landroid/content/Context;

    .line 220
    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mH5Page:Liop;

    .line 221
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbededViewProviderImpl;->mEmbedViews:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/IH5EmbedView;

    .line 247
    .local v0, "embedView":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/IH5EmbedView;->triggerPreSnapshot()V

    goto :goto_0

    .line 250
    .end local v0    # "embedView":Lcom/alipay/mobile/nebula/view/IH5EmbedView;
    :cond_0
    return-void
.end method
