.class public Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;
.super Ljava/lang/Object;
.source "WXAnimationBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/animation/WXAnimationBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Style"
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final CENTER:Ljava/lang/String; = "center"

.field private static final DEG:Ljava/lang/String; = "deg"

.field private static final FULL:Ljava/lang/String; = "100%"

.field private static final HALF:Ljava/lang/String; = "50%"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final LEFT:Ljava/lang/String; = "left"

.field private static final PX:Ljava/lang/String; = "px"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final WX_ROTATE:Ljava/lang/String; = "rotate"

.field public static final WX_ROTATE_X:Ljava/lang/String; = "rotateX"

.field public static final WX_ROTATE_Y:Ljava/lang/String; = "rotateY"

.field public static final WX_SCALE:Ljava/lang/String; = "scale"

.field public static final WX_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final WX_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final WX_TRANSLATE:Ljava/lang/String; = "translate"

.field public static final WX_TRANSLATE_X:Ljava/lang/String; = "translateX"

.field public static final WX_TRANSLATE_Y:Ljava/lang/String; = "translateY"

.field private static final ZERO:Ljava/lang/String; = "0%"

.field private static defaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static wxToAndroidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundColor:Ljava/lang/String;

.field private cameraDistance:F

.field public height:Ljava/lang/String;

.field private holders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field public opacity:Ljava/lang/String;

.field private pivot:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public transform:Ljava/lang/String;

.field private transformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public transformOrigin:Ljava/lang/String;

.field public width:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 85
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    .line 86
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    .line 90
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "translate"

    new-array v2, v8, [Landroid/util/Property;

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    aput-object v3, v2, v7

    .line 91
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "translateX"

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "translateY"

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "rotate"

    sget-object v2, Landroid/view/View;->ROTATION:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "rotateX"

    sget-object v2, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "rotateY"

    sget-object v2, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "scale"

    new-array v2, v8, [Landroid/util/Property;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    aput-object v3, v2, v6

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    aput-object v3, v2, v7

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "scaleX"

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "scaleY"

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    const-string/jumbo v1, "perspective"

    invoke-static {}, Lcom/taobao/weex/ui/animation/CameraDistanceProperty;->getInstance()Landroid/util/Property;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->wxToAndroidMap:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    sget-object v1, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    .line 120
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->cameraDistance:F

    return-void
.end method

.method private initHolders()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    iget-object v1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    new-array v5, v7, [F

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v5, v6

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 228
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->opacity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->opacity:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;I)F

    move-result v4

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_1
    return-void
.end method

.method private static parsePercent(Ljava/lang/String;II)F
    .locals 2
    .param p0, "percent"    # Ljava/lang/String;
    .param p1, "unit"    # I
    .param p2, "precision"    # I

    .prologue
    .line 186
    invoke-static {p0, p2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method private static parsePercentOrPx(Ljava/lang/String;II)F
    .locals 5
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "unit"    # I
    .param p2, "viewportW"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 177
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, "suffix":I
    if-eq v0, v3, :cond_0

    .line 178
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v2}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePercent(Ljava/lang/String;II)F

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 179
    :cond_0
    const-string/jumbo v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 180
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;I)F

    move-result v1

    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXUtils;->fastGetFloat(Ljava/lang/String;I)F

    move-result v1

    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v1

    goto :goto_0
.end method

.method private static parsePivot(Ljava/lang/String;III)Landroid/util/Pair;
    .locals 5
    .param p0, "transformOrigin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewportW"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 127
    .local v0, "firstSpace":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 128
    move v1, v0

    .line 129
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {v2, p1, p2, p3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivot(Ljava/util/List;III)Landroid/util/Pair;

    move-result-object v3

    .line 142
    .end local v0    # "firstSpace":I
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static parsePivot(Ljava/util/List;III)Landroid/util/Pair;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewportW"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/Pair;

    const/4 v0, 0x0

    .line 147
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1, p3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivotX(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivotY(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static parsePivotX(Ljava/lang/String;II)F
    .locals 2
    .param p0, "x"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "viewportW"    # I

    .prologue
    .line 151
    move-object v0, p0

    .line 152
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "left"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const-string/jumbo v0, "0%"

    .line 159
    :cond_0
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePercentOrPx(Ljava/lang/String;II)F

    move-result v1

    return v1

    .line 154
    :cond_1
    const-string/jumbo v1, "right"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    const-string/jumbo v0, "100%"

    goto :goto_0

    .line 156
    :cond_2
    const-string/jumbo v1, "center"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    const-string/jumbo v0, "50%"

    goto :goto_0
.end method

.method private static parsePivotY(Ljava/lang/String;II)F
    .locals 2
    .param p0, "y"    # Ljava/lang/String;
    .param p1, "height"    # I
    .param p2, "viewportW"    # I

    .prologue
    .line 163
    move-object v0, p0

    .line 164
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    const-string/jumbo v0, "0%"

    .line 171
    :cond_0
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePercentOrPx(Ljava/lang/String;II)F

    move-result v1

    return v1

    .line 166
    :cond_1
    const-string/jumbo v1, "bottom"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const-string/jumbo v0, "100%"

    goto :goto_0

    .line 168
    :cond_2
    const-string/jumbo v1, "center"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string/jumbo v0, "50%"

    goto :goto_0
.end method

.method private resetToDefaultIfAbsent()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 190
    sget-object v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->defaultMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    iget-object v2, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Ljava/lang/Float;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public getCameraDistance()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->cameraDistance:F

    return v0
.end method

.method public getHolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    return-object v0
.end method

.method public getPivot()Landroid/util/Pair;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->pivot:Landroid/util/Pair;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;IIILcom/taobao/weex/WXSDKInstance;)V
    .locals 2
    .param p1, "transformOrigin"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "rawTransform"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "viewportW"    # I
    .param p6, "instance"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 203
    invoke-static {p1, p3, p4, p5}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->parsePivot(Ljava/lang/String;III)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->pivot:Landroid/util/Pair;

    .line 204
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-virtual {p6}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p5}, Lcom/taobao/weex/ui/animation/TransformParser;->parseTransForm(Ljava/lang/String;Ljava/lang/String;III)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 205
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->resetToDefaultIfAbsent()V

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/weex/ui/animation/CameraDistanceProperty;->getInstance()Landroid/util/Property;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/taobao/weex/ui/animation/CameraDistanceProperty;->getInstance()Landroid/util/Property;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->cameraDistance:F

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->initHolders()V

    .line 210
    return-void
.end method

.method public init(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    iget-object v4, p0, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Property;

    const/4 v2, 0x2

    new-array v5, v2, [F

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v5, v6

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    :cond_0
    return-void
.end method
