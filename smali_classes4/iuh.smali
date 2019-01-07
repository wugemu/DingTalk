.class public final Liuh;
.super Ljava/lang/Object;

# interfaces
.implements Liug;


# static fields
.field private static a:Liug;

.field private static b:Lity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Liuh;->a:Liug;

    sput-object v0, Liuh;->b:Lity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Liug;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Liuh;->a:Liug;

    if-nez v1, :cond_1

    .line 9000
    if-nez p0, :cond_2

    .line 0
    :goto_1
    sput-object v0, Liuh;->b:Lity;

    new-instance v0, Liuh;

    invoke-direct {v0}, Liuh;-><init>()V

    sput-object v0, Liuh;->a:Liug;

    :cond_1
    sget-object v0, Liuh;->a:Liug;

    goto :goto_0

    .line 9000
    :cond_2
    invoke-static {p0, p1}, Litz;->a(Landroid/content/Context;Ljava/lang/String;)Litz;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Liuf;)Liue;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 1000
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 0
    :goto_0
    sget-object v1, Liuh;->b:Lity;

    invoke-interface {v1, v0}, Lity;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;)Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;

    move-result-object v0

    invoke-static {v0}, Liud;->a(Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportResult;)Liue;

    move-result-object v0

    return-object v0

    .line 2000
    :cond_0
    iget-object v0, p1, Liuf;->a:Ljava/lang/String;

    invoke-static {v0}, Lisy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->os:Ljava/lang/String;

    .line 3000
    iget-object v0, p1, Liuf;->j:Ljava/lang/String;

    .line 1000
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->rpcVersion:Ljava/lang/String;

    const-string/jumbo v0, "1"

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizType:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "apdid"

    .line 4000
    iget-object v3, p1, Liuf;->b:Ljava/lang/String;

    invoke-static {v3}, Lisy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "apdidToken"

    .line 5000
    iget-object v3, p1, Liuf;->c:Ljava/lang/String;

    invoke-static {v3}, Lisy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "umidToken"

    .line 6000
    iget-object v3, p1, Liuf;->d:Ljava/lang/String;

    invoke-static {v3}, Lisy;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->bizData:Ljava/util/Map;

    const-string/jumbo v2, "dynamicKey"

    .line 7000
    iget-object v3, p1, Liuf;->e:Ljava/lang/String;

    .line 1000
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8000
    iget-object v0, p1, Liuf;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1000
    :goto_1
    iput-object v0, v1, Lcom/alipay/tscenter/biz/rpc/report/general/model/DataReportRequest;->deviceData:Ljava/util/Map;

    move-object v0, v1

    goto :goto_0

    .line 8000
    :cond_1
    iget-object v0, p1, Liuf;->f:Ljava/util/Map;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Liuh;->b:Lity;

    invoke-interface {v0, p1}, Lity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
