.class public Lcom/taobao/weex/ui/component/WXImage;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXImage.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXImage$Measurable;,
        Lcom/taobao/weex/ui/component/WXImage$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# static fields
.field private static BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERRORDESC:Ljava/lang/String; = "errorDesc"

.field public static final SUCCEED:Ljava/lang/String; = "success"

.field private static final WRITE_EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x2


# instance fields
.field private mAutoRecycle:Z

.field private mBlurRadius:I

.field private mSrc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/taobao/weex/ui/component/WXImage$1;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXImage$1;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/component/WXImage;->BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXImage;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXImage;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXImage;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->monitorImgSize(Landroid/widget/ImageView;)V

    return-void
.end method

.method private getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 4
    .param p1, "resizeMode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 164
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 181
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .local v1, "scaleType":Landroid/widget/ImageView$ScaleType;
    :goto_0
    return-object v1

    .line 168
    .end local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    :goto_2
    move-object v1, v0

    .line 181
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .restart local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    goto :goto_0

    .line 168
    .end local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :sswitch_0
    const-string/jumbo v3, "cover"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "contain"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "stretch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 170
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 171
    goto :goto_2

    .line 173
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 174
    goto :goto_2

    .line 176
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    .line 168
    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_2
        0x5a753b7 -> :sswitch_0
        0x38b724d4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private monitorImgSize(Landroid/widget/ImageView;)V
    .locals 8
    .param p1, "imageView"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 445
    if-nez p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 449
    .local v1, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 453
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    .local v0, "img":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    .line 459
    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_0

    .line 460
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-wide v4, v3, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    goto :goto_0
.end method

.method private parseBlurRadius(Ljava/lang/String;)I
    .locals 4
    .param p1, "rawRadius"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v2

    .line 247
    :cond_1
    new-instance v1, Lcom/taobao/weex/utils/SingleFunctionParser;

    sget-object v3, Lcom/taobao/weex/ui/component/WXImage;->BLUR_RADIUS_MAPPER:Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;

    invoke-direct {v1, p1, v3}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    .line 250
    .local v1, "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Integer;>;"
    :try_start_0
    const-string/jumbo v3, "blur"

    invoke-virtual {v1, v3}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 252
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setBlurRadius(Ljava/lang/String;I)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "blurRadius"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mBlurRadius:I

    if-eq p2, v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "image"

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    .local v0, "parsedUri":Landroid/net/Uri;
    const-string/jumbo v1, "local"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-direct {p0, v0, p2}, Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V

    .line 241
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private setLocalSrc(Landroid/net/Uri;)V
    .locals 3
    .param p1, "rewrited"    # Landroid/net/Uri;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/taobao/weex/utils/ImgURIUtil;->getDrawableFromLoaclSrc(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    .local v1, "localDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setRemoteSrc(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "rewrited"    # Landroid/net/Uri;
    .param p2, "blurRadius"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    new-instance v1, Lcom/taobao/weex/common/WXImageStrategy;

    invoke-direct {v1}, Lcom/taobao/weex/common/WXImageStrategy;-><init>()V

    .line 294
    .local v1, "imageStrategy":Lcom/taobao/weex/common/WXImageStrategy;
    iput-boolean v4, v1, Lcom/taobao/weex/common/WXImageStrategy;->isClipping:Z

    .line 296
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXAttr;->getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;

    move-result-object v0

    .line 297
    .local v0, "imageSharpen":Lcom/taobao/weex/common/WXImageSharpen;
    sget-object v6, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    if-ne v0, v6, :cond_3

    :goto_0
    iput-boolean v4, v1, Lcom/taobao/weex/common/WXImageStrategy;->isSharpen:Z

    .line 299
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lcom/taobao/weex/common/WXImageStrategy;->blurRadius:I

    .line 300
    iput p2, p0, Lcom/taobao/weex/ui/component/WXImage;->mBlurRadius:I

    .line 302
    new-instance v4, Lcom/taobao/weex/ui/component/WXImage$2;

    invoke-direct {v4, p0}, Lcom/taobao/weex/ui/component/WXImage$2;-><init>(Lcom/taobao/weex/ui/component/WXImage;)V

    invoke-virtual {v1, v4}, Lcom/taobao/weex/common/WXImageStrategy;->setImageListener(Lcom/taobao/weex/common/WXImageStrategy$ImageListener;)V

    .line 326
    const/4 v3, 0x0

    .line 327
    .local v3, "placeholder":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "placeholder"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "placeholder"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "placeholder":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 332
    .restart local v3    # "placeholder":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "image"

    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/common/WXImageStrategy;->placeHolder:Ljava/lang/String;

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/common/WXImageStrategy;->instanceId:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v2

    .line 338
    .local v2, "imgLoaderAdapter":Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    if-eqz v2, :cond_2

    .line 339
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 340
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXAttr;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v6

    .line 339
    invoke-interface {v2, v5, v4, v6, v1}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 342
    :cond_2
    return-void

    .end local v2    # "imgLoaderAdapter":Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .end local v3    # "placeholder":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 297
    goto :goto_0

    .line 329
    .restart local v3    # "placeholder":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "placeHolder"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string/jumbo v5, "placeHolder"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "placeholder":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "placeholder":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateBorderRadius()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v6, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/WXImageView;

    .line 359
    .local v4, "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    .line 361
    .local v1, "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    if-eqz v1, :cond_1

    .line 362
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentWidth(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v6

    invoke-static {p0}, Lcom/taobao/weex/utils/WXDomUtils;->getContentHeight(Lcom/taobao/weex/ui/component/WXComponent;)F

    move-result v7

    invoke-direct {v0, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 363
    .local v0, "borderBox":Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderInnerRadius(Landroid/graphics/RectF;)[F

    move-result-object v2

    .line 367
    .end local v0    # "borderBox":Landroid/graphics/RectF;
    .local v2, "borderRadius":[F
    :goto_0
    invoke-virtual {v4, v2}, Lcom/taobao/weex/ui/view/WXImageView;->setBorderRadius([F)V

    .line 369
    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/WXImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Lcom/taobao/weex/utils/ImageDrawable;

    if-eqz v6, :cond_0

    .line 370
    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/WXImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/utils/ImageDrawable;

    .line 371
    .local v3, "imageDrawable":Lcom/taobao/weex/utils/ImageDrawable;
    invoke-virtual {v3}, Lcom/taobao/weex/utils/ImageDrawable;->getCornerRadii()[F

    move-result-object v5

    .line 372
    .local v5, "previousRadius":[F
    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v6

    if-nez v6, :cond_0

    .line 373
    invoke-virtual {v3, v2}, Lcom/taobao/weex/utils/ImageDrawable;->setCornerRadii([F)V

    .line 377
    .end local v1    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .end local v2    # "borderRadius":[F
    .end local v3    # "imageDrawable":Lcom/taobao/weex/utils/ImageDrawable;
    .end local v4    # "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    .end local v5    # "previousRadius":[F
    :cond_0
    return-void

    .line 365
    .restart local v1    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .restart local v4    # "imageView":Lcom/taobao/weex/ui/view/WXImageView;
    :cond_1
    const/16 v6, 0x8

    new-array v2, v6, [F

    fill-array-data v2, :array_0

    .restart local v2    # "borderRadius":[F
    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public autoRecoverImage()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method public autoReleaseImage()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 283
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXImageView;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 471
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 472
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    new-instance v0, Lcom/taobao/weex/ui/view/WXImageView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXImageView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "view":Lcom/taobao/weex/ui/view/WXImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 109
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXImageView;->setCropToPadding(Z)V

    .line 111
    :cond_0
    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/view/WXImageView;->holdComponent(Lcom/taobao/weex/ui/component/WXImage;)V

    .line 112
    return-object v0
.end method

.method protected onFinishLayout()V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    .line 347
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXImage;->updateBorderRadius()V

    .line 348
    return-void
.end method

.method public recycled()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    .line 264
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0, v2, v2}, Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lcom/taobao/weex/common/WXImageStrategy;)V

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "getImgLoaderAdapter() == null"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    const-string/jumbo v0, "Error getImgLoaderAdapter() == null"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 152
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXImage;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->getImageSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method

.method public save(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 5
    .param p1, "saveStatuCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Ldp;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Ldp;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    if-eqz p1, :cond_1

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v1, "errorDesc"

    const-string/jumbo v2, "Permission denied: android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 442
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    if-nez v1, :cond_3

    .line 403
    if-eqz p1, :cond_1

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v1, "errorDesc"

    const-string/jumbo v2, "Image component not initialized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    :cond_4
    if-eqz p1, :cond_1

    .line 414
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string/jumbo v1, "errorDesc"

    const-string/jumbo v2, "Image does not have the correct src"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXImage;->mHost:Landroid/view/View;

    const v2, -0x70708

    new-instance v3, Lcom/taobao/weex/ui/component/WXImage$3;

    invoke-direct {v3, p0, p1}, Lcom/taobao/weex/ui/component/WXImage$3;-><init>(Lcom/taobao/weex/ui/component/WXImage;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-static {v1, v4, v2, v3}, Lcom/taobao/weex/utils/WXViewToImageUtil;->generateImage(Landroid/view/View;IILcom/taobao/weex/utils/WXViewToImageUtil$OnImageSavedCallback;)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 117
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .end local p2    # "param":Ljava/lang/Object;
    :cond_1
    :goto_1
    :pswitch_0
    return v4

    .line 117
    .restart local p2    # "param":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v6, "resizeMode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "resize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "src"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "imageQuality"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "autoBitmapRecycle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "filter"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-static {p2, v7}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "resizeMode":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXImage;->setResizeMode(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    .end local v2    # "resizeMode":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v7}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "resize":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXImage;->setResize(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v1    # "resize":Ljava/lang/String;
    :pswitch_3
    invoke-static {p2, v7}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "src":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXImage;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    .end local v3    # "src":Ljava/lang/String;
    :pswitch_4
    iget-boolean v5, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lcom/taobao/weex/ui/component/WXImage;->mAutoRecycle:Z

    goto/16 :goto_1

    .line 136
    :pswitch_5
    const/4 v0, 0x0

    .line 137
    .local v0, "blurRadius":I
    if-eqz p2, :cond_2

    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 138
    check-cast p2, Ljava/lang/String;

    .end local p2    # "param":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/component/WXImage;->parseBlurRadius(Ljava/lang/String;)I

    move-result v0

    .line 140
    :cond_2
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/taobao/weex/ui/component/WXImage;->setBlurRadius(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 117
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4ca1830b -> :sswitch_4
        -0x4bf73488 -> :sswitch_5
        -0x37b2634c -> :sswitch_1
        0x1bde4 -> :sswitch_2
        0x4a798324 -> :sswitch_3
        0x7a2cd077 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setResize(Ljava/lang/String;)V
    .locals 2
    .param p1, "resize"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "resize"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 187
    return-void
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "resizeMode"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "resizeMode"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXImage;->getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 203
    if-nez p1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 208
    .local v2, "image":Landroid/widget/ImageView;
    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 213
    :cond_1
    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 215
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_2
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXImage;->mSrc:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    .line 222
    .local v3, "instance":Lcom/taobao/weex/WXSDKInstance;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "image"

    invoke-virtual {v3, v5, v6}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 224
    .local v4, "rewrited":Landroid/net/Uri;
    const-string/jumbo v5, "local"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 225
    invoke-direct {p0, v4}, Lcom/taobao/weex/ui/component/WXImage;->setLocalSrc(Landroid/net/Uri;)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXImage;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/dom/WXStyle;->getBlur()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "blurStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/taobao/weex/ui/component/WXImage;->parseBlurRadius(Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, "blur":I
    invoke-direct {p0, v4, v0}, Lcom/taobao/weex/ui/component/WXImage;->setRemoteSrc(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 353
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXImage;->updateBorderRadius()V

    .line 354
    return-void
.end method
