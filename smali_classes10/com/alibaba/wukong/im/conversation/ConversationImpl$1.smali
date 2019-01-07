.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;
.super Ljava/lang/Object;
.source "ConversationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->sync()V
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
    .line 253
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v2, v2, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Liar;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->access$002(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Lcom/alibaba/wukong/im/conversation/ConversationImpl;)Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .line 257
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$1;->a:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->access$102(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Z)Z

    .line 258
    return-void
.end method
