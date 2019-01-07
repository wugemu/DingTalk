.class public Lcom/taobao/weex/dom/transition/WXTransition;
.super Ljava/lang/Object;
.source "WXTransition.java"


# static fields
.field private static final LAYOUT_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRANSFORM_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSITION_DELAY:Ljava/lang/String; = "transitionDelay"

.field public static final TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field public static final TRANSITION_PROPERTY:Ljava/lang/String; = "transitionProperty"

.field public static final TRANSITION_TIMING_FUNCTION:Ljava/lang/String; = "transitionTimingFunction"


# instance fields
.field private animationRunnable:Ljava/lang/Runnable;

.field private delay:J

.field private duration:J

.field private handler:Landroid/os/Handler;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private layoutPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layoutValueAnimator:Landroid/animation/ValueAnimator;

.field private volatile lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transformAnimationRunnable:Ljava/lang/Runnable;

.field private transformAnimator:Landroid/animation/ObjectAnimator;

.field private transformPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transitionEndEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "\\||,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "height"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginTop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginBottom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginLeft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "marginRight"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "left"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "right"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "top"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "bottom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "paddingLeft"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "paddingRight"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "paddingTop"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "paddingBottom"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "opacity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "backgroundColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "transform"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    .line 141
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    .line 142
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->doTransitionAnimation(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/dom/transition/WXTransition;)J
    .locals 2
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->doPendingTransformAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->onTransitionAnimationEnd()V

    return-void
.end method

.method public static asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V
    .locals 4
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # F

    .prologue
    .line 565
    if-nez p0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "ref":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "instanceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 574
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXBridgeManager()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    new-instance v3, Lcom/taobao/weex/dom/transition/WXTransition$7;

    invoke-direct {v3, p1, v0, v1, p2}, Lcom/taobao/weex/dom/transition/WXTransition$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 8
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 517
    :goto_1
    if-nez v0, :cond_1

    .line 518
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 520
    :cond_1
    return-object v0

    .line 443
    :sswitch_0
    const-string/jumbo v5, "width"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "height"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "marginTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "marginLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "marginRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "marginBottom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "left"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "right"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v5, "bottom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v5, "top"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v5, "paddingTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v5, "paddingBottom"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v5, "paddingLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v5, "paddingRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    .line 445
    :pswitch_0
    const-string/jumbo v1, "width"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v6

    aput v6, v5, v2

    .line 446
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 445
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 448
    goto/16 :goto_1

    .line 450
    :pswitch_1
    const-string/jumbo v1, "height"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v6

    aput v6, v5, v2

    .line 451
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 450
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 453
    goto/16 :goto_1

    .line 455
    :pswitch_2
    const-string/jumbo v1, "marginTop"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 456
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 455
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 458
    goto/16 :goto_1

    .line 460
    :pswitch_3
    const-string/jumbo v1, "marginLeft"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 461
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 460
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 463
    goto/16 :goto_1

    .line 465
    :pswitch_4
    const-string/jumbo v1, "marginRight"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 466
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 465
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 468
    goto/16 :goto_1

    .line 470
    :pswitch_5
    const-string/jumbo v1, "marginBottom"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 471
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 470
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 473
    goto/16 :goto_1

    .line 475
    :pswitch_6
    const-string/jumbo v1, "left"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 476
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 475
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 478
    goto/16 :goto_1

    .line 480
    :pswitch_7
    const-string/jumbo v1, "right"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 481
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 480
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 483
    goto/16 :goto_1

    .line 485
    :pswitch_8
    const-string/jumbo v1, "bottom"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 486
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 485
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 488
    goto/16 :goto_1

    .line 490
    :pswitch_9
    const-string/jumbo v1, "top"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 491
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 490
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 493
    goto/16 :goto_1

    .line 495
    :pswitch_a
    const-string/jumbo v1, "paddingTop"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 496
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 495
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 498
    goto/16 :goto_1

    .line 500
    :pswitch_b
    const-string/jumbo v1, "paddingBottom"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 501
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 500
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 503
    goto/16 :goto_1

    .line 505
    :pswitch_c
    const-string/jumbo v1, "paddingLeft"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 506
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 505
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 508
    goto/16 :goto_1

    .line 510
    :pswitch_d
    const-string/jumbo v1, "paddingRight"

    new-array v5, v4, [F

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v6

    aput v6, v5, v2

    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 511
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;I)F

    move-result v2

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v2

    aput v2, v5, v3

    .line 510
    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto/16 :goto_1

    .line 443
    .line 518
    nop

    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_c
        -0x527265d5 -> :sswitch_8
        -0x48c76ed9 -> :sswitch_1
        -0x3e464339 -> :sswitch_2
        -0x113c6e87 -> :sswitch_5
        0x1c155 -> :sswitch_9
        0x32a007 -> :sswitch_6
        0x55f4784 -> :sswitch_a
        0x677c21c -> :sswitch_7
        0x6be2dc6 -> :sswitch_0
        0xc0fb19c -> :sswitch_b
        0x2a8c788b -> :sswitch_d
        0x3a1ea90e -> :sswitch_4
        0x757a12d5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 10
    .param p0, "interpolator"    # Ljava/lang/String;

    .prologue
    const v6, 0x3ed70a3d    # 0.42f

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 692
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 693
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 707
    :try_start_0
    new-instance v2, Lcom/taobao/weex/utils/SingleFunctionParser;

    new-instance v3, Lcom/taobao/weex/dom/transition/WXTransition$8;

    invoke-direct {v3}, Lcom/taobao/weex/dom/transition/WXTransition$8;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    .line 715
    .local v2, "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    const-string/jumbo v3, "cubic-bezier"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 716
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 717
    const/4 v3, 0x0

    .line 718
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 717
    invoke-static {v4, v5, v6, v3}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 727
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :goto_1
    return-object v3

    .line 693
    :sswitch_0
    const-string/jumbo v4, "ease-in"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v4, "ease-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v4, "ease-in-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v4, "ease"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v4, "linear"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_0

    .line 695
    :pswitch_0
    invoke-static {v6, v5, v7, v7}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 697
    :pswitch_1
    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v5, v5, v3, v7}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 699
    :pswitch_2
    const v3, 0x3f147ae1    # 0.58f

    invoke-static {v6, v5, v3, v7}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 701
    :pswitch_3
    invoke-static {v8, v9, v8, v7}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 703
    :pswitch_4
    invoke-static {v5, v5, v7, v7}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 722
    const-string/jumbo v3, "WXTransition"

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    invoke-static {v8, v9, v8, v7}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    goto :goto_1

    .line 693
    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_0
        -0x41b970db -> :sswitch_4
        -0x2f0a1f11 -> :sswitch_1
        -0x15938a9b -> :sswitch_2
        0x2f63ee -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .param p1, "holders"    # [Landroid/animation/PropertyValuesHolder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 525
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition$5;

    invoke-direct {v1, p0}, Lcom/taobao/weex/dom/transition/WXTransition$5;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition$6;

    invoke-direct {v1, p0}, Lcom/taobao/weex/dom/transition/WXTransition$6;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 559
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 560
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 561
    return-void
.end method

.method private doPendingTransformAnimation(I)V
    .locals 18
    .param p1, "token"    # I

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v12, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 327
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 329
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    if-nez v12, :cond_2

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v7

    .line 333
    .local v7, "taregtView":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    const/16 v12, 0x8

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v4, "holders":Ljava/util/List;, "Ljava/util/List<Landroid/animation/PropertyValuesHolder;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    const-string/jumbo v13, "transform"

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, "transform":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v12}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidth()I

    move-result v15

    invoke-static {v12, v9, v13, v14, v15}, Lcom/taobao/weex/ui/animation/TransformParser;->parseTransForm(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/Map;

    move-result-object v5

    .line 340
    .local v5, "properties":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    invoke-static {v5}, Lcom/taobao/weex/ui/animation/TransformParser;->toHolders(Ljava/util/Map;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 341
    .local v10, "transformHolders":[Landroid/animation/PropertyValuesHolder;
    array-length v13, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_3

    aget-object v3, v10, v12

    .line 342
    .local v3, "holder":Landroid/animation/PropertyValuesHolder;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 344
    .end local v3    # "holder":Landroid/animation/PropertyValuesHolder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v13

    .line 345
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    const-string/jumbo v14, "transform"

    invoke-interface {v12, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    .end local v10    # "transformHolders":[Landroid/animation/PropertyValuesHolder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 350
    .local v6, "property":Ljava/lang/String;
    sget-object v12, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v12, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 356
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 357
    .local v11, "value":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v14

    .line 358
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v12, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    const/4 v12, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_6
    :goto_3
    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 362
    :pswitch_0
    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    aput v16, v14, v15

    invoke-static {v12, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual {v7, v12, v14}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2

    .line 346
    .end local v6    # "property":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    .restart local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    .restart local v10    # "transformHolders":[Landroid/animation/PropertyValuesHolder;
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 359
    .end local v5    # "properties":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    .end local v10    # "transformHolders":[Landroid/animation/PropertyValuesHolder;
    .restart local v6    # "property":Ljava/lang/String;
    .restart local v11    # "value":Ljava/lang/Object;
    :catchall_1
    move-exception v12

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 360
    :sswitch_0
    const-string/jumbo v14, "opacity"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v12, 0x0

    goto :goto_3

    :sswitch_1
    const-string/jumbo v14, "backgroundColor"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    .line 367
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v12}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, "fromColor":I
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v8

    .line 369
    .local v8, "toColor":I
    invoke-static {v7}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 370
    invoke-static {v7}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v2

    .line 374
    :cond_7
    :goto_4
    new-instance v12, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v12}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v14, Landroid/animation/ArgbEvaluator;

    invoke-direct {v14}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Integer;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v14, v15}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 371
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    instance-of v12, v12, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_7

    .line 372
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    goto :goto_4

    .line 381
    .end local v2    # "fromColor":I
    .end local v6    # "property":Ljava/lang/String;
    .end local v8    # "toColor":I
    .end local v11    # "value":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    move/from16 v0, p1

    if-ne v0, v12, :cond_a

    .line 382
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 384
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v7, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 385
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_b

    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    invoke-virtual {v12, v14, v15}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 389
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz v12, :cond_c

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    new-instance v13, Lcom/taobao/weex/dom/transition/WXTransition$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/taobao/weex/dom/transition/WXTransition$4;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {v12, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b8807f5 -> :sswitch_0
        0x4cb7f6d5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doTransitionAnimation(I)V
    .locals 6
    .param p1, "token"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, "taregtView":Landroid/view/View;
    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 259
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "property":Ljava/lang/String;
    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v4

    .line 270
    :try_start_0
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 273
    .local v2, "targetValue":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v2    # "targetValue":Ljava/lang/Object;
    :cond_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 286
    .end local v0    # "property":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v3, :cond_5

    .line 287
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    :cond_5
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-nez v3, :cond_6

    iget-wide v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    long-to-float v3, v4

    const/high16 v4, 0x800000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 290
    new-instance v3, Lcom/taobao/weex/dom/transition/WXTransition$2;

    invoke-direct {v3, p0}, Lcom/taobao/weex/dom/transition/WXTransition$2;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    iput-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    .line 303
    :cond_6
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_7

    .line 304
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 306
    :cond_7
    new-instance v3, Lcom/taobao/weex/dom/transition/WXTransition$3;

    invoke-direct {v3, p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition$3;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    iput-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    .line 316
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 317
    invoke-virtual {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->doPendingLayoutAnimation()V

    goto/16 :goto_0
.end method

.method public static fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;
    .locals 8
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ")",
            "Lcom/taobao/weex/dom/transition/WXTransition;"
        }
    .end annotation

    .prologue
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 149
    const-string/jumbo v3, "transitionProperty"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 165
    :goto_0
    return-object v1

    .line 152
    :cond_0
    const-string/jumbo v3, "transitionProperty"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "propertyString":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 154
    goto :goto_0

    .line 156
    :cond_1
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {v1}, Lcom/taobao/weex/dom/transition/WXTransition;-><init>()V

    .line 157
    .local v1, "transition":Lcom/taobao/weex/dom/transition/WXTransition;
    invoke-static {v1, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V

    .line 158
    iget-object v3, v1, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    const-string/jumbo v3, "transitionDuration"

    invoke-static {p0, v3, v6, v7}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    .line 162
    const-string/jumbo v3, "transitionDelay"

    invoke-static {p0, v3, v6, v7}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    .line 163
    const-string/jumbo v3, "transitionTimingFunction"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, v1, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    .line 164
    iput-object p1, v1, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_0
.end method

.method private getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onTransitionAnimationEnd()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-wide v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 643
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v2

    .line 645
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 646
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 648
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    .line 651
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    :try_start_1
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 653
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    .local v0, "property":Ljava/lang/String;
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 655
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 656
    .local v1, "targetValue":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 661
    .end local v0    # "property":Ljava/lang/String;
    .end local v1    # "targetValue":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 642
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 659
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 661
    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private static parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "duration":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 675
    const-string/jumbo v1, "ms"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 681
    .restart local p2    # "defaultValue":J
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-long p2, v1

    goto :goto_0

    .line 683
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V
    .locals 7
    .param p0, "transition"    # Lcom/taobao/weex/dom/transition/WXTransition;
    .param p1, "transtionProperty"    # Ljava/lang/String;

    .prologue
    .line 731
    if-nez p1, :cond_1

    .line 749
    :cond_0
    return-void

    .line 734
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 735
    sget-object v3, Lcom/taobao/weex/dom/transition/WXTransition;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "propertiesArray":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 737
    .local v1, "property":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 738
    .local v2, "trim":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 741
    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 742
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 743
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "WXTransition Property Not Supported"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 736
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 747
    :cond_3
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public doPendingLayoutAnimation()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 414
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 416
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 418
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 438
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v0, v4, [Landroid/animation/PropertyValuesHolder;

    .line 422
    .local v0, "holders":[Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    .line 423
    .local v1, "index":I
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 424
    .local v2, "property":Ljava/lang/String;
    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 427
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 428
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 429
    .local v3, "targetValue":Ljava/lang/Object;
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v5

    .line 430
    :try_start_0
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-direct {p0, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v0, v1

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 436
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "targetValue":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 437
    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    return-object v0
.end method

.method public hasTransitionProperty(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "property":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 177
    .end local v0    # "property":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startTransition(Ljava/util/Map;)V
    .locals 12
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 207
    .local p1, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v6

    .line 208
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v2

    .line 209
    .local v2, "taregtView":Landroid/view/View;
    if-nez v2, :cond_0

    .line 210
    monitor-exit v6

    .line 245
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 213
    .local v4, "token":I
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "property":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 215
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    .local v3, "targetValue":Ljava/lang/Object;
    sget-object v7, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 217
    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 245
    .end local v1    # "property":Ljava/lang/String;
    .end local v2    # "taregtView":Landroid/view/View;
    .end local v3    # "targetValue":Ljava/lang/Object;
    .end local v4    # "token":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 218
    .restart local v1    # "property":Ljava/lang/String;
    .restart local v2    # "taregtView":Landroid/view/View;
    .restart local v3    # "targetValue":Ljava/lang/Object;
    .restart local v4    # "token":I
    :cond_2
    :try_start_1
    sget-object v7, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 224
    .end local v1    # "property":Ljava/lang/String;
    .end local v3    # "targetValue":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v5

    const-string/jumbo v7, "actionDelay"

    invoke-virtual {v5, v7}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result v0

    .line 225
    .local v0, "delay":I
    int-to-long v8, v0

    iget-wide v10, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    .line 226
    iget-wide v8, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    long-to-int v0, v8

    .line 228
    :cond_4
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_5

    .line 229
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    :cond_5
    new-instance v5, Lcom/taobao/weex/dom/transition/WXTransition$1;

    invoke-direct {v5, p0, v4}, Lcom/taobao/weex/dom/transition/WXTransition$1;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    iput-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    .line 240
    if-lez v0, :cond_6

    .line 241
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    int-to-long v8, v0

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    :goto_2
    monitor-exit v6

    goto :goto_0

    .line 243
    :cond_6
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public updateTranstionParams(Ljava/util/Map;)V
    .locals 6
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    .line 181
    const-string/jumbo v0, "transitionDelay"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionDelay"

    const-string/jumbo v2, "transitionDelay"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionDelay"

    invoke-static {v0, v1, v4, v5}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    .line 186
    :cond_0
    const-string/jumbo v0, "transitionTimingFunction"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "transitionTimingFunction"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionTimingFunction"

    const-string/jumbo v2, "transitionTimingFunction"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionTimingFunction"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    .line 191
    :cond_1
    const-string/jumbo v0, "transitionDuration"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionDuration"

    const-string/jumbo v2, "transitionDuration"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionDuration"

    invoke-static {v0, v1, v4, v5}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    .line 196
    :cond_2
    const-string/jumbo v0, "transitionProperty"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionProperty"

    const-string/jumbo v2, "transitionProperty"

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "transitionProperty"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V

    .line 200
    :cond_3
    return-void
.end method
