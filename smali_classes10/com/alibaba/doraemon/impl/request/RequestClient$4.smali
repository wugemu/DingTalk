.class Lcom/alibaba/doraemon/impl/request/RequestClient$4;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient;->trigger(Lcom/alibaba/doraemon/threadpool/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$4;->this$0:Lcom/alibaba/doraemon/impl/request/RequestClient;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->launch(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 310
    return-void
.end method
