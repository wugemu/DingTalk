.class public Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;
.super Lcom/alipay/mobile/security/bio/service/BioRecordService;
.source "BioRecordServiceImpl.java"


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/Map;
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

.field protected d:Ljava/lang/Object;

.field private e:Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioRecordService;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->b:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->d:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x461c4000    # 10000.0f

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->b:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 38
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Lcom/alipay/mobile/security/bio/log/VerifyBehavior;Ljava/util/Map;)V
    .locals 6
    .param p0, "behavior"    # Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/security/bio/log/VerifyBehavior;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, "val":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "val":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public getSequenceID()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    return v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->onCreate(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 45
    const-class v0, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->e:Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " call mBioServiceManager.getBioService(MonitorLogService.class): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->e:Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public setExtProperty(Ljava/util/Map;)V
    .locals 5
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    .line 1068
    if-eqz p1, :cond_1

    .line 1069
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1070
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1072
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 1073
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1074
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->b:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public superWrite(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V
    .locals 5
    .param p1, "metaRecord"    # Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setParam1(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->isEnableSequence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    .line 146
    iget v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->setSequenceId(I)V

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    const-string/jumbo v2, "sequence_id"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    const-string/jumbo v2, "sequence_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V
    .locals 6
    .param p1, "metaRecord"    # Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->superWrite(Lcom/alipay/mobile/security/bio/common/record/MetaRecord;)V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(sequenceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 91
    if-eqz p1, :cond_0

    .line 94
    new-instance v1, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;-><init>()V

    .line 95
    .local v1, "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getCaseID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setUserCaseID(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getActionID()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "behaviourId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setAppID(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getSeedID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setSeedID(Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam1(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam2(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam3(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getBizType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setBizType(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getPriority()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setLoggerLevel(I)V

    .line 108
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->c:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a(Lcom/alipay/mobile/security/bio/log/VerifyBehavior;Ljava/util/Map;)V

    .line 109
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;->getParam4()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->a(Lcom/alipay/mobile/security/bio/log/VerifyBehavior;Ljava/util/Map;)V

    .line 111
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->convert(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    move-result-object v0

    .line 113
    .local v0, "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->e:Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    if-nez v3, :cond_1

    .line 114
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".write("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") failed. MonitorLogService==null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .end local v1    # "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .end local v2    # "behaviourId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v0    # "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .restart local v1    # "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .restart local v2    # "behaviourId":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/common/record/impl/BioRecordServiceImpl;->e:Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    invoke-virtual {v3, v0, v1}, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;->logBehavior(Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;Lcom/alipay/mobile/security/bio/log/VerifyBehavior;)V

    goto :goto_0
.end method
