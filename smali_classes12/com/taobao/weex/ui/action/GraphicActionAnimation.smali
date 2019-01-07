.class public Lcom/taobao/weex/ui/action/GraphicActionAnimation;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphicActionAnimation"


# instance fields
.field private final callback:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final styleNeedInit:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "animationBean"    # Lcom/taobao/weex/ui/animation/WXAnimationBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "animationBean"    # Lcom/taobao/weex/ui/animation/WXAnimationBean;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    .line 94
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    .line 95
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pageId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "animation"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    .line 85
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    .line 86
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-class v0, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    invoke-static {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iput-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    .line 89
    :cond_0
    return-void
.end method

.method private createAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;
    .locals 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "viewPortWidth"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 164
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    iget-object v6, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v5, v6, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    .line 168
    .local v5, "style":Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;
    if-eqz v5, :cond_0

    .line 170
    invoke-virtual {v5}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getHolders()Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "holders":Ljava/util/List;, "Ljava/util/List<Landroid/animation/PropertyValuesHolder;>;"
    iget-object v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->backgroundColor:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 173
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v1

    .local v1, "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    if-eqz v1, :cond_7

    .line 174
    new-instance v6, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v6}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v12, [Ljava/lang/Integer;

    .line 176
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    iget-object v9, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->backgroundColor:Ljava/lang/String;

    .line 177
    invoke-static {v9}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    .line 174
    invoke-static {v6, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v1    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->width:Ljava/lang/String;

    .line 187
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->height:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 188
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 189
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->width:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 190
    new-instance v6, Lcom/taobao/weex/ui/animation/WidthProperty;

    invoke-direct {v6}, Lcom/taobao/weex/ui/animation/WidthProperty;-><init>()V

    new-array v7, v12, [I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v8, v7, v10

    iget-object v8, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->width:Ljava/lang/String;

    .line 191
    invoke-static {v8}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v8

    invoke-static {v8, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v11

    .line 190
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_4
    iget-object v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->height:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 194
    new-instance v6, Lcom/taobao/weex/ui/animation/HeightProperty;

    invoke-direct {v6}, Lcom/taobao/weex/ui/animation/HeightProperty;-><init>()V

    new-array v7, v12, [I

    iget v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v8, v7, v10

    iget-object v8, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->height:Ljava/lang/String;

    .line 195
    invoke-static {v8}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v8

    invoke-static {v8, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FI)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v11

    .line 194
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-virtual {v5}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getPivot()Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 200
    invoke-virtual {v5}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getPivot()Landroid/util/Pair;

    move-result-object v4

    .line 201
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotX(F)V

    .line 202
    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->setPivotY(F)V

    .line 205
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/animation/PropertyValuesHolder;

    .line 204
    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 206
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-wide v6, v6, Lcom/taobao/weex/ui/animation/WXAnimationBean;->delay:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .restart local v1    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v6, v6, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    .line 179
    new-instance v7, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v7}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v9, v12, [Ljava/lang/Integer;

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    iget-object v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->backgroundColor:Ljava/lang/String;

    .line 182
    invoke-static {v6}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v11

    .line 179
    invoke-static {v7, v8, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private createAnimatorListener(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "callBack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;-><init>(Lcom/taobao/weex/ui/action/GraphicActionAnimation;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createTimeInterpolator()Landroid/view/animation/Interpolator;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 237
    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v0, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean;->timingFunction:Ljava/lang/String;

    .line 238
    .local v0, "interpolator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 239
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    move v3, v5

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 251
    :try_start_0
    new-instance v2, Lcom/taobao/weex/utils/SingleFunctionParser;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v3, v3, Lcom/taobao/weex/ui/animation/WXAnimationBean;->timingFunction:Ljava/lang/String;

    new-instance v5, Lcom/taobao/weex/ui/action/GraphicActionAnimation$2;

    invoke-direct {v5, p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation$2;-><init>(Lcom/taobao/weex/ui/action/GraphicActionAnimation;)V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    .line 259
    .local v2, "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    const-string/jumbo v3, "cubic-bezier"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 261
    const/4 v3, 0x0

    .line 262
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 261
    invoke-static {v5, v6, v7, v3}, Lhh;->a(FFFF)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 271
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :goto_1
    return-object v3

    .line 239
    :sswitch_0
    const-string/jumbo v6, "ease-in"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "ease-out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "ease-in-out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "linear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto/16 :goto_0

    .line 241
    :pswitch_0
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    goto :goto_1

    .line 243
    :pswitch_1
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto :goto_1

    .line 245
    :pswitch_2
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_1

    .line 247
    :pswitch_3
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1

    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .restart local v2    # "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :cond_1
    move-object v3, v4

    .line 264
    goto :goto_1

    .line 267
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v2    # "parser":Lcom/taobao/weex/utils/SingleFunctionParser;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Float;>;"
    :catch_0
    move-exception v3

    move-object v3, v4

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 271
    goto :goto_1

    .line 239
    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_0
        -0x41b970db -> :sswitch_3
        -0x2f0a1f11 -> :sswitch_1
        -0x15938a9b -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startAnimation(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 8
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    if-eqz p2, :cond_1

    .line 127
    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-boolean v5, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean;->needLayout:Z

    invoke-virtual {p2, v5}, Lcom/taobao/weex/ui/component/WXComponent;->setNeedLayoutOnAnimation(Z)V

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    .line 131
    new-instance v3, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v6, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;-><init>(Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V

    .line 132
    .local v3, "holder":Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;
    invoke-virtual {p2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->postAnimation(Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;)V

    .line 159
    .end local v3    # "holder":Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    .line 136
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v6

    .line 135
    invoke-direct {p0, v5, v6}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createAnimator(Landroid/view/View;I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 137
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 138
    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createAnimatorListener(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    .line 139
    .local v1, "animatorCallback":Landroid/animation/Animator$AnimatorListener;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_3

    .line 140
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 141
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createTimeInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 144
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 147
    :cond_4
    if-eqz v4, :cond_5

    .line 148
    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    :cond_5
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v6, v6, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getCameraDistance()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setCameraDistance(F)V

    .line 151
    iget-object v5, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-wide v6, v5, Lcom/taobao/weex/ui/animation/WXAnimationBean;->duration:J

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 152
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "animatorCallback":Landroid/animation/Animator$AnimatorListener;
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "GraphicActionAnimation"

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public executeAction()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v7

    .line 105
    .local v7, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v7, :cond_0

    .line 109
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    .line 110
    .local v6, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v6, :cond_0

    .line 114
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v0, v0, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    if-eqz v0, :cond_0

    .line 115
    iget-boolean v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v0, v0, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v1, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v1, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v2, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v2, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transform:Ljava/lang/String;

    .line 117
    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v3

    float-to-int v3, v3

    .line 118
    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v4

    float-to-int v4, v4

    .line 119
    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v5

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->init(Ljava/lang/String;Ljava/lang/String;IIILcom/taobao/weex/WXSDKInstance;)V

    .line 121
    :cond_2
    invoke-direct {p0, v6, v7}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->startAnimation(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0
.end method
