.class public Lipw;
.super Ljava/lang/Object;
.source "RecordProcesser.java"


# static fields
.field static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/common/record/MetaRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field private static k:Lipw;


# instance fields
.field a:Lcom/alipay/mobile/security/bio/service/BioRecordService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lipw;->b:Ljava/util/HashMap;

    .line 20
    const-string/jumbo v0, "verifyRequest"

    sput-object v0, Lipw;->c:Ljava/lang/String;

    .line 21
    const-string/jumbo v0, "initProdRequest"

    sput-object v0, Lipw;->d:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "initProdResponse"

    sput-object v0, Lipw;->e:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "authRequest"

    sput-object v0, Lipw;->f:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "authResponse"

    sput-object v0, Lipw;->g:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "validateRequest"

    sput-object v0, Lipw;->h:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "validateResponse"

    sput-object v0, Lipw;->i:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "verifyResponse"

    sput-object v0, Lipw;->j:Ljava/lang/String;

    .line 53
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->c:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->d:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->e:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->f:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-04"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->g:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-05"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->h:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-06"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->h:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->i:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-07"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v6, Lipw;->b:Ljava/util/HashMap;

    sget-object v7, Lipw;->j:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170807-08"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20001117"

    sget-object v4, Lipw;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;
    .locals 2
    .param p0, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 34
    sget-object v0, Lipw;->k:Lipw;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lipw;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lipw;->k:Lipw;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lipw;

    invoke-direct {v0}, Lipw;-><init>()V

    sput-object v0, Lipw;->k:Lipw;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v1, Lipw;->k:Lipw;

    .line 1046
    if-nez p0, :cond_2

    .line 1047
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v1, "BioServiceManager can\'t be null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1049
    :cond_2
    const-class v0, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/BioRecordService;

    iput-object v0, v1, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    .line 42
    sget-object v0, Lipw;->k:Lipw;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lipu;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "parameter4"    # Lipu;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    sget-object v1, Lipw;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    if-eqz v1, :cond_1

    .line 93
    sget-object v1, Lipw;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    .line 97
    .local v0, "record":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam4(Ljava/util/Map;)V

    .line 98
    iget-object v1, p2, Lipu;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->getSequenceID()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam2(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V

    .line 106
    .end local v0    # "record":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Lipv;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "parameter4"    # Lipv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 109
    sget-object v1, Lipw;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Lipw;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    .line 114
    .local v0, "record":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam4(Ljava/util/Map;)V

    .line 115
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam4()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "result"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p2, Lipv;->b:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p2, Lipv;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam4()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "info"

    iget-object v3, p2, Lipv;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    iget-object v1, p2, Lipv;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam4()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "reason"

    iget-object v3, p2, Lipv;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    iget-object v1, p2, Lipv;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->getSequenceID()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam2(Ljava/lang/String;)V

    .line 131
    :cond_1
    iget-object v1, p0, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V

    .line 133
    .end local v0    # "record":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    :cond_2
    return-void

    .line 122
    .restart local v0    # "record":Lcom/alipay/mobile/security/bio/common/record/MetaRecord;
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam4()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "reason"

    const-string/jumbo v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
