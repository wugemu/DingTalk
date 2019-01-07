.class Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;
.super Ljava/lang/Object;
.source "OKHttpServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->executeNonBlockRequest(Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

.field final synthetic val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

.field final synthetic val$request:Lknc;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;->val$request:Lknc;

    iput-object p3, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;->val$request:Lknc;

    iget-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$8;->val$callback:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$200(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lknc;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)V

    .line 484
    return-void
.end method
