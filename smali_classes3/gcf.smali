.class public final Lgcf;
.super Lgcj;
.source "FileMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lgcj;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 43
    iget-object v0, p0, Lgcf;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 44
    .local v9, "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    if-eqz v9, :cond_0

    .line 45
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "mediaId":Ljava/lang/String;
    iget-object v0, p0, Lgcf;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v1, p0, Lgcf;->e:Landroid/content/Context;

    iget-object v2, p0, Lgcf;->d:Lcky;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v6

    iget-object v8, p0, Lgcf;->f:Lcma;

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcma;)V

    .line 48
    .end local v3    # "mediaId":Ljava/lang/String;
    :cond_0
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
    .line 26
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lgcf;->b(Lcma;)V

    .line 27
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lgcf;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 32
    .local v6, "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    if-eqz v6, :cond_0

    .line 33
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "mediaId":Ljava/lang/String;
    iget-object v0, p0, Lgcf;->d:Lcky;

    .line 35
    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->size()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v7

    .line 38
    .end local v1    # "mediaId":Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method
