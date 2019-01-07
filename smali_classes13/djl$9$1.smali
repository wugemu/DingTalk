.class final Ldjl$9$1;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjl$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldjl$9;


# direct methods
.method constructor <init>(Ldjl$9;)V
    .locals 0
    .param p1, "this$0"    # Ldjl$9;

    .prologue
    .line 585
    iput-object p1, p0, Ldjl$9$1;->a:Ldjl$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v0, p0, Ldjl$9$1;->a:Ldjl$9;

    iget-object v0, v0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Ldjl$9$1;->a:Ldjl$9;

    iget-object v0, v0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 585
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1588
    if-nez p1, :cond_1

    .line 1589
    iget-object v0, p0, Ldjl$9$1;->a:Ldjl$9;

    iget-object v0, v0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Ldjl$9$1;->a:Ldjl$9;

    iget-object v0, v0, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, "404"

    const-string/jumbo v2, "conversation not found"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    iget-object v0, p0, Ldjl$9$1;->a:Ldjl$9;

    iget-wide v0, v0, Ldjl$9;->a:J

    iget-object v2, p0, Ldjl$9$1;->a:Ldjl$9;

    iget-object v2, v2, Ldjl$9;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p1, v2}, Ldjl;->a(JLcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
