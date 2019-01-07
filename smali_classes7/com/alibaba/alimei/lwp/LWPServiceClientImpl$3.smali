.class final Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;
.super Ljava/lang/Object;
.source "LWPServiceClientImpl.java"

# interfaces
.implements Lgte;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->executeWithAsyncTask(Lgti;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgte",
        "<",
        "Lgtj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

.field final synthetic b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic c:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;->c:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;->a:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    iput-object p3, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;->b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 351
    check-cast p1, Lgtj;

    .line 1354
    iget-object v0, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;->c:Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;->a:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    iget-object v2, p0, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl$3;->b:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;->access$200(Lcom/alibaba/alimei/lwp/LWPServiceClientImpl;Lgtj;Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 351
    return-void
.end method
