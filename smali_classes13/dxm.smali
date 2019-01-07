.class public final Ldxm;
.super Ljava/lang/Object;
.source "ConversationSafeAPIImpl.java"

# interfaces
.implements Ldxl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "apiEventListener"    # Lcma;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-interface {p0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ldri;Lcma;)V
    .locals 7
    .param p1, "req"    # Ldri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldri;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    iget-object v4, p1, Ldri;->a:Lcom/alibaba/wukong/im/Conversation;

    instance-of v4, v4, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    if-nez v4, :cond_1

    .line 32
    const-string/jumbo v4, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->unknown_error:I

    .line 33
    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {p2, v4, v5}, Ldxm;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    if-eqz p1, :cond_2

    iget-object v4, p1, Ldri;->a:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_2

    iget-object v4, p1, Ldri;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1020
    :cond_2
    const/4 v2, 0x0

    .line 37
    .local v2, "reqModel":Ldtg;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v4, v2, Ldtg;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 38
    :cond_3
    const-string/jumbo v4, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lctk$i;->unknown_error:I

    .line 39
    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {p2, v4, v5}, Ldxm;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    .end local v2    # "reqModel":Ldtg;
    :cond_4
    new-instance v2, Ldtg;

    invoke-direct {v2}, Ldtg;-><init>()V

    .line 1023
    iget-object v4, p1, Ldri;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ldtg;->a:Ljava/lang/String;

    .line 1024
    iget v4, p1, Ldri;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Ldtg;->b:Ljava/lang/Integer;

    goto :goto_1

    .line 43
    .restart local v2    # "reqModel":Ldtg;
    :cond_5
    iget-object v0, p1, Ldri;->a:Lcom/alibaba/wukong/im/Conversation;

    check-cast v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 44
    .local v0, "conversationImpl":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    new-instance v1, Ldxm$1;

    invoke-direct {v1, p0, p2, v0}, Ldxm$1;-><init>(Ldxm;Lcma;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V

    .line 69
    .local v1, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcom/alibaba/wukong/idl/im/models/BaseMessageModel;>;Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    const-class v4, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationSafeIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationSafeIService;

    .line 70
    .local v3, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationSafeIService;
    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v3, v2, v1}, Lcom/alibaba/android/dingtalkim/models/idl/service/ConversationSafeIService;->getFirstEnterConversationMsgs(Ldtg;Liyv;)V

    goto :goto_0
.end method
