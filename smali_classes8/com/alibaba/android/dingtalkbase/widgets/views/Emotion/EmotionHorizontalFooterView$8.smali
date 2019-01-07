.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$8;
.super Ljava/lang/Object;
.source "EmotionHorizontalFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    .prologue
    .line 495
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lckk;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->p(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 502
    :cond_0
    return-void
.end method
