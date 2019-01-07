.class final Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;
.super Ljava/lang/Object;
.source "ConversationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/conversation/ConversationImpl;->updateDraftMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/conversation/ConversationImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iput-object p2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;->a:Ljava/lang/String;

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
    .line 603
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, v1, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mCid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Liar;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;->b:Lcom/alibaba/wukong/im/conversation/ConversationImpl;

    iget-object v1, p0, Lcom/alibaba/wukong/im/conversation/ConversationImpl$3;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/conversation/ConversationImpl;->mDraftText:Ljava/lang/String;

    .line 606
    :cond_0
    return-void
.end method
