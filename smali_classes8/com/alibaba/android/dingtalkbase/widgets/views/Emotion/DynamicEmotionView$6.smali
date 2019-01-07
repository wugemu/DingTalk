.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$6;
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
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

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
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$6;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Z)V

    .line 168
    return-void
.end method
