.class public Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;
.super Ljava/lang/Object;
.source "ConversationCardImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationCard;


# static fields
.field private static final serialVersionUID:J = 0x104fd1fdb31f9eb7L


# instance fields
.field private mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

.field private mIsMember:Z

.field private mOwnerId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromConversationCardModel(Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;J)Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;
    .param p1, "myOpenId"    # J

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;-><init>()V

    .line 42
    .local v0, "conversationCard":Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;->baseConversation:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    invoke-static {v1, p1, p2}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->fromBaseConversationModel(Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;J)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 43
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->mOwnerId:J

    .line 44
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/ConversationCardModel;->isMember:Ljava/lang/Boolean;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->mIsMember:Z

    goto :goto_0
.end method


# virtual methods
.method public getConversation()Lcom/alibaba/wukong/im/Conversation;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->mConversation:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    return-object v0
.end method

.method public getOwnerId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->mOwnerId:J

    return-wide v0
.end method

.method public isMember()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationCardImpl;->mIsMember:Z

    return v0
.end method
