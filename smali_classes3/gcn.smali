.class public final Lgcn;
.super Lgcj;
.source "PicMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lgcj;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 23
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

    const/4 v10, 0x1

    .line 32
    iget-object v1, p0, Lgcn;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 33
    .local v0, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v0, :cond_2

    .line 34
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 35
    .local v13, "mediaId":Ljava/lang/String;
    invoke-static {v13}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v12

    .line 36
    .local v12, "isMediaId":Z
    iget-object v1, p0, Lgcn;->d:Lcky;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lgcn;->d:Lcky;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthCode()Ljava/lang/String;

    move-result-object v2

    .line 1140
    iput-object v2, v1, Lcky;->i:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lgcn;->d:Lcky;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v2

    .line 1148
    iput-object v2, v1, Lcky;->j:Ljava/lang/String;

    .line 40
    :cond_0
    iget-object v1, p0, Lgcn;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v2, p0, Lgcn;->e:Landroid/content/Context;

    iget-object v3, p0, Lgcn;->d:Lcky;

    if-eqz v12, :cond_3

    move-object v4, v6

    :goto_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v5

    if-eqz v12, :cond_1

    move-object v6, v13

    :cond_1
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getOrientation()I

    move-result v7

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->size()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->picType()I

    move-result v11

    if-ne v11, v10, :cond_4

    :goto_1
    iget-object v11, p0, Lgcn;->f:Lcma;

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLcma;)V

    .line 42
    .end local v12    # "isMediaId":Z
    .end local v13    # "mediaId":Ljava/lang/String;
    :cond_2
    return-void

    .restart local v12    # "isMediaId":Z
    .restart local v13    # "mediaId":Ljava/lang/String;
    :cond_3
    move-object v4, v13

    .line 40
    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    goto :goto_1
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
    .line 27
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lgcn;->b(Lcma;)V

    .line 28
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 46
    iget-object v1, p0, Lgcn;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 47
    .local v0, "imageContent":Lcom/alibaba/wukong/im/MessageContent$ImageContent;
    if-eqz v0, :cond_3

    .line 48
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    .local v10, "mediaId":Ljava/lang/String;
    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v9

    .line 50
    .local v9, "isMediaId":Z
    iget-object v1, p0, Lgcn;->d:Lcky;

    if-eqz v9, :cond_1

    move-object v2, v4

    .line 51
    :goto_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_0

    move-object v4, v10

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getOrientation()I

    move-result v5

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->size()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->picType()I

    move-result v12

    if-ne v12, v8, :cond_2

    :goto_1
    invoke-static/range {v1 .. v8}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v11

    .line 54
    .end local v9    # "isMediaId":Z
    .end local v10    # "mediaId":Ljava/lang/String;
    :goto_2
    return-object v11

    .restart local v9    # "isMediaId":Z
    .restart local v10    # "mediaId":Ljava/lang/String;
    :cond_1
    move-object v2, v10

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .end local v9    # "isMediaId":Z
    .end local v10    # "mediaId":Ljava/lang/String;
    :cond_3
    move-object v11, v4

    .line 54
    goto :goto_2
.end method
