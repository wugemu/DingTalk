.class public final Lbbk;
.super Ljava/lang/Object;
.source "DataSourceRemote.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    return-void
.end method

.method static synthetic a(Lbbk;Ljava/lang/Iterable;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lbbk;
    .param p1, "x1"    # Ljava/lang/Iterable;
    .param p2, "x2"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    .prologue
    .line 93
    .line 4190
    const/4 v0, 0x0

    .line 4191
    if-eqz p1, :cond_2

    .line 4192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4193
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazm;

    .line 4194
    if-eqz v0, :cond_0

    .line 4195
    iget-object v3, v0, Lazm;->m:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v3

    .line 4196
    sget-object v4, Lbbk$12;->a:[I

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 4198
    :pswitch_0
    new-instance v3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 4199
    invoke-virtual {v3, p2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 4200
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4203
    :pswitch_1
    new-instance v3, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    invoke-direct {v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazm;)V

    .line 4204
    invoke-virtual {v3, p2}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 4205
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4208
    :pswitch_2
    new-instance v3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 4209
    invoke-virtual {v3, p2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 4210
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4217
    :cond_1
    sget-object v0, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 93
    :cond_2
    return-object v0

    .line 4196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V
    .locals 7
    .param p1, "forward"    # Ljava/lang/Boolean;
    .param p2, "cursor"    # Ljava/lang/Long;
    .param p3, "size"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    const/4 v4, 0x0

    .line 124
    new-instance v6, Lbbk$1;

    invoke-direct {v6, p0, p4}, Lbbk$1;-><init>(Lbbk;Lcma;)V

    .line 140
    .local v6, "callback":Lcmi;, "Lcmi<Ljava/util/List<Lazm;>;>;"
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DataSourceRemote] retrieveAllDing forward:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", cursor:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ", size:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 141
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 142
    .local v0, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lbbk$22;

    invoke-direct {v5, p0, v6}, Lbbk$22;-><init>(Lbbk;Lcmi;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->pullDingListOrderBySendAt(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 144
    return-void
.end method

.method private b(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V
    .locals 7
    .param p1, "forward"    # Ljava/lang/Boolean;
    .param p2, "cursor"    # Ljava/lang/Long;
    .param p3, "size"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    const/4 v4, 0x3

    .line 167
    new-instance v6, Lbbk$33;

    invoke-direct {v6, p0, p4}, Lbbk$33;-><init>(Lbbk;Lcma;)V

    .line 183
    .local v6, "callback":Lcmi;, "Lcmi<Ljava/util/List<Lazm;>;>;"
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[DataSourceRemote] retrieveDeletedDing forward:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", cursor:"

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, ", size:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 184
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 185
    .local v0, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lbbk$42;

    invoke-direct {v5, p0, v6}, Lbbk$42;-><init>(Lbbk;Lcmi;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->pullDingListOrderBySendAt(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 187
    return-void
.end method


# virtual methods
.method final a(Lbcn;Lcma;)V
    .locals 5
    .param p1, "createModel"    # Lbcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcn;",
            "Lcma",
            "<",
            "Lbfj;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1407
    .local p2, "listener":Lcma;, "Lcma<Lbfj;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1409
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->dt_errmsg_network_abnormal:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :goto_0
    return-void

    .line 1414
    :cond_0
    new-instance v0, Lbbk$73;

    invoke-direct {v0, p0, p2}, Lbbk$73;-><init>(Lbbk;Lcma;)V

    .line 1433
    .local v0, "callback":Lcmi;, "Lcmi<Lbdh;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] createEventsWrapper."

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1434
    const-class v2, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 1435
    .local v1, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    new-instance v2, Lbbk$74;

    invoke-direct {v2, p0, v0}, Lbbk$74;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v1, p1, v2}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->createEventsWrapper(Lbcn;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lbcx;Lcma;)V
    .locals 6
    .param p1, "dingSendModel"    # Lbcx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcx;",
            "Lcma",
            "<",
            "Lbcj;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 333
    .local p2, "listener":Lcma;, "Lcma<Lbcj;>;"
    if-nez p1, :cond_1

    .line 334
    if-eqz p2, :cond_0

    .line 335
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "ding invalid!"

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "DING_SEND_RATE_EVENT"

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "ding invalid!"

    invoke-static {v2, v3, v4, v5}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v2, "sendDingV2 failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "dingSendModel is null"

    invoke-static {v2, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->dt_errmsg_network_abnormal:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] sendDingV2."

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 349
    const-class v2, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 350
    .local v1, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    new-instance v0, Lbbk$15;

    invoke-direct {v0, p0, p2}, Lbbk$15;-><init>(Lbbk;Lcma;)V

    .line 373
    .local v0, "callback":Lcmi;, "Lcmi<Lbcj;>;"
    new-instance v2, Lbbk$16;

    invoke-direct {v2, p0, v0}, Lbbk$16;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v1, p1, v2}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->sendDing(Lbcx;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lbgd;Lcma;)V
    .locals 10
    .param p1, "taskSendObject"    # Lbgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbgd;",
            "Lcma",
            "<",
            "Lbfy;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Lbfy;>;"
    const-wide/16 v8, 0x0

    .line 378
    if-nez p1, :cond_0

    .line 380
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "ding invalid!"

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "TASK_SEND_RATE_EVENT"

    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "ding invalid!"

    invoke-static {v2, v3, v4, v5}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string/jumbo v2, "createTask failed"

    const-string/jumbo v3, "-1"

    const-string/jumbo v4, "taskSendObject is null"

    invoke-static {v2, v3, v4}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    const-string/jumbo v2, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laxp$i;->dt_errmsg_network_abnormal:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] createTask."

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 394
    const-class v2, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;

    .line 395
    .local v1, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;
    new-instance v0, Lbbk$17;

    invoke-direct {v0, p0, p2}, Lbbk$17;-><init>(Lbbk;Lcma;)V

    .line 2051
    .local v0, "callback":Lcmi;, "Lcmi<Lbdz;>;"
    new-instance v2, Lbee;

    invoke-direct {v2}, Lbee;-><init>()V

    .line 2053
    iget-object v3, p1, Lbgd;->a:Lben;

    if-eqz v3, :cond_2

    .line 2054
    iget-object v3, p1, Lbgd;->a:Lben;

    .line 2110
    new-instance v4, Lbcb;

    invoke-direct {v4}, Lbcb;-><init>()V

    .line 2111
    iget-object v5, v3, Lben;->a:Ljava/util/List;

    iput-object v5, v4, Lbcb;->a:Ljava/util/List;

    .line 2112
    iget v5, v3, Lben;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lbcb;->b:Ljava/lang/Integer;

    .line 2113
    iget-wide v6, v3, Lben;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lbcb;->c:Ljava/lang/Long;

    .line 2114
    iget v5, v3, Lben;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lbcb;->d:Ljava/lang/Integer;

    .line 2115
    iget-object v5, v3, Lben;->e:Ljava/lang/String;

    iput-object v5, v4, Lbcb;->e:Ljava/lang/String;

    .line 2116
    iget-object v5, v3, Lben;->f:Ljava/lang/String;

    iput-object v5, v4, Lbcb;->f:Ljava/lang/String;

    .line 2117
    iget-object v5, v3, Lben;->g:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    iput-object v5, v4, Lbcb;->g:Lcom/alibaba/android/ding/base/objects/idl/AudioContentModel;

    .line 2118
    iget-object v5, v3, Lben;->h:Ljava/util/List;

    iput-object v5, v4, Lbcb;->h:Ljava/util/List;

    .line 2119
    iget-object v3, v3, Lben;->i:Ljava/util/Map;

    iput-object v3, v4, Lbcb;->i:Ljava/util/Map;

    .line 2054
    iput-object v4, v2, Lbee;->a:Lbcb;

    .line 2057
    :cond_2
    iget-wide v4, p1, Lbgd;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbee;->b:Ljava/lang/Long;

    .line 2059
    iget-object v3, p1, Lbgd;->c:Ljava/util/List;

    iput-object v3, v2, Lbee;->c:Ljava/util/List;

    .line 2061
    iget-wide v4, p1, Lbgd;->d:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 2062
    iget-wide v4, p1, Lbgd;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbee;->d:Ljava/lang/Long;

    .line 2065
    :cond_3
    iget-object v3, p1, Lbgd;->e:Lbgb;

    if-eqz v3, :cond_4

    .line 2066
    iget-object v3, p1, Lbgd;->e:Lbgb;

    .line 3035
    new-instance v4, Lbec;

    invoke-direct {v4}, Lbec;-><init>()V

    .line 3037
    iget v5, v3, Lbgb;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lbec;->a:Ljava/lang/Integer;

    .line 3038
    iget-wide v6, v3, Lbgb;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v4, Lbec;->b:Ljava/lang/Long;

    .line 2066
    iput-object v4, v2, Lbee;->e:Lbec;

    .line 2069
    :cond_4
    iget-object v3, p1, Lbgd;->f:Lbfn;

    if-eqz v3, :cond_5

    .line 2070
    iget-object v3, p1, Lbgd;->f:Lbfn;

    .line 4021
    iget v3, v3, Lbfn;->a:I

    .line 2070
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbee;->f:Ljava/lang/Integer;

    .line 2071
    iget-object v3, p1, Lbgd;->f:Lbfn;

    .line 4029
    iget-wide v4, v3, Lbfn;->b:J

    .line 2071
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbee;->g:Ljava/lang/Long;

    .line 2072
    iget-object v3, p1, Lbgd;->f:Lbfn;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lbee;->h:Ljava/lang/Long;

    .line 2073
    iget-object v3, p1, Lbgd;->f:Lbfn;

    .line 4045
    const/4 v3, 0x0

    .line 2073
    iput-object v3, v2, Lbee;->i:Ljava/util/List;

    .line 2074
    iget-object v3, p1, Lbgd;->f:Lbfn;

    .line 4053
    iget-boolean v3, v3, Lbfn;->c:Z

    .line 2074
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lbee;->j:Ljava/lang/Boolean;

    .line 418
    :cond_5
    new-instance v3, Lbbk$18;

    invoke-direct {v3, p0, v0}, Lbbk$18;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/ding/data/idl/service/IDLDingTaskService;->createTask(Lbee;Lcmi;)V

    goto/16 :goto_0
.end method

.method public final a(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 310
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lbbk$13;

    invoke-direct {v0, p0, p1}, Lbbk$13;-><init>(Lbbk;Lcma;)V

    .line 326
    .local v0, "listener":Lcmi;, "Lcmi<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] readAllComment."

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 327
    const-class v2, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 328
    .local v1, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    new-instance v2, Lbbk$14;

    invoke-direct {v2, p0, v0}, Lbbk$14;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v1, v2}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->readAllComment(Liyv;)V

    .line 330
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)V
    .locals 4
    .param p1, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "size"    # I
    .param p3, "backwards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    const/4 v1, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0, p4}, Lbbk;->a(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p4}, Lbbk;->a(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 521
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    new-instance v0, Lbbk$26;

    invoke-direct {v0, p0, p2}, Lbbk$26;-><init>(Lbbk;Lcma;)V

    .line 582
    .local v0, "callback":Lcmi;, "Lcmi<Lbcr;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[DataSourceRemote] getDingsFromServer."

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 583
    const-class v2, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 584
    .local v1, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    new-instance v2, Lbbk$27;

    invoke-direct {v2, p0, v0}, Lbbk$27;-><init>(Lbbk;Lcmi;)V

    invoke-interface {v1, p1, v2}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->listDings(Ljava/util/List;Liyv;)V

    .line 586
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)V
    .locals 4
    .param p1, "anchor"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "size"    # I
    .param p3, "backwards"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "IZ",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p4, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_0

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0, p4}, Lbbk;->b(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p4}, Lbbk;->b(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Lcma;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
