.class final Libj$3;
.super Ljava/lang/Object;
.source "GroupNickServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libj;->updateGroupNick(Lcom/alibaba/wukong/im/GroupNickObject;Lcom/alibaba/wukong/Callback;)V
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
        "Lcom/alibaba/wukong/im/GroupNickObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Libj;


# direct methods
.method constructor <init>(Libj;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Libj;

    .prologue
    .line 103
    iput-object p1, p0, Libj$3;->b:Libj;

    iput-object p2, p0, Libj$3;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    const-string/jumbo v0, "WKLog"

    const-string/jumbo v1, "[groupNick]update group nick fail."

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Libj$3;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Libj$3;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    check-cast p1, Lcom/alibaba/wukong/im/GroupNickObject;

    .line 1106
    invoke-virtual {p1}, Lcom/alibaba/wukong/im/GroupNickObject;->completeIfNecessary()V

    .line 1107
    invoke-static {}, Liaq;->a()Liaq;

    move-result-object v0

    invoke-virtual {v0}, Liaq;->k()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Libj$3$1;

    invoke-direct {v1, p0, p1}, Libj$3$1;-><init>(Libj$3;Lcom/alibaba/wukong/im/GroupNickObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method
