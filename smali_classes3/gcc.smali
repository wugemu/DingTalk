.class public final Lgcc;
.super Lgcj;
.source "AudioMessageFavorite.java"


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
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lgcc;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 32
    .local v8, "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    if-eqz v8, :cond_1

    .line 33
    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "mediaId":Ljava/lang/String;
    iget-object v0, p0, Lgcc;->d:Lcky;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lgcc;->d:Lcky;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthCode()Ljava/lang/String;

    move-result-object v1

    .line 1140
    iput-object v1, v0, Lcky;->i:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lgcc;->d:Lcky;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->getAuthUrl()Ljava/lang/String;

    move-result-object v1

    .line 1148
    iput-object v1, v0, Lcky;->j:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lgcc;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v1, p0, Lgcc;->e:Landroid/content/Context;

    iget-object v2, p0, Lgcc;->d:Lcky;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lgcc;->f:Lcma;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;JLjava/util/List;Lcma;)V

    .line 40
    .end local v3    # "mediaId":Ljava/lang/String;
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
    .line 26
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lgcc;->b(Lcma;)V

    .line 27
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    iget-object v3, p0, Lgcc;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$AudioContent;

    .line 45
    .local v0, "audioContent":Lcom/alibaba/wukong/im/MessageContent$AudioContent;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "mediaId":Ljava/lang/String;
    iget-object v3, p0, Lgcc;->d:Lcky;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->duration()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$AudioContent;->volumns()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v1, v4, v5, v6}, Lgap;->a(Lcky;Ljava/lang/String;JLjava/util/List;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v2

    .line 50
    .end local v1    # "mediaId":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
