.class public Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;
.super Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;
.source "VerifyRecordServiceImpl.java"


# instance fields
.field private b:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->c:Ljava/util/Map;

    .line 21
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

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
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
    .line 24
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->c:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->c:Ljava/util/Map;

    .line 26
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

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    .line 27
    return-void
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
    .line 111
    .local p1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "val":Ljava/lang/Object;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "val":Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public getUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setExtProperty(Ljava/util/Map;)V
    .locals 0
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
    .line 155
    .local p1, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->c:Ljava/util/Map;

    .line 156
    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueID"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public varargs specialWrite(I[Ljava/lang/String;)V
    .locals 3
    .param p1, "actionCode"    # I
    .param p2, "other"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "otherLength":I
    if-eqz p2, :cond_0

    .line 130
    array-length v0, p2

    .line 133
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->write(I)V

    goto :goto_0

    .line 138
    :pswitch_1
    aget-object v1, p2, v1

    invoke-virtual {p0, p1, v1}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->write(ILjava/lang/String;)V

    goto :goto_0

    .line 141
    :pswitch_2
    aget-object v1, p2, v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public write(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 31
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->write(ILjava/lang/String;)V

    .line 32
    return-void
.end method

.method public write(ILjava/lang/String;)V
    .locals 8
    .param p1, "actionCode"    # I
    .param p2, "other"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    .line 39
    .local v3, "metaRecord":Lcom/alipay/mobile/security/faceauth/model/MetaRecord;
    if-eqz v3, :cond_0

    .line 40
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "RecordServiceImpl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 42
    :cond_0
    if-eqz v3, :cond_1

    .line 44
    new-instance v1, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;-><init>()V

    .line 45
    .local v1, "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getCaseID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setUserCaseID(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getActionID()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "behaviourId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setAppID(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getSeedID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setSeedID(Ljava/lang/String;)V

    .line 49
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam1(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam2(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getBizType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setBizType(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getPriority()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setLoggerLevel(I)V

    .line 54
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->c:Ljava/util/Map;

    invoke-static {v1, v5}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->a(Lcom/alipay/mobile/security/bio/log/VerifyBehavior;Ljava/util/Map;)V

    .line 56
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->convert(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    move-result-object v0

    .line 58
    .local v0, "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    .line 59
    .local v4, "monitorLogService":Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;
    if-nez v4, :cond_2

    .line 60
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".write("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") failed. MonitorLogService==null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    .line 65
    .end local v0    # "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .end local v1    # "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .end local v2    # "behaviourId":Ljava/lang/String;
    .end local v4    # "monitorLogService":Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;
    :cond_1
    :goto_0
    return-void

    .line 62
    .restart local v0    # "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .restart local v1    # "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .restart local v2    # "behaviourId":Ljava/lang/String;
    .restart local v4    # "monitorLogService":Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;
    :cond_2
    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;->logBehavior(Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;Lcom/alipay/mobile/security/bio/log/VerifyBehavior;)V

    goto :goto_0
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "actionCode"    # I
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->write(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "actionCode"    # I
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    .local p4, "param3":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->a:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    .line 72
    .local v3, "metaRecord":Lcom/alipay/mobile/security/faceauth/model/MetaRecord;
    if-eqz v3, :cond_0

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "RecordServiceImpl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 75
    :cond_0
    if-eqz v3, :cond_1

    .line 77
    new-instance v1, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;-><init>()V

    .line 78
    .local v1, "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getCaseID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setUserCaseID(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getActionID()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "behaviourId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setAppID(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getSeedID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setSeedID(Ljava/lang/String;)V

    .line 84
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam1(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam2(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, p3}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setParam3(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getBizType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setBizType(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;->getPriority()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/security/bio/log/VerifyBehavior;->setLoggerLevel(I)V

    .line 90
    iget-object v5, p0, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->c:Ljava/util/Map;

    invoke-static {v1, v5}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->a(Lcom/alipay/mobile/security/bio/log/VerifyBehavior;Ljava/util/Map;)V

    .line 92
    invoke-static {v1, p4}, Lcom/alipay/mobile/security/faceauth/biz/VerifyRecordServiceImpl;->a(Lcom/alipay/mobile/security/bio/log/VerifyBehavior;Ljava/util/Map;)V

    .line 94
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;->convert(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;

    move-result-object v0

    .line 96
    .local v0, "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;

    .line 97
    .local v4, "monitorLogService":Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;
    if-nez v4, :cond_2

    .line 98
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".write("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") failed. MonitorLogService==null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    .line 103
    .end local v0    # "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .end local v1    # "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .end local v2    # "behaviourId":Ljava/lang/String;
    .end local v4    # "monitorLogService":Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;
    :cond_1
    :goto_0
    return-void

    .line 100
    .restart local v0    # "behEnum":Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;
    .restart local v1    # "behavior":Lcom/alipay/mobile/security/bio/log/VerifyBehavior;
    .restart local v2    # "behaviourId":Ljava/lang/String;
    .restart local v4    # "monitorLogService":Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;
    :cond_2
    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/security/bio/service/local/monitorlog/MonitorLogService;->logBehavior(Lcom/alipay/mobile/security/bio/log/BehaviourIdEnum;Lcom/alipay/mobile/security/bio/log/VerifyBehavior;)V

    goto :goto_0
.end method
