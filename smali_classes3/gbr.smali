.class public final Lgbr;
.super Lgbm;
.source "FileDingFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p3, "attachmentObject"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lgbm;-><init>(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/base/objects/DingLinkObject;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 28
    iget-object v0, p0, Lgbr;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lgbr;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "mediaId":Ljava/lang/String;
    iget-object v0, p0, Lgbr;->c:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v1, p0, Lgbr;->d:Landroid/content/Context;

    iget-object v2, p0, Lgbr;->f:Lcky;

    iget-object v4, p0, Lgbr;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iget-object v5, p0, Lgbr;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v5, v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    iget-object v6, p0, Lgbr;->a:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    iget-object v8, p0, Lgbr;->h:Lcma;

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V

    goto :goto_0
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
    .line 23
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lgbr;->b(Lcma;)V

    .line 24
    return-void
.end method
