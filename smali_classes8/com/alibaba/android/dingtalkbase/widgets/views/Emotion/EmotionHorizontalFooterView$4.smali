.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;
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
    .line 401
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->j(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;Z)Z

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->k(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    sget v1, Lcig$e;->emotion_bg_action_btn_bg:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setBackgroundResource(I)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "dynamic_emotion_icon_first_show"

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->l(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$4;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;->l(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionHorizontalFooterView$b;->onClick()V

    .line 412
    :cond_1
    return-void
.end method
