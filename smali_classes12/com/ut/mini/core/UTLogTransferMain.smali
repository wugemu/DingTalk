.class public Lcom/ut/mini/core/UTLogTransferMain;
.super Ljava/lang/Object;
.source "UTLogTransferMain.java"

# interfaces
.implements Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;


# static fields
.field private static s_instance:Lcom/ut/mini/core/UTLogTransferMain;


# instance fields
.field private mInitializeLockObj:Ljava/lang/Object;

.field private volatile mIsInitialized:Z

.field public mMonitor:Lalo;

.field private mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/ut/mini/core/UTLogTransferMain;

    invoke-direct {v0}, Lcom/ut/mini/core/UTLogTransferMain;-><init>()V

    sput-object v0, Lcom/ut/mini/core/UTLogTransferMain;->s_instance:Lcom/ut/mini/core/UTLogTransferMain;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mInitializeLockObj:Ljava/lang/Object;

    .line 26
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lalo;

    .line 30
    return-void
.end method

.method private _initialize()V
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/ut/mini/core/UTLogTransferMain;->mInitializeLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-direct {v0}, Lcom/ut/mini/core/UTSendLogDelegate;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    .line 41
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-virtual {v0, p0}, Lcom/ut/mini/core/UTSendLogDelegate;->setSendLogListener(Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;)V

    .line 42
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-virtual {v0}, Lcom/ut/mini/core/UTSendLogDelegate;->start()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    .line 45
    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _transferLog(Ljava/util/Map;)V
    .locals 13
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

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    if-eqz p1, :cond_e

    .line 68
    :try_start_0
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "eventId":Ljava/lang/String;
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v2

    .line 1118
    iget-object v2, v2, Lalm;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v5

    .line 69
    :goto_0
    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lalo;

    sget v3, Laln;->a:I

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v3, v1, v6}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v3

    invoke-virtual {v2, v3}, Lalo;->a(Laln;)V

    .line 73
    :cond_0
    invoke-static {}, Laki;->a()Laki;

    move-result-object v2

    invoke-virtual {v2, p1}, Laki;->a(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2018
    invoke-static {}, Lamu;->b()V

    .line 2019
    if-eqz p1, :cond_e

    .line 2020
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2021
    const-string/jumbo v3, "_priority"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2022
    const-string/jumbo v3, "2201"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2023
    const-string/jumbo v3, "_priority"

    const-string/jumbo v6, "4"

    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    :cond_1
    const-string/jumbo v3, "2202"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2026
    const-string/jumbo v3, "_priority"

    const-string/jumbo v6, "6"

    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    :cond_2
    const-string/jumbo v6, "3"

    .line 2030
    const-string/jumbo v3, "_priority"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2031
    const-string/jumbo v3, "_priority"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v6, v3

    .line 2033
    :cond_3
    invoke-static {}, Lala;->a()Lala;

    move-result-object v3

    invoke-virtual {v3, v2}, Lala;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2035
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    move-object v9, v3

    .line 2039
    :goto_1
    const-string/jumbo v3, "_sls"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2041
    const-string/jumbo v3, "_sls"

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v5

    .line 2045
    :goto_2
    invoke-static {}, Lakh;->a()Lakh;

    move-result-object v10

    .line 3051
    invoke-static {}, Lakh;->c()Z

    move-result v3

    if-nez v3, :cond_b

    .line 3055
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    invoke-virtual {v3}, Lajw;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    .line 2045
    :goto_3
    if-eqz v3, :cond_11

    .line 2046
    invoke-static {}, Lakh;->a()Lakh;

    move-result-object v3

    invoke-virtual {v3, p1}, Lakh;->a(Ljava/util/Map;)I

    move-result v3

    .line 2049
    :goto_4
    new-instance v5, Lald;

    const/4 v6, 0x0

    invoke-direct {v5, v9, v6, v2, p1}, Lald;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 2050
    if-lez v3, :cond_d

    .line 2051
    const-string/jumbo v2, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v9, "topicId"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v2, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4211
    iput v3, v5, Lald;->g:I

    .line 2053
    invoke-static {}, Lamc;->b()Lamc;

    move-result-object v3

    .line 5038
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5039
    :try_start_1
    iget-object v2, v3, Lamc;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0x12c

    if-lt v2, v6, :cond_c

    .line 5040
    const/16 v2, 0x63

    :goto_5
    if-ltz v2, :cond_c

    .line 5041
    iget-object v6, v3, Lamc;->e:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5040
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    move v2, v4

    .line 1121
    goto/16 :goto_0

    .line 3059
    :cond_5
    :try_start_2
    iget v3, v10, Lakh;->c:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    .line 3060
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v3

    .line 3305
    iget-object v3, v3, Lajw;->c:Landroid/content/Context;

    .line 3060
    invoke-static {v3}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3061
    if-eqz v3, :cond_6

    const-string/jumbo v6, "ffffffffffffffffffffffff"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v3, v4

    .line 3062
    goto :goto_3

    .line 4046
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 4047
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    move v6, v4

    move v3, v4

    .line 4048
    :goto_6
    array-length v7, v11

    if-ge v6, v7, :cond_9

    .line 4049
    mul-int/lit8 v3, v3, 0x1f

    aget-char v7, v11, v6

    add-int/2addr v7, v3

    .line 4048
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v7

    goto :goto_6

    :cond_8
    move v3, v4

    .line 3064
    :cond_9
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, v10, Lakh;->c:I

    .line 3067
    :cond_a
    const-string/jumbo v3, ""

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v11, "hashcode"

    aput-object v11, v6, v7

    const/4 v7, 0x1

    iget v11, v10, Lakh;->c:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v11, "sample"

    aput-object v11, v6, v7

    const/4 v7, 0x3

    iget v11, v10, Lakh;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v7

    invoke-static {v3, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3069
    iget v3, v10, Lakh;->c:I

    rem-int/lit16 v3, v3, 0x2710

    iget v6, v10, Lakh;->b:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-ge v3, v6, :cond_b

    move v3, v5

    .line 3070
    goto/16 :goto_3

    :cond_b
    move v3, v4

    .line 3072
    goto/16 :goto_3

    .line 5044
    :cond_c
    :try_start_3
    iget-object v2, v3, Lamc;->e:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5045
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5046
    :try_start_4
    invoke-static {}, Lamf;->a()Lamf;

    const-string/jumbo v2, "r"

    invoke-static {v2}, Lamf;->a(Ljava/lang/String;)V

    .line 2056
    :cond_d
    if-eqz v8, :cond_f

    .line 2057
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v2

    .line 5071
    invoke-virtual {v2, v5}, Lalu;->a(Lald;)V

    .line 5072
    invoke-virtual {v2}, Lalu;->d()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    .end local v1    # "eventId":Ljava/lang/String;
    :cond_e
    :goto_7
    return-void

    .line 5045
    .restart local v1    # "eventId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 79
    .end local v1    # "eventId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v12, v0, v2}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_7

    .line 2059
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "eventId":Ljava/lang/String;
    :cond_f
    :try_start_7
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v2

    invoke-virtual {v2, v5}, Lalu;->a(Lald;)V

    goto :goto_7

    .line 76
    :cond_10
    const-string/jumbo v2, "log discard"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "aLogMap"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :cond_11
    move v3, v4

    goto/16 :goto_4

    :cond_12
    move v8, v4

    goto/16 :goto_2

    :cond_13
    move-object v9, v6

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/ut/mini/core/UTLogTransferMain;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ut/mini/core/UTLogTransferMain;->s_instance:Lcom/ut/mini/core/UTLogTransferMain;

    return-object v0
.end method


# virtual methods
.method public onLogArrived(Ljava/util/Map;)V
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
    .line 87
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/ut/mini/core/UTLogTransferMain;->_transferLog(Ljava/util/Map;)V

    .line 90
    :cond_0
    return-void
.end method

.method public transferLog(Ljava/util/Map;)V
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
    .line 55
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ut/mini/core/UTLogTransferMain;->_initialize()V

    .line 56
    const-string/jumbo v0, "_sls"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/ut/mini/core/UTLogTransferMain;->_transferLog(Ljava/util/Map;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-virtual {v0, p1}, Lcom/ut/mini/core/UTSendLogDelegate;->send(Ljava/util/Map;)V

    goto :goto_0
.end method
