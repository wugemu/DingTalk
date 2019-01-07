.class final Liua;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

.field final synthetic b:Litz;


# direct methods
.method constructor <init>(Litz;Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)V
    .locals 0

    iput-object p1, p0, Liua;->b:Litz;

    iput-object p2, p0, Liua;->a:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    :try_start_0
    iget-object v0, p0, Liua;->b:Litz;

    invoke-static {v0}, Litz;->a(Litz;)Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;

    move-result-object v0

    iget-object v1, p0, Liua;->a:Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    invoke-interface {v0, v1}, Lcom/alipay/tscenter/biz/rpc/report/general/DataReportService;->reportData(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v0

    invoke-static {v0}, Litz;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;-><init>()V

    invoke-static {v1}, Litz;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    invoke-static {}, Litz;->a()Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;->success:Z

    invoke-static {}, Litz;->a()Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "static data rpc upload error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lisy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Lisy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method
