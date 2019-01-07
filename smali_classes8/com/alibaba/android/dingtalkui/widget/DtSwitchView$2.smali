.class final Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$2;
.super Ljava/lang/Object;
.source "DtSwitchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$2;->a:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$2;->a:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    const-string/jumbo v0, "boundX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->a(Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;F)F

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView$2;->a:Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/widget/DtSwitchView;->invalidate()V

    .line 246
    return-void
.end method
