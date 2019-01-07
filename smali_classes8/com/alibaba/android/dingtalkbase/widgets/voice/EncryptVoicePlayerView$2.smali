.class final Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;
.super Ljava/lang/Object;
.source "EncryptVoicePlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x7b

    .line 250
    invoke-static {}, Lctj;->a()Lctj;

    move-result-object v7

    .line 251
    .local v7, "player":Lctj;
    const-string/jumbo v0, "play"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->k(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->l(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->l(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->n(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcma;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->o(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 259
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_list_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 267
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->p(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->b(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I

    move-result v2

    int-to-double v8, v2

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v8, v10

    mul-double/2addr v0, v8

    double-to-int v3, v0

    .line 269
    .local v3, "postion":I
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->a(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)J

    move-result-wide v8

    long-to-int v4, v8

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;IILjava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 260
    .end local v3    # "postion":I
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->o(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_3

    .line 262
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_detail_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_play"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->f(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lctj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lctj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->i(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->l(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 277
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->l(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->m(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$a;->a()V

    .line 283
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->o(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 285
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "ding_voice_play_after_pause"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1184
    :goto_2
    iget-object v0, v7, Lctj;->a:Ljava/lang/Object;

    .line 291
    if-eqz v0, :cond_0

    .line 2184
    iget-object v0, v7, Lctj;->a:Ljava/lang/Object;

    .line 291
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;->h(Lcom/alibaba/android/dingtalkbase/widgets/voice/EncryptVoicePlayerView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v7}, Lctj;->b()V

    goto/16 :goto_0

    .line 288
    :cond_7
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_voice_play_after_pause"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_2
.end method
