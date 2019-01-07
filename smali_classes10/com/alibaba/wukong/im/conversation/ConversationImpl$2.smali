.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;
.super Ljava/lang/Object;
.source "ConversationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->addUnreadCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput p2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 581
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;->a:I

    invoke-virtual {v1, v2, v3}, Liar;->b(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v0

    .line 583
    .local v0, "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$2;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v2, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    iput v2, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 587
    .end local v0    # "co":Lcom/alibaba/wukong/im/conversation/ConversationImpl;
    :cond_0
    return-void
.end method
