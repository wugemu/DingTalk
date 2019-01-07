.class final Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;
.super Ljava/lang/Object;
.source "WXViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;,
        Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;
    }
.end annotation


# static fields
.field private static final EMPTY_INVOKER:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

.field private static final LAYOUT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LAYOUT_PROPERTY_HEIGHT:Ljava/lang/String; = "height"

.field private static final LAYOUT_PROPERTY_MARGIN_BOTTOM:Ljava/lang/String; = "margin-bottom"

.field private static final LAYOUT_PROPERTY_MARGIN_LEFT:Ljava/lang/String; = "margin-left"

.field private static final LAYOUT_PROPERTY_MARGIN_RIGHT:Ljava/lang/String; = "margin-right"

.field private static final LAYOUT_PROPERTY_MARGIN_TOP:Ljava/lang/String; = "margin-top"

.field private static final LAYOUT_PROPERTY_PADDING_BOTTOM:Ljava/lang/String; = "padding-bottom"

.field private static final LAYOUT_PROPERTY_PADDING_LEFT:Ljava/lang/String; = "padding-left"

.field private static final LAYOUT_PROPERTY_PADDING_RIGHT:Ljava/lang/String; = "padding-right"

.field private static final LAYOUT_PROPERTY_PADDING_TOP:Ljava/lang/String; = "padding-top"

.field private static final LAYOUT_PROPERTY_WIDTH:Ljava/lang/String; = "width"

.field private static final PERSPECTIVE:Ljava/lang/String; = "perspective"

.field private static final TRANSFORM_ORIGIN:Ljava/lang/String; = "transformOrigin"

.field private static final sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

.field private static final sTransformPropertyUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;-><init>()V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    .line 62
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

    invoke-direct {v0, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->EMPTY_INVOKER:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

    .line 80
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "margin-left"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "margin-right"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "margin-top"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "margin-bottom"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "padding-left"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "padding-right"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "padding-top"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "padding-bottom"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->LAYOUT_PROPERTIES:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sUIHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    sput-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "opacity"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$OpacityUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.translate"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.translateX"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.translateY"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$TranslateYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.scale"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.scaleX"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.scaleY"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ScaleYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotate"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotateZ"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotateX"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "transform.rotateY"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$RotateYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "background-color"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BackgroundUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "color"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ColorUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "scroll.contentOffset"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "scroll.contentOffsetX"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetXUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "scroll.contentOffsetY"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$ContentOffsetYUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "border-top-left-radius"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopLeftUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "border-top-right-radius"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusTopRightUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "border-bottom-left-radius"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomLeftUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "border-bottom-right-radius"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusBottomRightUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    const-string/jumbo v1, "border-radius"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;

    invoke-direct {v2, v3}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$BorderRadiusUpdater;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    return-void
.end method

.method static synthetic access$2100(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->findScrollTarget(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(DLaoa$b;)D
    .locals 2
    .param p0, "x0"    # D
    .param p2, "x1"    # Laoa$b;

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->getRealSize(DLaoa$b;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2300(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static clearCallbacks()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method private static findScrollTarget(Lcom/taobao/weex/ui/component/WXComponent;)Landroid/view/View;
    .locals 2
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 848
    instance-of v1, p0, Lcom/taobao/weex/ui/component/WXScroller;

    if-nez v1, :cond_0

    .line 849
    const-string/jumbo v1, "scroll offset only support on Scroller Component"

    invoke-static {v1}, Lanz;->b(Ljava/lang/String;)V

    .line 850
    const/4 v1, 0x0

    .line 853
    :goto_0
    return-object v1

    :cond_0
    move-object v0, p0

    .line 852
    check-cast v0, Lcom/taobao/weex/ui/component/WXScroller;

    .line 853
    .local v0, "scroller":Lcom/taobao/weex/ui/component/WXScroller;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXScroller;->getInnerView()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_0
.end method

.method static findUpdater(Ljava/lang/String;)Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;
    .locals 3
    .param p0, "prop"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 121
    sget-object v1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sTransformPropertyUpdaterMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;

    .line 122
    .local v0, "updater":Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;
    if-eqz v0, :cond_0

    .line 130
    .end local v0    # "updater":Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;
    :goto_0
    return-object v0

    .line 125
    .restart local v0    # "updater":Lcom/alibaba/android/bindingx/plugin/weex/IWXViewUpdater;
    :cond_0
    sget-object v1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->LAYOUT_PROPERTIES:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    sget-object v1, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    invoke-virtual {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;->setPropertyName(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sLayoutUpdater:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$LayoutUpdater;

    goto :goto_0

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown property ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanz;->b(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->EMPTY_INVOKER:Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService$NOpUpdater;

    goto :goto_0
.end method

.method private static getRealSize(DLaoa$b;)D
    .locals 2
    .param p0, "size"    # D
    .param p2, "translator"    # Laoa$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 843
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, v0}, Laoa$b;->webToNative(D[Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 147
    sget-object v0, Lcom/alibaba/android/bindingx/plugin/weex/WXViewUpdateService;->sUIHandler:Landroid/os/Handler;

    new-instance v1, Laob;

    invoke-direct {v1, p0}, Laob;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method
