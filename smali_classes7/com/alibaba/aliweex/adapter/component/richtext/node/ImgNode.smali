.class Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;
.super Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;
.source "ImgNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$ImgNodeCreator;
    }
.end annotation


# static fields
.field public static final NODE_TYPE:Ljava/lang/String; = "image"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "componentRef"    # Ljava/lang/String;

    .prologue
    .line 241
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/RichTextNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode$1;

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createImgSpan(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;
    .locals 9
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string/jumbo v8, "width"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v7

    .line 280
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v8

    .line 279
    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v7

    float-to-int v6, v7

    .line 281
    .local v6, "width":I
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string/jumbo v8, "height"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v7

    .line 282
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v8

    .line 281
    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v7

    float-to-int v1, v7

    .line 283
    .local v1, "height":I
    new-instance v2, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;

    invoke-direct {v2, v6, v1}, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;-><init>(II)V

    .line 285
    .local v2, "imageSpan":Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string/jumbo v8, "src"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string/jumbo v8, "image"

    invoke-virtual {p1, v7, v8}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 287
    .local v4, "rewrited":Landroid/net/Uri;
    const-string/jumbo v7, "local"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    iget-object v7, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/taobao/weex/utils/ImgURIUtil;->getDrawableFromLoaclSrc(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 289
    .local v3, "localDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 296
    .end local v3    # "localDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 291
    :cond_0
    new-instance v0, Lcom/taobao/weex/adapter/DrawableStrategy;

    invoke-direct {v0}, Lcom/taobao/weex/adapter/DrawableStrategy;-><init>()V

    .line 292
    .local v0, "drawableStrategy":Lcom/taobao/weex/adapter/DrawableStrategy;
    iput v6, v0, Lcom/taobao/weex/adapter/DrawableStrategy;->width:I

    .line 293
    iput v1, v0, Lcom/taobao/weex/adapter/DrawableStrategy;->height:I

    .line 294
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v2, v0}, Lcom/taobao/weex/adapter/IDrawableLoader;->setDrawable(Ljava/lang/String;Lcom/taobao/weex/adapter/IDrawableLoader$DrawableTarget;Lcom/taobao/weex/adapter/DrawableStrategy;)V

    goto :goto_0
.end method


# virtual methods
.method protected isInternalNode()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string/jumbo v0, " "

    return-object v0
.end method

.method protected updateSpans(Landroid/text/SpannableStringBuilder;I)V
    .locals 8
    .param p1, "spannableStringBuilder"    # Landroid/text/SpannableStringBuilder;
    .param p2, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 256
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 257
    .local v0, "instance":Lcom/taobao/weex/WXSDKInstance;
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string/jumbo v4, "width"

    .line 258
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->style:Ljava/util/Map;

    const-string/jumbo v4, "height"

    .line 259
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string/jumbo v4, "src"

    .line 260
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 262
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 263
    .local v2, "spans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->createImgSpan(Lcom/taobao/weex/WXSDKInstance;)Lcom/alibaba/aliweex/adapter/component/richtext/span/ImgSpan;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v3, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string/jumbo v4, "pseudoRef"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    new-instance v3, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;

    iget-object v4, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->mInstanceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->mComponentRef:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->attr:Ljava/util/Map;

    const-string/jumbo v7, "pseudoRef"

    .line 267
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/aliweex/adapter/component/richtext/span/ItemClickSpan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "span":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 272
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-static {p2}, Lcom/alibaba/aliweex/adapter/component/richtext/node/ImgNode;->createSpanFlag(I)I

    move-result v6

    .line 271
    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 275
    .end local v1    # "span":Ljava/lang/Object;
    .end local v2    # "spans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
