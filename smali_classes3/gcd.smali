.class public final Lgcd;
.super Lgcj;
.source "CardMessageFavorite.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lgcj;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 29
    iget-object v0, p0, Lgcd;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 30
    .local v9, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 32
    .local v8, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    if-eqz v8, :cond_0

    .line 33
    iget-object v0, p0, Lgcd;->a:Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;

    iget-object v1, p0, Lgcd;->e:Landroid/content/Context;

    iget-object v2, p0, Lgcd;->d:Lcky;

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lgcd;->f:Lcma;

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspacebase/favorite/FavoriteInterface;->a(Landroid/content/Context;Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 36
    .end local v8    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
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
    .line 24
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lgcd;->b(Lcma;)V

    .line 25
    return-void
.end method

.method public final b()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 40
    iget-object v3, p0, Lgcd;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 41
    .local v1, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 42
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 43
    .local v0, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    if-eqz v0, :cond_0

    .line 44
    iget-object v3, p0, Lgcd;->d:Lcky;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->url()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->picUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lgap;->a(Lcky;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    move-result-object v2

    .line 48
    .end local v0    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
