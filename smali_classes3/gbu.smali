.class public final Lgbu;
.super Lgbm;
.source "PicDingFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lgbm;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 49
    iget-object v1, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, "mediaId":Ljava/lang/String;
    invoke-static {v12}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    .line 51
    .local v0, "isMediaId":Z
    iget-object v1, p0, Lgbu;->f:Lcky;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lgbu;->f:Lcky;

    iget-object v2, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 1140
    iput-object v2, v1, Lcky;->i:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lgbu;->f:Lcky;

    iget-object v2, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    .line 1148
    iput-object v2, v1, Lcky;->j:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v1, p0, Lgbu;->c:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v2, p0, Lgbu;->d:Landroid/content/Context;

    iget-object v3, p0, Lgbu;->f:Lcky;

    if-eqz v0, :cond_2

    move-object v4, v6

    :goto_0
    iget-object v5, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v5, v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v6, v12

    :cond_1
    iget-object v8, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v8, v8, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    iget-object v10, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 2035
    if-eqz v10, :cond_3

    .line 2038
    iget-object v11, v10, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v11, :cond_3

    .line 2039
    iget-object v10, v10, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 2040
    const-string/jumbo v11, "o"

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "o"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "1"

    const-string/jumbo v13, "o"

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2041
    const/4 v10, 0x1

    .line 57
    :goto_1
    iget-object v11, p0, Lgbu;->h:Lcma;

    .line 55
    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcma;)V

    .line 58
    return-void

    :cond_2
    move-object v4, v12

    .line 55
    goto :goto_0

    :cond_3
    move v10, v7

    .line 2044
    goto :goto_1
.end method

.method public final a(Lcma;)V
    .locals 1
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
    .line 28
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lgbu;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lgbu;->b(Lcma;)V

    goto :goto_0
.end method
