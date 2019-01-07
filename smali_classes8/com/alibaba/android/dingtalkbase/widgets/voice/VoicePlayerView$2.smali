.class final Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;
.super Ljava/lang/Object;
.source "VoicePlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x7b

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v0, "play"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->m(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 256
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_list_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->o(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I

    move-result v2

    int-to-double v4, v2

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    mul-double/2addr v0, v4

    double-to-int v3, v0

    .line 266
    .local v3, "postion":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;IILjava/util/Map;Ljava/util/Map;)V

    .line 285
    .end local v3    # "postion":I
    :cond_0
    :goto_1
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_2

    .line 259
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_detail_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->j(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->k(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->n(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 274
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_voice_play_after_pause"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 280
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->e(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;)Lctj;

    move-result-object v0

    invoke-virtual {v0}, Lctj;->b()V

    goto :goto_1

    .line 277
    :cond_5
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_play_after_pause"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_2
.end method
