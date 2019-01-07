.class public Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;
.super Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
.source "RecordServiceImpl.java"


# instance fields
.field protected a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;",
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
    .line 182
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->c:I

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;-><init>(Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->a:Ljava/util/Hashtable;

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
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
    .line 186
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->c:I

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;-><init>(Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->a:Ljava/util/Hashtable;

    .line 188
    return-void
.end method

.method private a(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V
    .locals 3
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;",
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
    .line 203
    .local p2, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    .line 204
    .local v0, "metaRecord":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam2(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam3(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam4(Ljava/util/Map;)V

    .line 208
    iget v1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->c:I

    .line 210
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

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V

    .line 213
    return-void
.end method


# virtual methods
.method public getRetryID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 242
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    .line 243
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 248
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
    .line 232
    .local p1, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->setExtProperty(Ljava/util/Map;)V

    .line 233
    return-void
.end method

.method public setRetryID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->d:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->b:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->setUniqueID(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;)V
    .locals 1
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->a(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 194
    return-void
.end method

.method public write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V
    .locals 0
    .param p1, "recordActionCode"    # Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;->a(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 199
    return-void
.end method
