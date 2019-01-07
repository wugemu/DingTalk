.class public Lcom/taobao/weex/ui/component/WXEmbed;
.super Lcom/taobao/weex/ui/component/WXDiv;
.source "WXEmbed.java"

# interfaces
.implements Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;
.implements Lcom/taobao/weex/ui/component/NestedContainer;


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;,
        Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;,
        Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;,
        Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;
    }
.end annotation


# static fields
.field private static ERROR_IMG_HEIGHT:I = 0x0

.field private static ERROR_IMG_WIDTH:I = 0x0

.field public static final ITEM_ID:Ljava/lang/String; = "itemId"

.field public static final PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final PRIORITY_LOW:Ljava/lang/String; = "low"

.field public static final PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final STRATEGY_HIGH:Ljava/lang/String; = "high"

.field public static final STRATEGY_NONE:Ljava/lang/String; = "none"

.field public static final STRATEGY_NORMAL:Ljava/lang/String; = "normal"


# instance fields
.field private hiddenTime:J

.field private mIsVisible:Z

.field private mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

.field private mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

.field private originUrl:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private strategy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2ee

    .line 63
    const/high16 v0, 0x43870000    # 270.0f

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    .line 64
    const/high16 v0, 0x43820000    # 260.0f

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 3
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    .line 70
    const-string/jumbo v1, "normal"

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "normal"

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 196
    new-instance v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    .line 198
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    .line 199
    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    .line 200
    instance-of v1, p1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "itemId"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "itemId":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;

    .end local p1    # "instance":Lcom/taobao/weex/WXSDKInstance;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, p0}, Lcom/taobao/weex/ui/component/WXEmbed$EmbedManager;->putEmbed(Ljava/lang/String;Lcom/taobao/weex/ui/component/WXEmbed;)V

    .line 206
    .end local v0    # "itemId":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "priority"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "normal"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "strategy"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 208
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
    .line 191
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/component/WXEmbed;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXEmbed;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_WIDTH:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/taobao/weex/ui/component/WXEmbed;->ERROR_IMG_HEIGHT:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXEmbed;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXEmbed;

    .prologue
    .line 48
    invoke-static {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getLevel(Lcom/taobao/weex/ui/component/WXEmbed;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXEmbed;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXEmbed;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    return-wide v0
.end method

.method private createInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKInstance;->createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 315
    .local v0, "sdkInstance":Lcom/taobao/weex/WXSDKInstance;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKInstance;->addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    .line 316
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 318
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 319
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->transformUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v1, p0, v4}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v3

    .line 340
    .end local v0    # "sdkInstance":Lcom/taobao/weex/WXSDKInstance;
    :goto_0
    return-object v0

    .line 327
    .restart local v0    # "sdkInstance":Lcom/taobao/weex/WXSDKInstance;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    .line 329
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_BUNDLE_CONTENTTYPE_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    .line 330
    invoke-virtual {v5}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "!!wx embed src url is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-interface {v1, p0, v3, v4}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    const-string/jumbo v1, "default"

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    goto :goto_0
.end method

.method private destoryNestInstance()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 497
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "WXEmbed destoryNestInstance priority "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string/jumbo v2, "index"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " embeds size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " strategy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 502
    :cond_2
    return-void

    .line 499
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    goto :goto_0
.end method

.method private doAutoEmbedMemoryStrategy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 381
    const-string/jumbo v1, "none"

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_0

    .line 383
    const-string/jumbo v1, "low"

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    .line 416
    :cond_0
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 423
    :cond_1
    return-void

    .line 386
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-nez v1, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    new-instance v2, Ljava/util/PriorityQueue;

    const/16 v3, 0x8

    new-instance v4, Lcom/taobao/weex/ui/component/WXEmbed$1;

    invoke-direct {v4, p0}, Lcom/taobao/weex/ui/component/WXEmbed$1;-><init>(Lcom/taobao/weex/ui/component/WXEmbed;)V

    invoke-direct {v2, v3, v4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v2, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->hiddenTime:J

    .line 401
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getMaxHiddenEmbedsNum()I

    move-result v1

    if-ltz v1, :cond_0

    .line 404
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getMaxHiddenEmbedsNum()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->hiddenEmbeds:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXEmbed;

    .line 406
    .local v0, "embed":Lcom/taobao/weex/ui/component/WXEmbed;
    iget-boolean v1, v0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-nez v1, :cond_5

    .line 409
    if-eqz v0, :cond_5

    .line 410
    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    goto :goto_0
.end method

.method private static final getLevel(Lcom/taobao/weex/ui/component/WXEmbed;)I
    .locals 4
    .param p0, "embed"    # Lcom/taobao/weex/ui/component/WXEmbed;

    .prologue
    .line 300
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    .line 301
    .local v1, "priority":Ljava/lang/String;
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 302
    .local v2, "strategy":Ljava/lang/String;
    const/4 v0, 0x5

    .line 303
    .local v0, "level":I
    const-string/jumbo v3, "high"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 304
    const-string/jumbo v3, "low"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    const/4 v0, 0x0

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const-string/jumbo v3, "high"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const/16 v0, 0xa

    goto :goto_0
.end method


# virtual methods
.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 506
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    .line 508
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->destroy()V

    .line 370
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->destoryNestInstance()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 372
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKInstance;->removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    .line 375
    :cond_0
    return-void
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected loadContent()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->createInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 291
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onPreCreate(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;->onCreated(Lcom/taobao/weex/ui/component/NestedContainer;Lcom/taobao/weex/WXSDKInstance;)V

    .line 297
    :cond_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityDestroy()V

    .line 480
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityDestroy()V

    .line 483
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityPause()V

    .line 464
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityPause()V

    .line 467
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityResume()V

    .line 456
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityResume()V

    .line 459
    :cond_0
    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityStart()V

    .line 448
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStart()V

    .line 451
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXDiv;->onActivityStop()V

    .line 472
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStop()V

    .line 475
    :cond_0
    return-void
.end method

.method public onAppear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 430
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 431
    const-string/jumbo v1, "viewappear"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 433
    .end local v0    # "comp":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    return-void
.end method

.method public onDisappear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 440
    .local v0, "comp":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v0, :cond_0

    .line 441
    const-string/jumbo v1, "viewdisappear"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 443
    .end local v0    # "comp":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    .line 249
    :cond_0
    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    .line 514
    :cond_0
    return-void
.end method

.method public renderNewURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    .line 242
    return-void
.end method

.method public setOnNestEventListener(Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mListener:Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;

    iput-object p1, v0, Lcom/taobao/weex/ui/component/WXEmbed$EmbedRenderListener;->mEventListener:Lcom/taobao/weex/ui/component/NestedContainer$OnNestedInstanceEventListener;

    .line 213
    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "originUrl"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "priority"
    .end annotation

    .prologue
    .line 280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->priority:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 222
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 235
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXDiv;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 222
    :sswitch_0
    const-string/jumbo v4, "src"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "priority"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "src":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 226
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXEmbed;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v1    # "src":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v5}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "priority":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXEmbed;->setPriority(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4577865c -> :sswitch_1
        0x1bde4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .prologue
    .line 263
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->originUrl:Ljava/lang/String;

    .line 264
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    .line 272
    :cond_1
    return-void
.end method

.method public setStrategy(Ljava/lang/String;)V
    .locals 0
    .param p1, "strategy"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->strategy:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 2
    .param p1, "visibility"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXDiv;->setVisibility(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v1, "visible"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 347
    .local v0, "visible":Z
    iget-boolean v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    if-eq v1, v0, :cond_2

    .line 349
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->src:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v1, :cond_3

    .line 351
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->loadContent()V

    .line 357
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 358
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 362
    :cond_1
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mIsVisible:Z

    .line 363
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed;->doAutoEmbedMemoryStrategy()V

    .line 365
    :cond_2
    return-void

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXEmbed;->mNestedInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    goto :goto_0
.end method
