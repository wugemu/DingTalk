.class public Lcom/alibaba/wukong/im/ConversationTitleManager;
.super Ljava/lang/Object;
.source "ConversationTitleManager.java"


# static fields
.field private static volatile mInstance:Lcom/alibaba/wukong/im/ConversationTitleManager;


# instance fields
.field private mConversationTitleProvider:Lcom/alibaba/wukong/im/ConversationTitleProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/alibaba/wukong/im/ConversationTitleManager;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/alibaba/wukong/im/ConversationTitleManager;->mInstance:Lcom/alibaba/wukong/im/ConversationTitleManager;

    if-nez v0, :cond_0

    .line 21
    const-class v1, Lcom/alibaba/wukong/im/ConversationTitleManager;

    monitor-enter v1

    .line 22
    :try_start_0
    new-instance v0, Lcom/alibaba/wukong/im/ConversationTitleManager;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/ConversationTitleManager;-><init>()V

    sput-object v0, Lcom/alibaba/wukong/im/ConversationTitleManager;->mInstance:Lcom/alibaba/wukong/im/ConversationTitleManager;

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    sget-object v0, Lcom/alibaba/wukong/im/ConversationTitleManager;->mInstance:Lcom/alibaba/wukong/im/ConversationTitleManager;

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLocaleTitle(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 41
    .end local p2    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 36
    .restart local p2    # "title":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 37
    .local v0, "localeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/wukong/im/ConversationTitleManager;->mConversationTitleProvider:Lcom/alibaba/wukong/im/ConversationTitleProvider;

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lcom/alibaba/wukong/im/ConversationTitleManager;->mConversationTitleProvider:Lcom/alibaba/wukong/im/ConversationTitleProvider;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wukong/im/ConversationTitleProvider;->getLocaleTitle(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p2, v0

    goto :goto_0
.end method

.method public setConversationTitleProvider(Lcom/alibaba/wukong/im/ConversationTitleProvider;)V
    .locals 0
    .param p1, "conversationTitleProvider"    # Lcom/alibaba/wukong/im/ConversationTitleProvider;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/wukong/im/ConversationTitleManager;->mConversationTitleProvider:Lcom/alibaba/wukong/im/ConversationTitleProvider;

    .line 30
    return-void
.end method
