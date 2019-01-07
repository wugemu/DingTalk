.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$1;
.super Ljava/lang/Object;
.source "DynamicEmotionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$a;

    .line 97
    :cond_0
    return-void
.end method
