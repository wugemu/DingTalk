.class public final Lggd;
.super Ljava/lang/Object;
.source "RecentConfigPresenter.java"

# interfaces
.implements Lgge$a;


# instance fields
.field a:Lcom/alibaba/wukong/im/Conversation;

.field b:Lgge$b;

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lgge$b;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Lgge$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lggd;->c:Landroid/app/Activity;

    .line 33
    iput-object p2, p0, Lggd;->b:Lgge$b;

    .line 34
    invoke-interface {p2, p0}, Lgge$b;->setPresenter(Lcjd;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 39
    new-instance v0, Lggd$1;

    invoke-direct {v0, p0}, Lggd$1;-><init>(Lggd;)V

    .line 65
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v1, p0, Lggd;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 66
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lggd;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 68
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {}, Lgpt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method a(Lcom/alibaba/wukong/im/Conversation;Z)V
    .locals 1
    .param p1, "spaceConversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "notify"    # Z

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lggd$3;

    invoke-direct {v0, p0, p2}, Lggd$3;-><init>(Lggd;Z)V

    .line 132
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-interface {p1, p2, v0}, Lcom/alibaba/wukong/im/Conversation;->updateNotification(ZLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "notify"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 73
    iget-object v1, p0, Lggd;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lggd;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {p0, v1, p1}, Lggd;->a(Lcom/alibaba/wukong/im/Conversation;Z)V

    .line 106
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v0, Lggd$2;

    invoke-direct {v0, p0, p1}, Lggd$2;-><init>(Lggd;Z)V

    .line 102
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    iget-object v1, p0, Lggd;->c:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 103
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lggd;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 105
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_1
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {}, Lgpt;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
