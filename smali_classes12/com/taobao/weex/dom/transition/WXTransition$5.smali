.class Lcom/taobao/weex/dom/transition/WXTransition$5;
.super Ljava/lang/Object;
.source "WXTransition.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/dom/transition/WXTransition;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$5;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 529
    .local v1, "holders":[Landroid/animation/PropertyValuesHolder;
    array-length v5, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 531
    .local v0, "holder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "property":Ljava/lang/String;
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition$5;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {v3}, Lcom/taobao/weex/dom/transition/WXTransition;->access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v6

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v6, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V

    .line 529
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 535
    .end local v0    # "holder":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "property":Ljava/lang/String;
    :cond_0
    return-void
.end method
