.class public final Lgax;
.super Lgaw;
.source "FavoriteAudioViewHolder.java"


# instance fields
.field protected p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgaw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lfzs$g;->fav_item_audio:I

    return v0
.end method

.method protected final a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .param p3, "position"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lgax;->k:Landroid/view/View;

    sget v1, Lfzs$f;->voice_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    iput-object v0, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    .line 28
    iget-object v0, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;->LEFT:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setDirection(Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView$Direction;)V

    .line 29
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v9

    .line 31
    .local v9, "extend":Ljava/lang/Object;
    instance-of v0, v9, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;

    if-eqz v0, :cond_0

    move-object v8, v9

    .line 32
    check-cast v8, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;

    .line 33
    .local v8, "audioModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;
    iget-object v0, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->getAuthMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgao;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->getVolumns()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->getDuration()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 34
    invoke-virtual {v8}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;->getAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lgao;->a(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 33
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;JLjava/util/Map;Ljava/util/Map;)V

    .line 36
    iget-object v0, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lfzs$h;->dt_accessibility_fav_type_audio:I

    invoke-static {v3}, Lgax;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 39
    .end local v8    # "audioModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavAudioModel;
    .end local v9    # "extend":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    if-nez v0, :cond_0

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lgax;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lfzs$h;->dt_accessibility_fav_type_audio:I

    invoke-static {v1}, Lgax;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lgax;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget v1, Lfzs$h;->dt_accessibility_fav_type_audio:I

    invoke-static {v1}, Lgax;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lgax;->p:Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/voice/VoicePlayerView;->getDurationString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
