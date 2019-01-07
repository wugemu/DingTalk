.class final Liaw$15$1;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw$15;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/conversation/ConversationImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Liaw$15;


# direct methods
.method constructor <init>(Liaw$15;)V
    .locals 0
    .param p1, "this$1"    # Liaw$15;

    .prologue
    .line 1102
    iput-object p1, p0, Liaw$15$1;->a:Liaw$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1112
    iget-object v0, p0, Liaw$15$1;->a:Liaw$15;

    iget-object v0, v0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Liaw$15$1;->a:Liaw$15;

    iget-object v0, v0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Liaw$15$1;->a:Liaw$15;

    iget-object v1, v1, Liaw$15;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1114
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1102
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1102
    check-cast p1, Ljava/util/List;

    .line 2105
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationCache()Liar;

    move-result-object v0

    invoke-virtual {v0, p1}, Liar;->a(Ljava/util/List;)Ljava/util/ArrayList;

    .line 2106
    iget-object v0, p0, Liaw$15$1;->a:Liaw$15;

    iget-object v0, v0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2107
    iget-object v0, p0, Liaw$15$1;->a:Liaw$15;

    iget-object v0, v0, Liaw$15;->b:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Liaw$15$1;->a:Liaw$15;

    iget-object v1, v1, Liaw$15;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1102
    :cond_0
    return-void
.end method
