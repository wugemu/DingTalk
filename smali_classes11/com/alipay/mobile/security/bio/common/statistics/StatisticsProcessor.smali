.class public Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;
.super Ljava/lang/Object;
.source "StatisticsProcessor.java"


# static fields
.field private static a:Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;


# instance fields
.field private final b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->a:Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->a:Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;

    .line 23
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->a:Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;

    return-object v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->setUniqueID(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->a:Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->a:Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;

    .line 79
    :cond_0
    return-void
.end method

.method public setGlobalMap(Ljava/util/Map;)V
    .locals 1
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;)V
    .locals 2
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;)V

    goto :goto_0
.end method

.method public writeWithKey(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 55
    return-void
.end method

.method public writeWithKeys(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;
    .param p2, "key1"    # Ljava/lang/String;
    .param p3, "value1"    # Ljava/lang/String;
    .param p4, "key2"    # Ljava/lang/String;
    .param p5, "value2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-interface {v0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public writeWithMap(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V
    .locals 1
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;
    .param p2, "m"    # Ljava/util/Map;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->c:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/StatisticsProcessor;->b:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;->write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 64
    return-void
.end method
