.class final Lica$2;
.super Liae;
.source "MessageServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lica;->removeLocalMessages(Lcom/alibaba/wukong/Callback;Ljava/lang/String;[Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Long;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/Callback;

.field final synthetic d:Lica;


# direct methods
.method constructor <init>(Lica;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;[Ljava/lang/Long;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 1
    .param p1, "this$0"    # Lica;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 143
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lica$2;->d:Lica;

    iput-object p5, p0, Lica$2;->a:[Ljava/lang/Long;

    iput-object p6, p0, Lica$2;->b:Ljava/lang/String;

    iput-object p7, p0, Lica$2;->c:Lcom/alibaba/wukong/Callback;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 143
    .line 1147
    iget-object v0, p0, Lica$2;->a:[Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1148
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    iget-object v2, p0, Lica$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Libs;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    .line 1149
    iget-object v0, p0, Lica$2;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/CallbackUtils;->onSuccess(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 143
    return-void
.end method
