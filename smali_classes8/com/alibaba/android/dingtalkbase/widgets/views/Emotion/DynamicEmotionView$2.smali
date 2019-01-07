.class final Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;
.super Ljava/lang/Object;
.source "DynamicEmotionView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 100
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v3, 0x0

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->b(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 113
    goto :goto_0

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->c(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 122
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;Z)V

    goto :goto_1

    .line 125
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 126
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->e(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;J)J

    .line 131
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/DynamicEmotionView;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 104
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 109
    return-void
.end method
