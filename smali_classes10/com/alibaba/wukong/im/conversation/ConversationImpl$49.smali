.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;
.super Ljava/lang/Object;
.source "ConversationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->resetUnreadCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

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
    const/4 v3, 0x0

    .line 565
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Liar;->c([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mFlag:I

    and-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Liar;->c(Ljava/lang/String;I)Z

    .line 567
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$49;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput v3, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mUnreadCount:I

    .line 569
    :cond_0
    return-void
.end method
