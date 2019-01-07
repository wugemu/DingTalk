.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$7;
.super Ljava/lang/Object;
.source "EmotionFooterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$7;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;->n(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionFooterView$c;->onClick()V

    .line 423
    :cond_0
    return-void
.end method
