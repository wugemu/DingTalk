.class public final Ldgx;
.super Ljava/lang/Object;
.source "ChatSettingPresenter.java"

# interfaces
.implements Ldgw$a;


# instance fields
.field a:Landroid/app/Activity;

.field b:Ldgw$b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ldgw$b;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Ldgw$b;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ChatSettingPresenter param: activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Ldgx;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Ldgx;->b:Ldgw$b;

    .line 38
    iget-object v0, p0, Ldgx;->b:Ldgw$b;

    invoke-interface {v0, p0}, Ldgw$b;->setPresenter(Lcjd;)V

    .line 39
    return-void
.end method

.method static synthetic a(Ldgx;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Ldgx;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 25
    .line 1102
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ChatSettingPresenter] rpcGetConversation,cid:"

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    new-instance v0, Ldgx$3;

    invoke-direct {v0, p0, p2, p1}, Ldgx$3;-><init>(Ldgx;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1129
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldgx;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1130
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_SERVER:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    invoke-interface {v1, v0, p2, v5, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ZLcom/alibaba/wukong/im/Conversation$ConversationSourceType;)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->conversationMergeWithFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_conv_force_sync"

    .line 1083
    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Ldgx$1;

    invoke-direct {v0, p0, p1}, Ldgx$1;-><init>(Ldgx;Ljava/lang/String;)V

    .line 72
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Ldgx;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 73
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    sget-object v2, Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;->FORCE_FROM_LOCAL:Lcom/alibaba/wukong/im/Conversation$ConversationSourceType;

    invoke-interface {v1, v0, p1, v3, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ZLcom/alibaba/wukong/im/Conversation$ConversationSourceType;)V

    goto :goto_0

    .line 75
    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v2, "EVENTBUTLER"

    .line 76
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Ldgx$2;

    invoke-direct {v3, p0}, Ldgx$2;-><init>(Ldgx;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Ldgx;->a:Landroid/app/Activity;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 75
    invoke-interface {v1, v2, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method
