.class public Lcom/alibaba/motu/crashreporter/MotuCrashReporter;
.super Ljava/lang/Object;
.source "MotuCrashReporter.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

.field static dataListenerList:Ljava/util/List;

.field static listenerList:Ljava/util/List;

.field static senderListenerList:Ljava/util/List;


# instance fields
.field enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mCrashReporter:Lhtf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    invoke-direct {v0}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;-><init>()V

    sput-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->INSTANCE:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->listenerList:Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->dataListenerList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->senderListenerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lhtf;->a()Lhtf;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/motu/crashreporter/MotuCrashReporter;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->INSTANCE:Lcom/alibaba/motu/crashreporter/MotuCrashReporter;

    return-object v0
.end method


# virtual methods
.method public addCrashReportSendListener(Lhth;)V
    .locals 2
    .param p1, "sendListener"    # Lhth;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 1331
    iget-boolean v1, v0, Lhtf;->m:Z

    if-eqz v1, :cond_0

    .line 1332
    iget-object v0, v0, Lhtf;->i:Lhtp;

    .line 2043
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lhth;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2044
    iget-object v0, v0, Lhtp;->h:Ljava/util/Map;

    invoke-interface {p1}, Lhth;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    return-void
.end method

.method public addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 9308
    iget-boolean v1, v0, Lhtf;->m:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9309
    iget-object v0, v0, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    .line 10136
    iget-object v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager;->i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    .line 10463
    iget-boolean v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->a:Z

    if-eqz v0, :cond_0

    .line 10465
    :try_start_0
    invoke-static {p1, p2}, Lcom/uc/crashsdk/JNIBridge;->nativeAddHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10468
    :cond_0
    :goto_0
    return-void

    .line 10466
    :catch_0
    move-exception v0

    .line 10467
    const-string/jumbo v1, "refresh native header info"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/motu/crashreporter/ReporterConfigure;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "channel"    # Ljava/lang/String;
    .param p5, "userNick"    # Ljava/lang/String;
    .param p6, "configure"    # Lcom/alibaba/motu/crashreporter/ReporterConfigure;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    const-string/jumbo v2, ""

    .line 84
    .local v2, "appId":Ljava/lang/String;
    invoke-static {p2}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "12278902"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "21646297"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    const-string/jumbo p2, "21646297"

    .line 88
    const-string/jumbo v2, "12278902@android"

    .line 90
    :cond_1
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/motu/crashreporter/ReporterConfigure;)Z

    move-result v0

    return v0
.end method

.method public enable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/motu/crashreporter/ReporterConfigure;)Z
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p5, "channel"    # Ljava/lang/String;
    .param p6, "userNick"    # Ljava/lang/String;
    .param p7, "configure"    # Lcom/alibaba/motu/crashreporter/ReporterConfigure;

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 97
    :try_start_0
    new-instance v18, Lhtd;

    invoke-direct/range {v18 .. v18}, Lhtd;-><init>()V

    .line 98
    .local v18, "configuration":Lhtd;
    if-eqz p7, :cond_0

    .line 99
    new-instance v2, Lhtk$a;

    const-string/jumbo v3, "Configuration.enableUncaughtExceptionIgnore"

    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableUncaughtExceptionIgnore:Z

    .line 100
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhtd;->a(Lhtk$a;)V

    .line 101
    new-instance v2, Lhtk$a;

    const-string/jumbo v3, "Configuration.enableExternalLinster"

    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableExternalLinster:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhtd;->a(Lhtk$a;)V

    .line 102
    new-instance v2, Lhtk$a;

    const-string/jumbo v3, "Configuration.enableFinalizeFake"

    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableFinalizeFake:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhtd;->a(Lhtk$a;)V

    .line 103
    new-instance v2, Lhtk$a;

    const-string/jumbo v3, "Configuration.enableUIProcessSafeGuard"

    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableUIProcessSafeGuard:Z

    .line 104
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhtd;->a(Lhtk$a;)V

    .line 105
    new-instance v2, Lhtk$a;

    const-string/jumbo v3, "Configuration.enableSecuritySDK"

    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableSecuritySDK:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhtd;->a(Lhtk$a;)V

    .line 106
    new-instance v2, Lhtk$a;

    const-string/jumbo v3, "Configuration.enableANRCatch"

    move-object/from16 v0, p7

    iget-boolean v4, v0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableCatchANRException:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lhtk$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lhtd;->a(Lhtk$a;)V

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    move-object/from16 v20, v0

    .line 3059
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_3

    .line 3062
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3064
    if-nez p1, :cond_a

    .line 3065
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "context"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3137
    :catch_0
    move-exception v2

    .line 3138
    :try_start_2
    const-string/jumbo v3, "initialize"

    invoke-static {v3, v2}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3143
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4228
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lhtf;->m:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_1

    .line 4231
    :try_start_3
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    invoke-virtual {v2}, Lcom/alibaba/motu/crashreporter/CatcherManager;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4235
    :try_start_4
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4244
    :cond_1
    :goto_1
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lhtf;->m:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    if-eqz v2, :cond_2

    .line 4246
    :try_start_5
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->i:Lhtp;

    .line 5062
    iget-object v3, v2, Lhtp;->d:Lhtm;

    invoke-virtual {v3}, Lhtm;->a()[Lhte;

    move-result-object v3

    .line 5063
    invoke-virtual {v2, v3}, Lhtp;->a([Lhte;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4250
    :try_start_6
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3147
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK doBefore complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 5190
    iget-boolean v2, v3, Lhtf;->m:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v3, Lhtf;->o:Z

    if-nez v2, :cond_9

    iget-object v2, v3, Lhtf;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v2

    if-eqz v2, :cond_9

    .line 5192
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5193
    iget-object v2, v3, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    .line 6091
    iget-object v6, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    iget-object v7, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->a:Landroid/content/Context;

    .line 6174
    if-eqz v7, :cond_4

    .line 6175
    iput-object v7, v6, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->e:Landroid/content/Context;

    .line 6177
    :cond_4
    iget-boolean v7, v6, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->a:Z

    if-nez v7, :cond_5

    .line 6178
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6180
    const-string/jumbo v7, "com.android.internal.osRuntimeInit$UncaughtHandler"

    iget-object v8, v6, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6183
    invoke-static {v6}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 6184
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->a:Z

    .line 6092
    :cond_5
    iget-object v6, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    if-eqz v6, :cond_6

    iget-object v2, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    .line 6472
    iget-boolean v6, v2, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->a:Z

    if-eqz v6, :cond_6

    iget-boolean v6, v2, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->b:Z

    if-eqz v6, :cond_18

    .line 5194
    :cond_6
    :goto_3
    iget-object v2, v3, Lhtf;->k:Lhti;

    .line 7030
    iget-object v6, v2, Lhti;->b:Lhtd;

    const-string/jumbo v7, "Configuration.disableJitCompilation"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 7031
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_7

    .line 7032
    invoke-static {}, Lhtr$b;->b()Z

    .line 7036
    :cond_7
    iget-object v6, v2, Lhti;->b:Lhtd;

    const-string/jumbo v7, "Configuration.enableFinalizeFake"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7037
    iget-object v2, v2, Lhti;->d:Lhtv;

    invoke-virtual {v2}, Lhtv;->a()V

    .line 5195
    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v3, Lhtf;->o:Z

    .line 5196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "CrashSDK enable complete elapsed time:"

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ms."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 5199
    :try_start_8
    iget-object v2, v3, Lhtf;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->setUserNick(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 113
    const/4 v2, 0x1

    .line 118
    .end local v18    # "configuration":Lhtd;
    :goto_4
    return v2

    .line 3066
    .restart local v18    # "configuration":Lhtd;
    :cond_a
    :try_start_9
    invoke-static/range {p2 .. p2}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3067
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "appId can\'t empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3068
    :cond_b
    invoke-static/range {p3 .. p3}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3069
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "appKey"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3072
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lhtf;->b:Landroid/content/Context;

    .line 3073
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->b:Landroid/content/Context;

    if-nez v2, :cond_d

    .line 3074
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Lhtf;->b:Landroid/content/Context;

    .line 3077
    :cond_d
    if-nez v18, :cond_12

    .line 3078
    new-instance v2, Lhtd;

    invoke-direct {v2}, Lhtd;-><init>()V

    move-object/from16 v0, v20

    iput-object v2, v0, Lhtf;->d:Lhtd;

    .line 3084
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3085
    new-instance v4, Lhtn;

    move-object/from16 v0, v20

    iget-object v5, v0, Lhtf;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lhtn;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->e:Lhtn;

    .line 3086
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->e:Lhtn;

    new-instance v5, Lhtl$a;

    const-string/jumbo v6, "STARTUP_TIME"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lhtn;->a(Lhtl$a;)V

    .line 3087
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->e:Lhtn;

    new-instance v5, Lhtl$a;

    const-string/jumbo v6, "APP_ID"

    const/4 v7, 0x1

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v0, v7}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lhtn;->a(Lhtl$a;)V

    .line 3088
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->e:Lhtn;

    new-instance v5, Lhtl$a;

    const-string/jumbo v6, "APP_KEY"

    const/4 v7, 0x1

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0, v7}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lhtn;->a(Lhtl$a;)V

    .line 3089
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->e:Lhtn;

    new-instance v5, Lhtl$a;

    const-string/jumbo v6, "APP_VERSION"

    const-string/jumbo v7, "DEFAULT"

    .line 3090
    move-object/from16 v0, p4

    invoke-static {v0, v7}, Lhua;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v4, v5}, Lhtn;->a(Lhtl$a;)V

    .line 3091
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->e:Lhtn;

    new-instance v5, Lhtl$a;

    const-string/jumbo v6, "CHANNEL"

    const/4 v7, 0x1

    move-object/from16 v0, p5

    invoke-direct {v5, v6, v0, v7}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lhtn;->a(Lhtl$a;)V

    .line 3092
    invoke-static {}, Lhtr;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->c:Ljava/lang/String;

    .line 3093
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->c:Ljava/lang/String;

    invoke-static {v4}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3094
    invoke-static/range {p1 .. p1}, Lhtr;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->c:Ljava/lang/String;

    .line 3096
    :cond_e
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->c:Ljava/lang/String;

    const-string/jumbo v5, "DEFAULT"

    invoke-static {v4, v5}, Lhua;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->c:Ljava/lang/String;

    .line 3097
    move-object/from16 v0, v20

    iget-object v4, v0, Lhtf;->e:Lhtn;

    new-instance v5, Lhtl$a;

    const-string/jumbo v6, "PROCESS_NAME"

    move-object/from16 v0, v20

    iget-object v7, v0, Lhtf;->c:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {v5, v6, v7, v10}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lhtn;->a(Lhtl$a;)V

    .line 3098
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CrashSDK ReporterContext initialize complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3102
    new-instance v4, Lhtq;

    move-object/from16 v0, v20

    iget-object v5, v0, Lhtf;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v5}, Lhtq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->f:Lhtq;

    .line 3103
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CrashSDK StorageManager initialize complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3107
    new-instance v4, Lhtm;

    move-object/from16 v0, v20

    iget-object v5, v0, Lhtf;->b:Landroid/content/Context;

    move-object/from16 v0, v20

    iget-object v6, v0, Lhtf;->e:Lhtn;

    move-object/from16 v0, v20

    iget-object v7, v0, Lhtf;->d:Lhtd;

    move-object/from16 v0, v20

    iget-object v10, v0, Lhtf;->f:Lhtq;

    invoke-direct {v4, v5, v6, v7, v10}, Lhtm;-><init>(Landroid/content/Context;Lhtn;Lhtd;Lhtq;)V

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->h:Lhtm;

    .line 3108
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CrashSDK ReportBuilder initialize complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3112
    new-instance v4, Lhtp;

    move-object/from16 v0, v20

    iget-object v5, v0, Lhtf;->b:Landroid/content/Context;

    move-object/from16 v0, v20

    iget-object v6, v0, Lhtf;->e:Lhtn;

    move-object/from16 v0, v20

    iget-object v7, v0, Lhtf;->d:Lhtd;

    move-object/from16 v0, v20

    iget-object v10, v0, Lhtf;->h:Lhtm;

    invoke-direct {v4, v5, v6, v7, v10}, Lhtp;-><init>(Landroid/content/Context;Lhtn;Lhtd;Lhtm;)V

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->i:Lhtp;

    .line 3113
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CrashSDK SendManager initialize complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 3117
    new-instance v2, Lhto;

    move-object/from16 v0, v20

    iget-object v7, v0, Lhtf;->c:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v10, v0, Lhtf;->f:Lhtq;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Lhto;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLhtq;)V

    move-object/from16 v0, v20

    iput-object v2, v0, Lhtf;->g:Lhto;

    .line 3119
    move-object/from16 v0, v20

    iget-object v3, v0, Lhtf;->g:Lhto;

    new-instance v4, Lhtf$a;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lhtf$a;-><init>(Lhtf;)V

    .line 4082
    const/4 v2, 0x0

    .line 4085
    iget-object v5, v3, Lhto;->d:Lhto$a;

    iget v5, v5, Lhto$a;->n:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_f

    iget-object v5, v3, Lhto;->d:Lhto$a;

    iget v5, v5, Lhto$a;->o:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_10

    .line 4086
    :cond_f
    const/16 v2, 0x10

    .line 4090
    :cond_10
    iget-object v5, v3, Lhto;->e:Lhto$a;

    if-eqz v5, :cond_11

    iget-object v5, v3, Lhto;->d:Lhto$a;

    iget-wide v6, v5, Lhto$a;->f:J

    iget-object v3, v3, Lhto;->e:Lhto$a;

    iget-wide v10, v3, Lhto$a;->f:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x7530

    cmp-long v3, v6, v10

    if-gez v3, :cond_11

    .line 4092
    or-int/lit8 v2, v2, 0x1

    .line 4095
    :cond_11
    if-eqz v4, :cond_16

    .line 4155
    and-int/lit8 v3, v2, 0x1

    .line 4156
    and-int/lit8 v2, v2, 0x10

    .line 4158
    const/4 v5, 0x1

    if-ne v3, v5, :cond_16

    const/16 v3, 0x10

    if-ne v2, v3, :cond_16

    .line 4162
    iget-object v2, v4, Lhtf$a;->a:Lhtf;

    iget-object v2, v2, Lhtf;->c:Ljava/lang/String;

    invoke-static {v2}, Lhtr;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4163
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "service process name:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lhtf$a;->a:Lhtf;

    iget-object v4, v4, Lhtf;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " launching too fast and too many"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3080
    :cond_12
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lhtf;->d:Lhtd;

    goto/16 :goto_5

    .line 4165
    :cond_13
    iget-object v2, v4, Lhtf$a;->a:Lhtf;

    iget-object v2, v2, Lhtf;->b:Landroid/content/Context;

    iget-object v3, v4, Lhtf$a;->a:Lhtf;

    iget-object v3, v3, Lhtf;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lhtr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4167
    iget-object v2, v4, Lhtf$a;->a:Lhtf;

    iget-object v2, v2, Lhtf;->b:Landroid/content/Context;

    invoke-static {}, Lhtr;->c()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v4, Lhtf$a;->a:Lhtf;

    iget-object v2, v2, Lhtf;->d:Lhtd;

    const-string/jumbo v3, "Configuration.enableUIProcessSafeGuard"

    const/4 v5, 0x0

    .line 4168
    invoke-virtual {v2, v3, v5}, Lhtd;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4169
    :cond_14
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ui process name:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lhtf$a;->a:Lhtf;

    iget-object v4, v4, Lhtf;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " launching too fast and too many"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4173
    :cond_15
    iget-object v2, v4, Lhtf$a;->a:Lhtf;

    iget-object v2, v2, Lhtf;->b:Landroid/content/Context;

    invoke-static {v2}, Lhtr;->f(Landroid/content/Context;)V

    .line 3120
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK RunningStateMonitor initialize complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3124
    new-instance v10, Lcom/alibaba/motu/crashreporter/CatcherManager;

    move-object/from16 v0, v20

    iget-object v12, v0, Lhtf;->c:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v13, v0, Lhtf;->e:Lhtn;

    move-object/from16 v0, v20

    iget-object v14, v0, Lhtf;->d:Lhtd;

    move-object/from16 v0, v20

    iget-object v15, v0, Lhtf;->f:Lhtq;

    move-object/from16 v0, v20

    iget-object v0, v0, Lhtf;->h:Lhtm;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lhtf;->i:Lhtp;

    move-object/from16 v17, v0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Lcom/alibaba/motu/crashreporter/CatcherManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lhtn;Lhtd;Lhtq;Lhtm;Lhtp;)V

    move-object/from16 v0, v20

    iput-object v10, v0, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    .line 3126
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CrashSDK CatcherManager initialize complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3130
    new-instance v4, Lhti;

    move-object/from16 v0, v20

    iget-object v5, v0, Lhtf;->b:Landroid/content/Context;

    move-object/from16 v0, v20

    iget-object v6, v0, Lhtf;->d:Lhtd;

    move-object/from16 v0, v20

    iget-object v7, v0, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    invoke-direct {v4, v5, v6, v7}, Lhti;-><init>(Landroid/content/Context;Lhtd;Lcom/alibaba/motu/crashreporter/CatcherManager;)V

    move-object/from16 v0, v20

    iput-object v4, v0, Lhtf;->k:Lhti;

    .line 3131
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "CrashSDK LabFeatureManager initialize complete elapsed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CrashSDK initialize complete elapsed time:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lhtf;->m:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 4232
    :catch_1
    move-exception v2

    .line 4233
    :try_start_a
    const-string/jumbo v3, "scan all"

    invoke-static {v3, v2}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4235
    :try_start_b
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_1

    .line 114
    .end local v18    # "configuration":Lhtd;
    :catch_2
    move-exception v19

    .line 115
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "enable"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 4235
    .restart local v18    # "configuration":Lhtd;
    :catchall_0
    move-exception v2

    :try_start_c
    move-object/from16 v0, v20

    iget-object v3, v0, Lhtf;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 4247
    :catch_3
    move-exception v2

    .line 4248
    :try_start_d
    const-string/jumbo v3, "send all"

    invoke-static {v3, v2}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 4250
    :try_start_e
    move-object/from16 v0, v20

    iget-object v2, v0, Lhtf;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lhtf;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 6474
    :cond_18
    :try_start_f
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeInstallBreakpad()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 6480
    :goto_6
    const/4 v6, 0x1

    :try_start_10
    iput-boolean v6, v2, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->b:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_3

    .line 5199
    :catchall_2
    move-exception v2

    :try_start_11
    iget-object v3, v3, Lhtf;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 6477
    :catch_4
    move-exception v6

    .line 6478
    :try_start_12
    const-string/jumbo v7, "enable crashsdk"

    invoke-static {v7, v6}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_6
.end method

.method public getCrashReporterState()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public getMyDataListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->dataListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getMyListenerList()Ljava/util/List;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 11324
    iget-boolean v2, v1, Lhtf;->m:Z

    if-eqz v2, :cond_0

    .line 11325
    iget-object v1, v1, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    .line 12116
    iget-object v2, v1, Lcom/alibaba/motu/crashreporter/CatcherManager;->h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    if-eqz v2, :cond_0

    .line 12117
    iget-object v0, v1, Lcom/alibaba/motu/crashreporter/CatcherManager;->h:Lcom/alibaba/motu/crashreporter/CatcherManager$c;

    .line 12210
    iget-object v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$c;->c:Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;

    .line 11325
    :cond_0
    return-object v0
.end method

.method public getMySenderListenerList()Ljava/util/List;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->senderListenerList:Ljava/util/List;

    return-object v0
.end method

.method public getStrExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public isTaobaoApplication(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    iget-object v0, v0, Lhtf;->c:Ljava/lang/String;

    invoke-static {v0}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    iget-object v0, v0, Lhtf;->c:Ljava/lang/String;

    const-string/jumbo v1, "com.taobao.taobao"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCrashReportSendListener(Lhth;)V
    .locals 2
    .param p1, "sendListener"    # Lhth;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 2337
    iget-boolean v1, v0, Lhtf;->m:Z

    if-eqz v1, :cond_0

    .line 2338
    iget-object v0, v0, Lhtf;->i:Lhtp;

    .line 3053
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lhth;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3054
    iget-object v0, v0, Lhtp;->h:Ljava/util/Map;

    invoke-interface {p1}, Lhth;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 5
    .param p1, "appVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    .line 7296
    iget-boolean v1, v0, Lhtf;->m:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lhua;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7297
    new-instance v1, Lhtl$a;

    const-string/jumbo v2, "APP_VERSION"

    invoke-direct {v1, v2, p1}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhtf;->a(Lhtl$a;)V

    .line 7298
    iget-object v0, v0, Lhtf;->j:Lcom/alibaba/motu/crashreporter/CatcherManager;

    .line 8132
    iget-object v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager;->i:Lcom/alibaba/motu/crashreporter/CatcherManager$b;

    .line 8446
    iget-boolean v1, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->a:Z

    if-eqz v1, :cond_0

    .line 8449
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v1, v1, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v2, "APP_VERSION"

    invoke-virtual {v1, v2}, Lhtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v2, v2, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v3, "APP_SUBVERSION"

    const-string/jumbo v4, ""

    .line 8450
    invoke-virtual {v2, v3, v4}, Lhtn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager$b;->n:Lcom/alibaba/motu/crashreporter/CatcherManager;

    iget-object v0, v0, Lcom/alibaba/motu/crashreporter/CatcherManager;->c:Lhtn;

    const-string/jumbo v3, "APP_BUILD"

    const-string/jumbo v4, ""

    .line 8451
    invoke-virtual {v0, v3, v4}, Lhtn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    .line 8449
    invoke-static {v1, v2, v0, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeSetVersionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8455
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeUpdateCrashLogNames()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 8458
    :cond_0
    :goto_0
    return-void

    .line 8456
    :catch_0
    move-exception v0

    .line 8457
    const-string/jumbo v1, "refresh native version info"

    invoke-static {v1, v0}, Lhtj;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCrashCaughtListener(Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    new-instance v1, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$2;-><init>(Lcom/alibaba/motu/crashreporter/MotuCrashReporter;Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;)V

    invoke-virtual {v0, v1}, Lhtf;->a(Lcom/alibaba/motu/crashreporter/CatcherManager$d;)V

    .line 61
    return-void
.end method

.method public setCrashCaughtListener(Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V
    .locals 2
    .param p1, "handlerWapper"    # Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    new-instance v1, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/motu/crashreporter/MotuCrashReporter$1;-><init>(Lcom/alibaba/motu/crashreporter/MotuCrashReporter;Lcom/ut/mini/crashhandler/UTCrashHandlerWapper;)V

    invoke-virtual {v0, v1}, Lhtf;->a(Lcom/alibaba/motu/crashreporter/CatcherManager$d;)V

    .line 43
    return-void
.end method

.method public setCrashReportDataListener(Lhtg;)V
    .locals 0
    .param p1, "crashReportDataListener"    # Lhtg;

    .prologue
    .line 64
    return-void
.end method

.method public setCrashReporterState(I)V
    .locals 0
    .param p1, "iType"    # I

    .prologue
    .line 165
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method public setTTid(Ljava/lang/String;)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    invoke-static {p1}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    new-instance v1, Lhtl$a;

    const-string/jumbo v2, "CHANNEL"

    invoke-direct {v1, v2, p1}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhtf;->a(Lhtl$a;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 3
    .param p1, "userNick"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    invoke-static {p1}, Lhua;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/motu/crashreporter/MotuCrashReporter;->mCrashReporter:Lhtf;

    new-instance v1, Lhtl$a;

    const-string/jumbo v2, "USERNICK"

    invoke-direct {v1, v2, p1}, Lhtl$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhtf;->a(Lhtl$a;)V

    .line 136
    :cond_0
    return-void
.end method
