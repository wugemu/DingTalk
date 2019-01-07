.class public Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;
.super Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;
.source "RecordExtServiceImpl.java"


# instance fields
.field protected a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;",
            "Lcom/alipay/mobile/security/bio/common/record/MetaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtService;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->c:I

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;-><init>(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->a:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V
    .locals 3
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    .local p2, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    .line 218
    .local v0, "metaRecord":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    iget v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam2(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam3(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam4(Ljava/util/Map;)V

    .line 222
    iget v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->c:I

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RecordExtService:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V

    .line 227
    return-void
.end method


# virtual methods
.method public getRetryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 256
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    .line 257
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public setExtProperty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->setExtProperty(Ljava/util/Map;)V

    .line 247
    return-void
.end method

.method public setRetryID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->d:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->setUniqueID(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;)V
    .locals 1
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->a(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 208
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V
    .locals 0
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;->a(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;Ljava/util/Map;)V

    .line 213
    return-void
.end method
