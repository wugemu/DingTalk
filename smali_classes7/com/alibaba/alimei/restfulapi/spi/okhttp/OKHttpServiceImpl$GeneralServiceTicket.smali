.class Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;
.super Ljava/lang/Object;
.source "OKHttpServiceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeneralServiceTicket"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;
    .param p2, "x1"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$1;

    .prologue
    .line 923
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)V

    return-void
.end method


# virtual methods
.method public cancle()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 926
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-virtual {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->cancel()V

    .line 927
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$602(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 928
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x1

    return v0
.end method

.method public redo()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 932
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$600(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    invoke-static {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$600(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;->redo()V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$602(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;)Lcom/alibaba/alimei/restfulapi/spi/http/RedoTask;

    .line 936
    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 940
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl$GeneralServiceTicket;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;->access$800(Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpServiceImpl;Lkne;)V

    .line 941
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 951
    return-void
.end method
