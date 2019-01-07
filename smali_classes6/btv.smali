.class public abstract Lbtv;
.super Ljava/lang/Object;
.source "LiveStatusController.java"


# instance fields
.field private a:Lcom/alibaba/wukong/im/MessageListener;

.field private b:Lcom/alibaba/wukong/im/ConversationListener;

.field private c:Lcom/alibaba/wukong/im/ConversationChangeListener;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lbtv;->f:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic a(Lbtv;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lbtv;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 26
    .line 2187
    if-eqz p1, :cond_0

    .line 2190
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbtv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2194
    sget-object v0, Lbtv$4;->a:[I

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 2198
    :pswitch_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbtv;->a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V

    goto :goto_0

    .line 2194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lbtv;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lbtv;->h()V

    .line 44
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lbtv;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lbtv;->i()V

    .line 48
    return-void
.end method

.method protected h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 59
    .line 1069
    iget-object v0, p0, Lbtv;->a:Lcom/alibaba/wukong/im/MessageListener;

    if-nez v0, :cond_0

    .line 1072
    new-instance v0, Lbtv$1;

    invoke-direct {v0, p0}, Lbtv$1;-><init>(Lbtv;)V

    iput-object v0, p0, Lbtv;->a:Lcom/alibaba/wukong/im/MessageListener;

    .line 1124
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lbtv;->a:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 1135
    :cond_0
    iget-object v0, p0, Lbtv;->b:Lcom/alibaba/wukong/im/ConversationListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbtv;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    if-eqz v0, :cond_2

    .line 1136
    :cond_1
    :goto_0
    return-void

    .line 1138
    :cond_2
    new-instance v0, Lbtv$2;

    invoke-direct {v0, p0}, Lbtv$2;-><init>(Lbtv;)V

    iput-object v0, p0, Lbtv;->b:Lcom/alibaba/wukong/im/ConversationListener;

    .line 1157
    new-instance v0, Lbtv$3;

    invoke-direct {v0, p0}, Lbtv$3;-><init>(Lbtv;)V

    iput-object v0, p0, Lbtv;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 1169
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 1170
    iget-object v1, p0, Lbtv;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 1171
    iget-object v1, p0, Lbtv;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 64
    .line 2128
    iget-object v0, p0, Lbtv;->a:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_0

    .line 2129
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lbtv;->a:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 2130
    iput-object v2, p0, Lbtv;->a:Lcom/alibaba/wukong/im/MessageListener;

    .line 2175
    :cond_0
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    .line 2176
    iget-object v1, p0, Lbtv;->b:Lcom/alibaba/wukong/im/ConversationListener;

    if-eqz v1, :cond_1

    .line 2177
    iget-object v1, p0, Lbtv;->b:Lcom/alibaba/wukong/im/ConversationListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 2178
    iput-object v2, p0, Lbtv;->b:Lcom/alibaba/wukong/im/ConversationListener;

    .line 2180
    :cond_1
    iget-object v1, p0, Lbtv;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    if-eqz v1, :cond_2

    .line 2181
    iget-object v1, p0, Lbtv;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/ConversationService;->removeConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 2182
    iput-object v2, p0, Lbtv;->c:Lcom/alibaba/wukong/im/ConversationChangeListener;

    .line 66
    :cond_2
    return-void
.end method
