.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;
.super Ljava/lang/Object;
.source "ConversationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->sendTypingEvent(Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation$TypingType;

.field final synthetic c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/Conversation$TypingCommand;Lcom/alibaba/wukong/im/Conversation$TypingType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 1859
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;->a:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iput-object p3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;->b:Lcom/alibaba/wukong/im/Conversation$TypingType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1862
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;->c:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;->a:Lcom/alibaba/wukong/im/Conversation$TypingCommand;

    iget-object v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$30;->b:Lcom/alibaba/wukong/im/Conversation$TypingType;

    .line 2127
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2128
    invoke-static {v5}, Liav;->a(Lcom/alibaba/wukong/Callback;)V

    .line 2129
    :goto_0
    return-void

    .line 2132
    :cond_0
    new-instance v4, Liav$26;

    invoke-direct {v4, v0, v5}, Liav$26;-><init>(Liav;Lcom/alibaba/wukong/Callback;)V

    .line 2139
    new-instance v5, Lcom/alibaba/wukong/idl/typing/models/TypingModel;

    invoke-direct {v5}, Lcom/alibaba/wukong/idl/typing/models/TypingModel;-><init>()V

    .line 2140
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/Conversation$TypingCommand;->typeValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/wukong/idl/typing/models/TypingModel;->command:Ljava/lang/Integer;

    .line 2141
    invoke-virtual {v3}, Lcom/alibaba/wukong/im/Conversation$TypingType;->typeValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/alibaba/wukong/idl/typing/models/TypingModel;->type:Ljava/lang/Integer;

    .line 2142
    iput-object v1, v5, Lcom/alibaba/wukong/idl/typing/models/TypingModel;->conversationId:Ljava/lang/String;

    .line 2144
    new-instance v0, Lhzx;

    invoke-direct {v0}, Lhzx;-><init>()V

    .line 2145
    const-wide/16 v2, 0x7d0

    .line 3043
    iput-wide v2, v0, Lhzx;->a:J

    .line 2146
    invoke-virtual {v4, v0}, Lhzy;->addBeforeFiler(Liyt;)V

    .line 2147
    const-class v0, Lcom/alibaba/wukong/idl/typing/client/TypingService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/idl/typing/client/TypingService;

    invoke-interface {v0, v5, v4}, Lcom/alibaba/wukong/idl/typing/client/TypingService;->send(Lcom/alibaba/wukong/idl/typing/models/TypingModel;Liyv;)V

    goto :goto_0
.end method
