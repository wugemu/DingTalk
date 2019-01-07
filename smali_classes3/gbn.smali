.class public final Lgbn;
.super Lgbp;
.source "AudioDingFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lgbp;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 26
    iget-object v0, p0, Lgbn;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbn;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    instance-of v0, v0, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v0, :cond_1

    .line 27
    iget-object v8, p0, Lgbn;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    check-cast v8, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .line 28
    .local v8, "contentAudio":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    if-eqz v8, :cond_1

    .line 29
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "mediaId":Ljava/lang/String;
    iget-object v0, p0, Lgbn;->f:Lcky;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lgbn;->f:Lcky;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    .line 1140
    iput-object v1, v0, Lcky;->i:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lgbn;->f:Lcky;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v1

    .line 1148
    iput-object v1, v0, Lcky;->j:Ljava/lang/String;

    .line 34
    :cond_0
    iget-object v0, p0, Lgbn;->c:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v1, p0, Lgbn;->d:Landroid/content/Context;

    iget-object v2, p0, Lgbn;->f:Lcky;

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getDuration()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAudioVolumns()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lgbn;->h:Lcma;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;JLjava/util/List;Lcma;)V

    .line 37
    .end local v3    # "mediaId":Ljava/lang/String;
    .end local v8    # "contentAudio":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    :cond_1
    return-void
.end method

.method public final a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lgbn;->b(Lcma;)V

    .line 22
    return-void
.end method
