.class final Ldjl$10$1;
.super Ljava/lang/Object;
.source "ConversationUtils.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjl$10;
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
.field final synthetic a:Ldjl$10;


# direct methods
.method constructor <init>(Ldjl$10;)V
    .locals 0
    .param p1, "this$0"    # Ldjl$10;

    .prologue
    .line 640
    iput-object p1, p0, Ldjl$10$1;->a:Ldjl$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v0, p0, Ldjl$10$1;->a:Ldjl$10;

    iget-object v0, v0, Ldjl$10;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Ldjl$10$1;->a:Ldjl$10;

    iget-object v0, v0, Ldjl$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 640
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 640
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1643
    if-eqz p1, :cond_1

    .line 1644
    iget-object v0, p0, Ldjl$10$1;->a:Ldjl$10;

    iget-object v0, v0, Ldjl$10;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {p1, v0}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    iget-object v0, p0, Ldjl$10$1;->a:Ldjl$10;

    iget-object v0, v0, Ldjl$10;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Ldjl$10$1;->a:Ldjl$10;

    iget-object v0, v0, Ldjl$10;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->unknown_error:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
