.class public Lcom/taobao/weex/devtools/trace/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sVDomMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    sput-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXComponent;

    const-string/jumbo v2, "component"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXText;

    const-string/jumbo v2, "text"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXVContainer;

    const-string/jumbo v2, "container"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXDiv;

    const-string/jumbo v2, "div"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/view/WXEditText;

    const-string/jumbo v2, "textarea"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXA;

    const-string/jumbo v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXInput;

    const-string/jumbo v2, "input"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXLoading;

    const-string/jumbo v2, "loading"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXScroller;

    const-string/jumbo v2, "scroller"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXSwitch;

    const-string/jumbo v2, "switch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXSlider;

    const-string/jumbo v2, "slider"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXVideo;

    const-string/jumbo v2, "video"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXImage;

    const-string/jumbo v2, "image"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXHeader;

    const-string/jumbo v2, "header"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/WXEmbed;

    const-string/jumbo v2, "embed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/list/WXListComponent;

    const-string/jumbo v2, "list"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/list/HorizontalListComponent;

    const-string/jumbo v2, "hlist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    const-class v1, Lcom/taobao/weex/ui/component/list/WXCell;

    const-string/jumbo v2, "cell"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/devtools/trace/ViewUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "dp"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static findSuitableVal(DI)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "step"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 120
    cmpg-double v1, p0, v2

    if-lez v1, :cond_0

    if-gtz p2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-wide v2

    .line 123
    :cond_1
    double-to-int v0, p0

    .line 124
    .local v0, "temp":I
    :goto_1
    rem-int v1, v0, p2

    if-eqz v1, :cond_2

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_2
    int-to-double v2, v0

    goto :goto_0
.end method

.method public static generateViewId()I
    .locals 3

    .prologue
    .line 132
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lcom/taobao/weex/devtools/trace/ViewUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 134
    add-int/lit8 v0, v1, 0x1

    .line 135
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 136
    :cond_1
    sget-object v2, Lcom/taobao/weex/devtools/trace/ViewUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    return v1
.end method

.method public static getComponentName(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .locals 3
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/taobao/weex/devtools/trace/ViewUtils;->sVDomMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "component"

    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getNestedRootComponent(Lcom/taobao/weex/ui/component/WXEmbed;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 6
    .param p0, "embed"    # Lcom/taobao/weex/ui/component/WXEmbed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 105
    .local v1, "embedClazz":Ljava/lang/Class;
    const-string/jumbo v5, "mNestedInstance"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 106
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/WXSDKInstance;

    .line 108
    .local v3, "nestedInstance":Lcom/taobao/weex/WXSDKInstance;
    if-nez v3, :cond_0

    .line 116
    .end local v1    # "embedClazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "nestedInstance":Lcom/taobao/weex/WXSDKInstance;
    :goto_0
    return-object v4

    .line 111
    .restart local v1    # "embedClazz":Ljava/lang/Class;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "nestedInstance":Lcom/taobao/weex/WXSDKInstance;
    :cond_0
    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 113
    .end local v1    # "embedClazz":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "nestedInstance":Lcom/taobao/weex/WXSDKInstance;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static isVerticalScroller(Lcom/taobao/weex/ui/component/WXScroller;)Z
    .locals 2
    .param p0, "scroller"    # Lcom/taobao/weex/ui/component/WXScroller;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vertical"

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXScroller;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXAttr;->getScrollDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 97
    goto :goto_0
.end method

.method public static px2dp(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "px"    # F

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 88
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    div-float v1, p1, v1

    return v1
.end method

.method public static sp2px(Landroid/content/Context;I)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "sp"    # I

    .prologue
    .line 83
    const/4 v0, 0x2

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method
