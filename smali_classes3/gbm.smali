.class public abstract Lgbm;
.super Lgbp;
.source "AttachBaseDingFavorite.java"


# instance fields
.field protected a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

.field protected b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p4, "linkObject"    # Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lgbp;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 24
    iput-object p3, p0, Lgbm;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 25
    iput-object p4, p0, Lgbm;->b:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "dingExtend":Lckx;
    iget-object v2, p0, Lgbm;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    instance-of v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    if-eqz v2, :cond_1

    .line 28
    iget-object v7, p0, Lgbm;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    check-cast v7, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;

    .line 29
    .local v7, "contentAudio":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    if-eqz v7, :cond_0

    .line 30
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "mediaId":Ljava/lang/String;
    new-instance v0, Lckx;

    .end local v0    # "dingExtend":Lckx;
    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getDuration()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;->getAudioVolumns()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lckx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 39
    .end local v1    # "mediaId":Ljava/lang/String;
    .end local v7    # "contentAudio":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentAudio;
    .restart local v0    # "dingExtend":Lckx;
    :cond_0
    :goto_0
    iget-object v2, p0, Lgbm;->f:Lcky;

    .line 1132
    iput-object v0, v2, Lcky;->n:Lckx;

    .line 40
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Lgbm;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    instance-of v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    if-eqz v2, :cond_0

    .line 34
    iget-object v8, p0, Lgbm;->g:Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    check-cast v8, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 35
    .local v8, "contentText":Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;
    if-eqz v8, :cond_0

    .line 36
    new-instance v0, Lckx;

    .end local v0    # "dingExtend":Lckx;
    invoke-virtual {v8}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lckx;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dingExtend":Lckx;
    goto :goto_0
.end method
