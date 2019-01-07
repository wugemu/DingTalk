.class public Ljip;
.super Ljava/lang/Object;
.source "MessageHandler.java"


# static fields
.field private static i:Ljip;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/data/Message;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljje;

.field public e:I

.field protected f:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

.field public g:Lcom/taobao/accs/flowcontrol/FlowControl;

.field public h:Lcom/taobao/accs/antibrush/AntiBrush;

.field private j:Landroid/content/Context;

.field private k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Ljip;->i:Ljip;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljip;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    iput-boolean v3, p0, Ljip;->c:Z

    .line 85
    new-instance v0, Lcom/taobao/accs/data/MessageHandler$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/data/MessageHandler$1;-><init>(Ljip;)V

    iput-object v0, p0, Ljip;->k:Ljava/util/LinkedHashMap;

    .line 934
    new-instance v0, Ljip$2;

    invoke-direct {v0, p0}, Ljip$2;-><init>(Ljip;)V

    iput-object v0, p0, Ljip;->l:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Ljip;->j:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    iget-object v1, p0, Ljip;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljip;->f:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 108
    new-instance v0, Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v1, p0, Ljip;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/flowcontrol/FlowControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljip;->g:Lcom/taobao/accs/flowcontrol/FlowControl;

    .line 109
    new-instance v0, Lcom/taobao/accs/antibrush/AntiBrush;

    iget-object v1, p0, Ljip;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/accs/antibrush/AntiBrush;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljip;->h:Lcom/taobao/accs/antibrush/AntiBrush;

    .line 110
    invoke-direct {p0}, Ljip;->b()V

    .line 1913
    :try_start_0
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iget-object v1, p0, Ljip;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :goto_0
    return-void

    .line 1914
    :catch_0
    move-exception v0

    .line 1915
    const-string/jumbo v1, "MessageHandler"

    const-string/jumbo v2, "restoreTraffics"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Ljjm;)Ljava/util/Map;
    .locals 15
    .param p0, "reader"    # Ljjm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljjm;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 470
    .local v1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljjm;->b()I

    move-result v3

    .line 471
    .local v3, "extHeaderLen":I
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 472
    const-string/jumbo v10, "MessageHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "extHeaderLen:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    const/4 v6, 0x0

    .local v6, "readLen":I
    move-object v2, v1

    .line 476
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .local v2, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :goto_0
    if-ge v6, v3, :cond_2

    .line 477
    :try_start_1
    invoke-virtual {p0}, Ljjm;->b()I

    move-result v5

    .line 478
    .local v5, "key":I
    add-int/lit8 v6, v6, 0x2

    .line 479
    const v10, 0xfc00

    and-int/2addr v10, v5

    shr-int/lit8 v7, v10, 0xa

    .line 480
    .local v7, "type":I
    and-int/lit16 v9, v5, 0x3ff

    .line 481
    .local v9, "valueLen":I
    invoke-static {v7}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->valueOf(I)Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    move-result-object v4

    .line 482
    .local v4, "extHeaderType":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    invoke-virtual {p0, v9}, Ljjm;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, "value":Ljava/lang/String;
    add-int/2addr v6, v9

    .line 484
    if-eqz v4, :cond_4

    .line 485
    if-nez v2, :cond_3

    .line 486
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 488
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :goto_2
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 492
    const-string/jumbo v10, "MessageHandler"

    const-string/jumbo v11, ""

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "extHeaderType"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "value"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object v8, v12, v13

    invoke-static {v10, v11, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v2, v1

    .line 494
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_0

    .end local v4    # "extHeaderType":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v5    # "key":I
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "valueLen":I
    :cond_2
    move-object v1, v2

    .line 498
    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .end local v3    # "extHeaderLen":I
    .end local v6    # "readLen":I
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :goto_3
    return-object v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v10, "MessageHandler"

    const-string/jumbo v11, "parseExtHeader"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v11, v0, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_3

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v3    # "extHeaderLen":I
    .restart local v6    # "readLen":I
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_4

    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v4    # "extHeaderType":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .restart local v5    # "key":I
    .restart local v7    # "type":I
    .restart local v8    # "value":Ljava/lang/String;
    .restart local v9    # "valueLen":I
    :cond_3
    move-object v1, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_1

    .end local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    :cond_4
    move-object v1, v2

    .end local v2    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v1    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljip;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-class v1, Ljip;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljip;->i:Ljip;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljip;

    invoke-direct {v0, p0}, Ljip;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljip;->i:Ljip;

    .line 98
    :cond_0
    sget-object v0, Ljip;->i:Ljip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    sput-object v0, Ljip;->i:Ljip;

    .line 103
    return-void
.end method

.method private a(I[BLjava/lang/String;I)V
    .locals 40
    .param p1, "compress"    # I
    .param p2, "data"    # [B
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "proVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v33, Ljjm;

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljjm;-><init>([B)V

    .line 169
    .local v33, "reader":Ljjm;
    invoke-virtual/range {v33 .. v33}, Ljjm;->b()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v26, v0

    .line 170
    .local v26, "flags":J
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "flag:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    long-to-int v12, v0

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_0
    invoke-virtual/range {v33 .. v33}, Ljjm;->a()I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljjm;->a(I)Ljava/lang/String;

    move-result-object v36

    .line 175
    .local v36, "target":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "target:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_1
    invoke-virtual/range {v33 .. v33}, Ljjm;->a()I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljjm;->a(I)Ljava/lang/String;

    move-result-object v35

    .line 180
    .local v35, "source":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "source:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_2
    :try_start_0
    invoke-virtual/range {v33 .. v33}, Ljjm;->a()I

    move-result v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljjm;->a(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 193
    .local v22, "dataId":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 194
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "dataId:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 199
    .local v38, "uniqueId":Ljava/lang/String;
    const/4 v8, 0x0

    .line 200
    .local v8, "oriData":[B
    const/4 v9, 0x0

    .line 201
    .local v9, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    invoke-virtual/range {v33 .. v33}, Ljjm;->available()I

    move-result v4

    if-lez v4, :cond_5

    .line 202
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_4

    .line 203
    invoke-static/range {v33 .. v33}, Ljip;->a(Ljjm;)Ljava/util/Map;

    move-result-object v9

    .line 206
    :cond_4
    if-nez p1, :cond_c

    .line 2056
    invoke-virtual/range {v33 .. v33}, Ljjm;->available()I

    move-result v4

    new-array v8, v4, [B

    .line 2057
    .end local v8    # "oriData":[B
    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljjm;->read([B)I

    .line 239
    .restart local v8    # "oriData":[B
    :cond_5
    :goto_0
    invoke-virtual/range {v33 .. v33}, Ljjm;->close()V

    .line 241
    if-nez v8, :cond_e

    .line 242
    :try_start_1
    const-string/jumbo v4, "MessageHandler"

    const-string/jumbo v10, "oriData is null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_6
    :goto_1
    const/16 v4, 0xf

    shr-long v12, v26, v4

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    long-to-int v4, v12

    .line 3053
    packed-switch v4, :pswitch_data_0

    .line 3063
    const/16 v30, 0x0

    .line 252
    .local v30, "msgType":I
    :goto_2
    const/16 v4, 0xd

    shr-long v12, v26, v4

    const-wide/16 v14, 0x3

    and-long/2addr v12, v14

    long-to-int v4, v12

    invoke-static {v4}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v7

    .line 254
    .local v7, "reqType":Lcom/taobao/accs/data/Message$ReqType;
    const/16 v4, 0xc

    shr-long v12, v26, v4

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    long-to-int v0, v12

    move/from16 v24, v0

    .line 256
    .local v24, "error":I
    const/16 v4, 0xb

    shr-long v12, v26, v4

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    long-to-int v4, v12

    .line 3109
    packed-switch v4, :pswitch_data_1

    .line 3115
    const/16 v34, 0x1

    .line 258
    .local v34, "resType":I
    :goto_3
    const/4 v4, 0x6

    shr-long v12, v26, v4

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    long-to-int v4, v12

    const/4 v10, 0x1

    if-ne v4, v10, :cond_f

    const/16 v31, 0x1

    .line 260
    .local v31, "needBusinessAck":Z
    :goto_4
    const-string/jumbo v10, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Ljip;->e:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " dataId:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " type:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Lcom/taobao/accs/data/Message$a;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " reqType:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/taobao/accs/data/Message$ReqType;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, " resType:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 3120
    packed-switch v34, :pswitch_data_2

    .line 3126
    const-string/jumbo v4, "INVALID"

    .line 260
    :goto_5
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v10, v4, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_a

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    if-eq v7, v4, :cond_7

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_a

    .line 263
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 264
    .local v5, "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v5, :cond_11

    .line 265
    const-string/jumbo v4, "MessageHandler"

    const-string/jumbo v10, "reqMessage not null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 266
    const/16 v6, 0xc8

    .line 267
    .local v6, "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_8

    .line 269
    :try_start_2
    new-instance v29, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    .local v29, "jObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "code"

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result v6

    .line 276
    .end local v29    # "jObject":Lorg/json/JSONObject;
    :cond_8
    :goto_6
    :try_start_3
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 277
    invoke-virtual {v5}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onRecAck()V

    .line 280
    :cond_9
    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_10

    move-object/from16 v4, p0

    .line 281
    invoke-direct/range {v4 .. v9}, Ljip;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 285
    :goto_7
    new-instance v10, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v11, v5, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lic;->j()Z

    move-result v12

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v14, v4

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljip;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    .line 291
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    .end local v6    # "errorCode":I
    :cond_a
    :goto_8
    if-nez v30, :cond_13

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_13

    .line 292
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 293
    .restart local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v5, :cond_12

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v8, v1, v2}, Ljip;->a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 396
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    .end local v7    # "reqType":Lcom/taobao/accs/data/Message$ReqType;
    .end local v8    # "oriData":[B
    .end local v9    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .end local v22    # "dataId":Ljava/lang/String;
    .end local v24    # "error":I
    .end local v30    # "msgType":I
    .end local v31    # "needBusinessAck":Z
    .end local v34    # "resType":I
    .end local v38    # "uniqueId":Ljava/lang/String;
    :cond_b
    :goto_9
    return-void

    .line 187
    :catch_0
    move-exception v23

    .line 188
    .local v23, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "dataId read error "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-virtual/range {v33 .. v33}, Ljjm;->close()V

    .line 190
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "send_fail"

    const-string/jumbo v12, ""

    const-string/jumbo v13, "1"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Ljip;->e:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "data id read error"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v10, v12, v13, v14}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 208
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v8    # "oriData":[B
    .restart local v9    # "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    .restart local v22    # "dataId":Ljava/lang/String;
    .restart local v38    # "uniqueId":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 209
    new-instance v25, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v25, "inputStream":Ljava/util/zip/GZIPInputStream;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    .local v20, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    :try_start_4
    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 216
    .local v21, "buf":[B
    :goto_a
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v32

    .local v32, "r":I
    if-lez v32, :cond_d

    .line 217
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    .line 222
    .end local v21    # "buf":[B
    .end local v32    # "r":I
    :catch_1
    move-exception v23

    .line 223
    .restart local v23    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "uncompress data error "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "send_fail"

    const-string/jumbo v12, ""

    const-string/jumbo v13, "1"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Ljip;->e:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " uncompress data error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v10, v12, v13, v14}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 232
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 236
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 220
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v21    # "buf":[B
    .restart local v32    # "r":I
    :cond_d
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    .line 228
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 232
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 236
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 226
    .end local v21    # "buf":[B
    .end local v32    # "r":I
    :catchall_0
    move-exception v4

    .line 228
    :try_start_9
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 232
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 235
    :goto_b
    throw v4

    .line 244
    .end local v20    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v25    # "inputStream":Ljava/util/zip/GZIPInputStream;
    :cond_e
    :try_start_a
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "oriData:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_1

    .line 391
    :catch_4
    move-exception v23

    .line 392
    .restart local v23    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MessageHandler"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "send_fail"

    const-string/jumbo v12, ""

    const-string/jumbo v13, "1"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Ljip;->e:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v10, v12, v13, v14}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 3055
    .end local v23    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 3057
    :pswitch_1
    const/16 v30, 0x1

    goto/16 :goto_2

    .line 3059
    :pswitch_2
    const/16 v30, 0x2

    goto/16 :goto_2

    .line 3061
    :pswitch_3
    const/16 v30, 0x3

    goto/16 :goto_2

    .line 3111
    .restart local v7    # "reqType":Lcom/taobao/accs/data/Message$ReqType;
    .restart local v24    # "error":I
    .restart local v30    # "msgType":I
    :pswitch_4
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 3113
    :pswitch_5
    const/16 v34, 0x1

    goto/16 :goto_3

    .line 258
    .restart local v34    # "resType":I
    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 3122
    .restart local v31    # "needBusinessAck":Z
    :pswitch_6
    :try_start_b
    const-string/jumbo v4, "NO_ACK"

    goto/16 :goto_5

    .line 3124
    :pswitch_7
    const-string/jumbo v4, "NEED_ACK"

    goto/16 :goto_5

    .line 272
    .restart local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    .restart local v6    # "errorCode":I
    :catch_5
    move-exception v4

    const/4 v6, -0x3

    goto/16 :goto_6

    .line 3506
    :cond_10
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v11, v5

    move v12, v6

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Ljip;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    goto/16 :goto_7

    .line 287
    .end local v6    # "errorCode":I
    :cond_11
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Ljip;->e:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " data ack/res reqMessage is null,"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 297
    :cond_12
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Ljip;->e:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " contorl ACK reqMessage is null"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 299
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Message not handled, body:"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    :cond_13
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_b

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v7, v4, :cond_b

    .line 309
    const-string/jumbo v4, "\\|"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v37

    .line 310
    .local v37, "targets":[Ljava/lang/String;
    if-eqz v37, :cond_b

    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x2

    if-lt v4, v10, :cond_b

    .line 313
    const-string/jumbo v4, "MessageHandler"

    const-string/jumbo v10, "onPush"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    if-eqz v4, :cond_14

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    invoke-virtual {v4}, Ljje;->a()V

    .line 317
    :cond_14
    new-instance v4, Ljje;

    invoke-direct {v4}, Ljje;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Ljip;->d:Ljje;

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Ljje;->c:Ljava/lang/String;

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->j:Landroid/content/Context;

    const/4 v10, 0x1

    aget-object v10, v37, v10

    invoke-static {v4, v10}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 321
    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x3

    if-lt v4, v10, :cond_15

    const/4 v4, 0x2

    aget-object v11, v37, v4

    .line 322
    .local v11, "serviceId":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    iput-object v11, v4, Ljje;->e:Ljava/lang/String;

    .line 3758
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 3761
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->k:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3762
    const/4 v4, 0x1

    .line 323
    :goto_d
    if-eqz v4, :cond_17

    .line 324
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Ljip;->e:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " msg duplicate"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    const/4 v10, 0x1

    iput-boolean v10, v4, Ljje;->h:Z

    .line 370
    :goto_e
    const/4 v4, 0x1

    move/from16 v0, v34

    if-ne v0, v4, :cond_b

    .line 371
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Ljip;->e:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " try to send ack dataId "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/4 v15, 0x0

    move-wide/from16 v0, v26

    long-to-int v4, v0

    int-to-short v0, v4

    move/from16 v16, v0

    move-object/from16 v12, v36

    move-object/from16 v13, v35

    move-object/from16 v14, v22

    move-object/from16 v17, p3

    move-object/from16 v18, v9

    invoke-static/range {v12 .. v18}, Lcom/taobao/accs/data/Message;->buildPushAck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;

    move-result-object v19

    .line 373
    .local v19, "ack":Lcom/taobao/accs/data/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->j:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v10, v0, Ljip;->e:I

    invoke-static {v4, v10}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 375
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    .line 3901
    new-instance v10, Ljjf;

    invoke-direct {v10}, Ljjf;-><init>()V

    .line 3902
    move-object/from16 v0, p0

    iget-object v12, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v12}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Ljjf;->a:Ljava/lang/String;

    .line 3903
    iput-object v4, v10, Ljjf;->c:Ljava/lang/String;

    .line 3904
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Ljjf;->d:Ljava/lang/String;

    .line 3905
    const-string/jumbo v4, ""

    iput-object v4, v10, Ljjf;->f:Ljava/lang/String;

    .line 3906
    iput-object v11, v10, Ljjf;->e:Ljava/lang/String;

    .line 3907
    const-string/jumbo v4, ""

    iput-object v4, v10, Ljjf;->b:Ljava/lang/String;

    .line 3908
    invoke-virtual {v10}, Ljjf;->a()V

    .line 376
    if-eqz v31, :cond_b

    .line 377
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "ack"

    const-string/jumbo v12, ""

    const-wide/16 v14, 0x0

    invoke-static {v4, v10, v12, v14, v15}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_9

    .line 321
    .end local v11    # "serviceId":Ljava/lang/String;
    .end local v19    # "ack":Lcom/taobao/accs/data/Message;
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 3764
    .restart local v11    # "serviceId":Ljava/lang/String;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 3768
    :cond_17
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->k:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 328
    :cond_18
    :goto_f
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Ljip;->e:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " try deliver msg to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v12, 0x1

    aget-object v12, v37, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v28, Landroid/content/Intent;

    const-string/jumbo v4, "com.taobao.accs.intent.action.RECEIVE"

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v28, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    aget-object v4, v37, v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string/jumbo v4, "command"

    const/16 v10, 0x65

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x3

    if-lt v4, v10, :cond_19

    .line 333
    const-string/jumbo v4, "serviceId"

    const/4 v10, 0x2

    aget-object v10, v37, v10

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :cond_19
    const-string/jumbo v39, ""

    .line 336
    .local v39, "userId":Ljava/lang/String;
    move-object/from16 v0, v37

    array-length v4, v0

    const/4 v10, 0x4

    if-lt v4, v10, :cond_1a

    .line 337
    const/4 v4, 0x3

    aget-object v39, v37, v4

    .line 338
    const-string/jumbo v4, "userInfo"

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :cond_1a
    const-string/jumbo v4, "data"

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 341
    const-string/jumbo v4, "dataId"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p0

    iget-object v10, v0, Ljip;->j:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string/jumbo v4, "host"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string/jumbo v4, "bizAck"

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    move-object/from16 v0, v28

    invoke-static {v9, v0}, Ljip;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 353
    if-eqz v31, :cond_1e

    .line 354
    move-wide/from16 v0, v26

    long-to-int v4, v0

    int-to-short v4, v4

    .line 3835
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 3836
    const-string/jumbo v10, "source"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3838
    :cond_1b
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 3839
    const-string/jumbo v10, "target"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3841
    :cond_1c
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 3842
    const-string/jumbo v10, "host"

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3845
    :cond_1d
    const-string/jumbo v10, "flags"

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 357
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->j:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Ljiq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 361
    invoke-static {}, Ljjo;->a()Ljjo;

    const v4, 0x101d1

    const-string/jumbo v10, "MsgToBussPush"

    const-string/jumbo v12, "commandId=101"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "serviceId="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " dataId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xd5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v4, v10, v12, v13, v14}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    const-string/jumbo v4, "accs"

    const-string/jumbo v10, "to_buss"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "1commandId=101serviceId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v4, v10, v12, v14, v15}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    move-object/from16 v0, v22

    iput-object v0, v4, Ljje;->b:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    move-object/from16 v0, v39

    iput-object v0, v4, Ljje;->i:Ljava/lang/String;

    .line 365
    move-object/from16 v0, p0

    iget-object v10, v0, Ljip;->d:Ljje;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v8, :cond_20

    const/4 v4, 0x0

    :goto_10
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Ljje;->f:Ljava/lang/String;

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v10}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Ljje;->a:Ljava/lang/String;

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->d:Ljje;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Ljje;->d:Ljava/lang/String;

    .line 368
    new-instance v10, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-static {}, Lic;->j()Z

    move-result v12

    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v14, v4

    move-object/from16 v13, p3

    invoke-direct/range {v10 .. v15}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljip;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto/16 :goto_e

    .line 3771
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v39    # "userId":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->k:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v38

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    invoke-direct/range {p0 .. p0}, Ljip;->c()V

    goto/16 :goto_f

    .line 365
    .restart local v28    # "intent":Landroid/content/Intent;
    .restart local v39    # "userId":Ljava/lang/String;
    :cond_20
    array-length v4, v8

    goto :goto_10

    .line 381
    .end local v11    # "serviceId":Ljava/lang/String;
    .end local v28    # "intent":Landroid/content/Intent;
    .end local v39    # "userId":Ljava/lang/String;
    :cond_21
    const-string/jumbo v4, "MessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "package "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    aget-object v12, v37, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " not exist, unbind it"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v10, v12}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Ljip;->j:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v10, v0, Ljip;->e:I

    invoke-static {v4, v10}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Ljip;->j:Landroid/content/Context;

    const/4 v12, 0x1

    aget-object v12, v37, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v10, v12, v13, v14, v15}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v12}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_9

    .end local v7    # "reqType":Lcom/taobao/accs/data/Message$ReqType;
    .end local v24    # "error":I
    .end local v30    # "msgType":I
    .end local v31    # "needBusinessAck":Z
    .end local v34    # "resType":I
    .end local v37    # "targets":[Ljava/lang/String;
    .restart local v20    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v25    # "inputStream":Ljava/util/zip/GZIPInputStream;
    :catch_6
    move-exception v10

    goto/16 :goto_b

    .line 3053
    .line 3109
    .line 3120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V
    .locals 13
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I
    .param p3, "reqType"    # Lcom/taobao/accs/data/Message$ReqType;
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/data/Message;",
            "I",
            "Lcom/taobao/accs/data/Message$ReqType;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 510
    .local p5, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 511
    :cond_0
    const-string/jumbo v3, "MessageHandler"

    const-string/jumbo v4, "onError, skip ping/ack"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4880
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 517
    iget-object v3, p0, Ljip;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_3
    iget-object v3, p0, Ljip;->h:Lcom/taobao/accs/antibrush/AntiBrush;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Lcom/taobao/accs/antibrush/AntiBrush;->a(Ljava/net/URL;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 522
    const p2, 0x11186

    .line 523
    const/16 p4, 0x0

    .line 524
    const/16 p5, 0x0

    .line 525
    const/16 p3, 0x0

    .line 528
    :cond_4
    iget-object v3, p0, Ljip;->g:Lcom/taobao/accs/flowcontrol/FlowControl;

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0, v4}, Lcom/taobao/accs/flowcontrol/FlowControl;->a(Ljava/util/Map;Ljava/lang/String;)I

    move-result v12

    .line 529
    .local v12, "type":I
    if-eqz v12, :cond_5

    .line 530
    const/4 v3, 0x2

    if-ne v12, v3, :cond_7

    .line 531
    const p2, 0x11185

    .line 537
    :goto_1
    const/16 p4, 0x0

    .line 538
    const/16 p5, 0x0

    .line 539
    const/16 p3, 0x0

    .line 541
    :cond_5
    sget-object v3, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v3}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 542
    const-string/jumbo v3, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onResult command:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " erorcode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    :cond_6
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x66

    if-eq v3, v4, :cond_1

    .line 549
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a

    .line 550
    iget-object v3, p0, Ljip;->j:Landroid/content/Context;

    invoke-static {v3}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v3

    const-string/jumbo v4, "accs_election"

    invoke-virtual {v3, v4}, Ljim;->c(Ljava/lang/String;)Ljig;

    move-result-object v2

    .line 551
    .local v2, "listener":Ljig;
    if-eqz v2, :cond_9

    .line 552
    const-string/jumbo v3, "accs_election"

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    const/4 v7, 0x0

    move v5, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Ljig;->onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    goto/16 :goto_0

    .line 532
    .end local v2    # "listener":Ljig;
    :cond_7
    const/4 v3, 0x3

    if-ne v12, v3, :cond_8

    .line 533
    const p2, 0x11187

    goto :goto_1

    .line 535
    :cond_8
    const p2, 0x11184

    goto :goto_1

    .line 554
    .restart local v2    # "listener":Ljig;
    :cond_9
    const-string/jumbo v3, "MessageHandler"

    const-string/jumbo v4, "onResult election listener null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 558
    .end local v2    # "listener":Ljig;
    :cond_a
    iget-boolean v3, p1, Lcom/taobao/accs/data/Message;->isCancel:Z

    if-nez v3, :cond_15

    .line 4643
    const/4 v3, -0x1

    if-eq p2, v3, :cond_b

    const/16 v3, -0x9

    if-eq p2, v3, :cond_b

    const/16 v3, -0xa

    if-eq p2, v3, :cond_b

    const/16 v3, -0xb

    if-ne p2, v3, :cond_f

    .line 4647
    :cond_b
    const/4 v3, 0x1

    .line 559
    :goto_2
    if-eqz v3, :cond_10

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_10

    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    sget v4, Lcom/taobao/accs/data/Message;->CONTROL_MAX_RETRY_TIMES:I

    if-gt v3, v4, :cond_10

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/taobao/accs/data/Message;->startSendTime:J

    .line 563
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    .line 564
    iget-object v3, p0, Ljip;->j:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V

    .line 608
    :cond_c
    :goto_3
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v10

    .line 609
    .local v10, "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    if-eqz v10, :cond_d

    .line 610
    invoke-virtual {v10}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToBizDate()V

    .line 611
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v3, :cond_16

    const/4 v8, 0x0

    .line 612
    .local v8, "host":Ljava/lang/String;
    :goto_4
    const/16 v3, 0xc8

    if-ne p2, v3, :cond_18

    .line 613
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 614
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    if-lez v3, :cond_17

    .line 615
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    const-string/jumbo v5, "succ"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 616
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "succ_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 634
    :goto_5
    invoke-static {}, Lih;->a()Lij;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v4

    invoke-interface {v3, v4}, Lij;->a(Lanet/channel/statist/StatObject;)V

    .line 4863
    .end local v8    # "host":Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_1

    .line 4866
    iget-object v3, p0, Ljip;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 4867
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4868
    const/4 v3, 0x1

    .line 4869
    const/16 v6, 0xc8

    if-eq p2, v6, :cond_e

    .line 4870
    const/4 v3, 0x0

    .line 4872
    :cond_e
    iget-object v6, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4874
    :pswitch_1
    new-instance v6, Ljjb;

    invoke-direct {v6}, Ljjb;-><init>()V

    .line 4875
    iput-object v4, v6, Ljjb;->a:Ljava/lang/String;

    .line 4876
    iput-object v5, v6, Ljjb;->b:Ljava/lang/String;

    .line 4877
    iput-boolean v3, v6, Ljjb;->c:Z

    .line 5033
    sparse-switch p2, :sswitch_data_0

    .line 5052
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 11029
    iput-object v3, v6, Ljjb;->d:Ljava/lang/String;

    .line 11058
    :goto_6
    :sswitch_0
    const-string/jumbo v3, "BindApp"

    invoke-virtual {v6, v3}, Ljjb;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4649
    .end local v10    # "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 566
    :cond_10
    const-string/jumbo v3, "MessageHandler"

    const-string/jumbo v4, "prepare send broadcast"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4807
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v3, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4808
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4809
    const-string/jumbo v3, "command"

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4810
    const-string/jumbo v3, "serviceId"

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4811
    const-string/jumbo v3, "userInfo"

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4812
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_11

    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_11

    .line 4813
    const-string/jumbo v3, "dataId"

    iget-object v4, p1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    .local v9, "intent":Landroid/content/Intent;
    :cond_11
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v9, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 569
    iget-short v3, p1, Lcom/taobao/accs/data/Message;->flags:S

    shr-int/lit8 v3, v3, 0xd

    and-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lcom/taobao/accs/data/Message$ReqType;->valueOf(I)Lcom/taobao/accs/data/Message$ReqType;

    move-result-object v11

    .line 571
    .local v11, "oriType":Lcom/taobao/accs/data/Message$ReqType;
    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->RES:Lcom/taobao/accs/data/Message$ReqType;

    move-object/from16 v0, p3

    if-eq v0, v3, :cond_12

    sget-object v3, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    if-ne v11, v3, :cond_13

    .line 572
    :cond_12
    const-string/jumbo v3, "send_type"

    const-string/jumbo v4, "res"

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    :cond_13
    const/16 v3, 0xc8

    if-ne p2, v3, :cond_14

    .line 575
    const-string/jumbo v3, "data"

    move-object/from16 v0, p4

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 578
    :cond_14
    move-object/from16 v0, p5

    invoke-static {v0, v9}, Ljip;->a(Ljava/util/Map;Landroid/content/Intent;)V

    .line 579
    iget-object v3, p0, Ljip;->j:Landroid/content/Context;

    invoke-static {v3, v9}, Ljiq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 583
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 584
    invoke-static {}, Ljjo;->a()Ljjo;

    const v3, 0x101d1

    const-string/jumbo v4, "MsgToBuss0"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "commandId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "serviceId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " dataId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xd5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Ljjo;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 585
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "to_buss"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "1commandId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "serviceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto/16 :goto_3

    .line 589
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "oriType":Lcom/taobao/accs/data/Message$ReqType;
    :cond_15
    const-string/jumbo v3, "MessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Ljip;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message is cancel! command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 611
    .restart local v10    # "netPerformanceMonitor":Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    :cond_16
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 618
    .restart local v8    # "host":Ljava/lang/String;
    :cond_17
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "Request_Success_Rate"

    invoke-static {v3, v4, v8}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 621
    :cond_18
    iget v3, p1, Lcom/taobao/accs/data/Message;->retryTimes:I

    if-lez v3, :cond_1a

    .line 622
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "fail\uff3f"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 623
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "resend"

    const-string/jumbo v5, "fail"

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 630
    :cond_19
    :goto_7
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setRet(Z)V

    .line 631
    invoke-virtual {v10, p2}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setFailReason(I)V

    goto/16 :goto_5

    .line 625
    :cond_1a
    const/16 v3, -0xd

    if-eq p2, v3, :cond_19

    .line 626
    const-string/jumbo v3, "accs"

    const-string/jumbo v4, "Request_Success_Rate"

    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->int2String(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Ljip;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/taobao/accs/data/Message;->timeout:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v8, v5, v6}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 5037
    .end local v8    # "host":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v3, "network fail"

    .line 6029
    iput-object v3, v6, Ljjb;->d:Ljava/lang/String;

    goto/16 :goto_6

    .line 5040
    :sswitch_2
    const-string/jumbo v3, "msg too large"

    .line 7029
    iput-object v3, v6, Ljjb;->d:Ljava/lang/String;

    goto/16 :goto_6

    .line 5043
    :sswitch_3
    const-string/jumbo v3, "app not bind"

    .line 8029
    iput-object v3, v6, Ljjb;->d:Ljava/lang/String;

    goto/16 :goto_6

    .line 5046
    :sswitch_4
    const-string/jumbo v3, "param error"

    .line 9029
    iput-object v3, v6, Ljjb;->d:Ljava/lang/String;

    goto/16 :goto_6

    .line 5049
    :sswitch_5
    const-string/jumbo v3, "service not available"

    .line 10029
    iput-object v3, v6, Ljjb;->d:Ljava/lang/String;

    goto/16 :goto_6

    .line 4882
    :pswitch_2
    new-instance v6, Ljjc;

    invoke-direct {v6}, Ljjc;-><init>()V

    .line 4883
    iput-object v4, v6, Ljjc;->a:Ljava/lang/String;

    .line 4884
    iput-object v5, v6, Ljjc;->b:Ljava/lang/String;

    .line 4885
    iput-boolean v3, v6, Ljjc;->c:Z

    .line 4886
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    iput-object v3, v6, Ljjc;->e:Ljava/lang/String;

    .line 12033
    sparse-switch p2, :sswitch_data_1

    .line 12052
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 18029
    iput-object v3, v6, Ljjc;->d:Ljava/lang/String;

    .line 18058
    :goto_8
    :sswitch_6
    const-string/jumbo v3, "BindUser"

    invoke-virtual {v6, v3}, Ljjc;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12037
    :sswitch_7
    const-string/jumbo v3, "network fail"

    .line 13029
    iput-object v3, v6, Ljjc;->d:Ljava/lang/String;

    goto :goto_8

    .line 12040
    :sswitch_8
    const-string/jumbo v3, "msg too large"

    .line 14029
    iput-object v3, v6, Ljjc;->d:Ljava/lang/String;

    goto :goto_8

    .line 12043
    :sswitch_9
    const-string/jumbo v3, "app not bind"

    .line 15029
    iput-object v3, v6, Ljjc;->d:Ljava/lang/String;

    goto :goto_8

    .line 12046
    :sswitch_a
    const-string/jumbo v3, "param error"

    .line 16029
    iput-object v3, v6, Ljjc;->d:Ljava/lang/String;

    goto :goto_8

    .line 12049
    :sswitch_b
    const-string/jumbo v3, "service not available"

    .line 17029
    iput-object v3, v6, Ljjc;->d:Ljava/lang/String;

    goto :goto_8

    .line 4872
    .line 5033
    .line 12033
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_4
        -0x1 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x4 -> :sswitch_8
        -0x3 -> :sswitch_b
        -0x2 -> :sswitch_a
        -0x1 -> :sswitch_7
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_9
    .end sparse-switch
.end method

.method private a(Lcom/taobao/accs/data/Message;[B[BLjava/lang/String;)V
    .locals 19
    .param p1, "reqMessage"    # Lcom/taobao/accs/data/Message;
    .param p2, "oriData"    # [B
    .param p3, "data"    # [B
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 400
    const/4 v4, -0x8

    .line 402
    .local v4, "code":I
    :try_start_0
    new-instance v16, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 403
    .local v16, "msgJson":Lorg/json/JSONObject;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string/jumbo v2, "MessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parse Json:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    const-string/jumbo v2, "code"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 407
    const/16 v2, 0xc8

    if-ne v4, v2, :cond_5

    .line 408
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 460
    .end local v16    # "msgJson":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Ljip;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 461
    new-instance v6, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    invoke-static {}, Lic;->j()Z

    move-result v8

    move-object/from16 v0, p3

    array-length v2, v0

    int-to-long v10, v2

    move-object/from16 v9, p4

    invoke-direct/range {v6 .. v11}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljip;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    .line 463
    return-void

    .line 410
    .restart local v16    # "msgJson":Lorg/json/JSONObject;
    :pswitch_0
    :try_start_1
    const-string/jumbo v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 413
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "accsToken"

    .line 4010
    if-eqz v15, :cond_2

    .line 4013
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4014
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 414
    .local v12, "accsToken":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/taobao/accs/utl/UtilityImpl;->setDeviceToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/taobao/accs/utl/UtilityImpl;->utdidChanged()Z

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Landroid/content/Context;)V

    .line 423
    if-eqz v15, :cond_1

    .line 424
    const-string/jumbo v2, "packageNames"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 425
    .local v13, "bindedPacks":Lorg/json/JSONArray;
    if-eqz v13, :cond_1

    .line 426
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 427
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 428
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljil;->a(Ljava/lang/String;)V

    .line 426
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 4016
    .end local v12    # "accsToken":Ljava/lang/String;
    .end local v13    # "bindedPacks":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 431
    .restart local v12    # "accsToken":Ljava/lang/String;
    .restart local v13    # "bindedPacks":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    .restart local v17    # "packageName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "MessageHandler"

    const-string/jumbo v3, "unbind app"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "pkg"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v17, v5, v6

    invoke-static {v2, v3, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljiu;->a(Landroid/content/Context;I)Ljiu;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Ljip;->j:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v0, v5, v6, v7}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Ljiu;->b(Lcom/taobao/accs/data/Message;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 456
    .end local v12    # "accsToken":Ljava/lang/String;
    .end local v13    # "bindedPacks":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "msgJson":Lorg/json/JSONObject;
    .end local v17    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 457
    .local v18, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "MessageHandler"

    const-string/jumbo v3, "handleControlMessage"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v5}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 458
    const-string/jumbo v2, "accs"

    const-string/jumbo v3, "send_fail"

    const-string/jumbo v5, "handleControlMessage"

    const-string/jumbo v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v8, v0, Ljip;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v5, v6, v7}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v16    # "msgJson":Lorg/json/JSONObject;
    :pswitch_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljil;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4132
    :try_start_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4136
    iget-object v2, v3, Ljil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 4137
    if-nez v2, :cond_4

    .line 4138
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4140
    :cond_4
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4141
    iget-object v3, v3, Ljil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4142
    :catch_1
    move-exception v2

    .line 4143
    :try_start_4
    const-string/jumbo v3, "ClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ClientManager"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4144
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 446
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 4152
    :try_start_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4155
    iget-object v2, v2, Ljil;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 4156
    :catch_2
    move-exception v2

    .line 4157
    :try_start_6
    const-string/jumbo v3, "ClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ClientManager"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4158
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/16 v2, 0x12c

    if-ne v4, v2, :cond_1

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Ljip;->j:Landroid/content/Context;

    invoke-static {v2}, Ljil;->a(Landroid/content/Context;)Ljil;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljil;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 824
    invoke-static {}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->values()[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    move-result-object v0

    .local v0, "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 825
    .local v3, "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 826
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 827
    invoke-virtual {v3}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 831
    .end local v0    # "arr$":[Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "type":Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 777
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Ljip;->j:Landroid/content/Context;

    const-string/jumbo v5, "accs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "message"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 778
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 779
    const-string/jumbo v4, "MessageHandler"

    const-string/jumbo v5, "message file not exist"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 782
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 784
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 785
    iget-object v4, p0, Ljip;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 788
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 795
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ljip;->j:Landroid/content/Context;

    const-string/jumbo v6, "accs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 796
    .local v3, "writer":Ljava/io/FileWriter;
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 797
    iget-object v4, p0, Ljip;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 798
    .local v2, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 801
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 804
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 800
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 2
    .param p1, "dataId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 751
    .local v0, "msg":Lcom/taobao/accs/data/Message;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "msg":Lcom/taobao/accs/data/Message;
    check-cast v0, Lcom/taobao/accs/data/Message;

    .line 754
    .restart local v0    # "msg":Lcom/taobao/accs/data/Message;
    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 9
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 684
    iput-boolean v8, p0, Ljip;->c:Z

    .line 685
    iget-object v6, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 686
    .local v3, "ids":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 687
    const-string/jumbo v6, "MessageHandler"

    const-string/jumbo v7, "onNetworkFail"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 689
    .local v2, "id":Ljava/lang/String;
    iget-object v6, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/data/Message;

    .line 690
    .local v5, "reqMessage":Lcom/taobao/accs/data/Message;
    if-eqz v5, :cond_0

    .line 691
    invoke-virtual {p0, v5, p1}, Ljip;->a(Lcom/taobao/accs/data/Message;I)V

    .line 688
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 695
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "reqMessage":Lcom/taobao/accs/data/Message;
    :cond_1
    return-void
.end method

.method public final a(Lcom/taobao/accs/data/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 677
    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p1, Lcom/taobao/accs/data/Message;->isAck:Z

    if-eqz v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v0, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getDataId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/taobao/accs/data/Message;I)V
    .locals 6
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 502
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Ljip;->a(Lcom/taobao/accs/data/Message;ILcom/taobao/accs/data/Message$ReqType;[BLjava/util/Map;)V

    .line 503
    return-void
.end method

.method public final a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 4
    .param p1, "info"    # Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 921
    :try_start_0
    invoke-static {}, Ljin;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Ljip$1;

    invoke-direct {v2, p0, p1}, Ljip$1;-><init>(Ljip;Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MessageHandler"

    const-string/jumbo v2, "addTrafficsInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljip;->a([BLjava/lang/String;)V

    .line 117
    return-void
.end method

.method public final a([BLjava/lang/String;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v7, Ljjm;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljjm;-><init>([B)V

    .line 123
    .local v7, "reader":Ljjm;
    :try_start_0
    invoke-virtual {v7}, Ljjm;->a()I

    move-result v5

    .line 124
    .local v5, "head":I
    and-int/lit16 v11, v5, 0xf0

    shr-int/lit8 v10, v11, 0x4

    .line 125
    .local v10, "version":I
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 126
    const-string/jumbo v11, "MessageHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "version:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    and-int/lit8 v3, v5, 0xf

    .line 130
    .local v3, "compress":I
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 131
    const-string/jumbo v11, "MessageHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "compress:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_1
    invoke-virtual {v7}, Ljjm;->a()I

    .line 135
    invoke-virtual {v7}, Ljjm;->b()I

    move-result v9

    .line 136
    .local v9, "totalLen":I
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 137
    const-string/jumbo v11, "MessageHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "totalLen:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_2
    const/4 v6, 0x0

    .line 141
    .local v6, "nowLen":I
    :goto_0
    if-ge v6, v9, :cond_5

    .line 142
    invoke-virtual {v7}, Ljjm;->b()I

    move-result v4

    .line 143
    .local v4, "dataLen":I
    add-int/lit8 v6, v6, 0x2

    .line 144
    if-lez v4, :cond_4

    .line 145
    new-array v2, v4, [B

    .line 146
    .local v2, "buf":[B
    invoke-virtual {v7, v2}, Ljjm;->read([B)I

    .line 147
    sget-object v11, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v11}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 148
    const-string/jumbo v11, "MessageHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "buf len:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_3
    array-length v11, v2

    add-int/2addr v6, v11

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v2, v1, v10}, Ljip;->a(I[BLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    .end local v2    # "buf":[B
    .end local v3    # "compress":I
    .end local v4    # "dataLen":I
    .end local v5    # "head":I
    .end local v6    # "nowLen":I
    .end local v9    # "totalLen":I
    .end local v10    # "version":I
    :catch_0
    move-exception v8

    .line 158
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v11, "accs"

    const-string/jumbo v12, "send_fail"

    const-string/jumbo v13, ""

    const-string/jumbo v14, "1"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Ljip;->e:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v12, v13, v14, v15}, Ljjh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v11, "MessageHandler"

    const-string/jumbo v12, ""

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v8, v13}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v7}, Ljjm;->close()V

    .line 162
    .end local v8    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 154
    .restart local v3    # "compress":I
    .restart local v4    # "dataLen":I
    .restart local v5    # "head":I
    .restart local v6    # "nowLen":I
    .restart local v9    # "totalLen":I
    .restart local v10    # "version":I
    :cond_4
    :try_start_2
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "data format error"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v3    # "compress":I
    .end local v4    # "dataLen":I
    .end local v5    # "head":I
    .end local v6    # "nowLen":I
    .end local v9    # "totalLen":I
    .end local v10    # "version":I
    :catchall_0
    move-exception v11

    invoke-virtual {v7}, Ljjm;->close()V

    throw v11

    .restart local v3    # "compress":I
    .restart local v5    # "head":I
    .restart local v6    # "nowLen":I
    .restart local v9    # "totalLen":I
    .restart local v10    # "version":I
    :cond_5
    invoke-virtual {v7}, Ljjm;->close()V

    goto :goto_1
.end method

.method public final b(Lcom/taobao/accs/data/Message;)V
    .locals 10
    .param p1, "message"    # Lcom/taobao/accs/data/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 698
    iget-object v3, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 700
    iget-object v3, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 701
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Ljip;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    .line 702
    .local v2, "msg":Lcom/taobao/accs/data/Message;
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/taobao/accs/data/Message;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    iget-object v3, p1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 729
    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    if-eqz v3, :cond_0

    .line 730
    const-string/jumbo v3, "MessageHandler"

    const-string/jumbo v4, "cancelControlMessage"

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "command"

    aput-object v7, v5, v6

    iget-object v6, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 708
    :pswitch_0
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v8, :cond_2

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 710
    :cond_2
    iput-boolean v8, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    goto :goto_1

    .line 715
    :pswitch_1
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 717
    :cond_3
    iput-boolean v8, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    goto :goto_1

    .line 722
    :pswitch_2
    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 724
    :cond_4
    iput-boolean v8, v2, Lcom/taobao/accs/data/Message;->isCancel:Z

    goto :goto_1

    .line 734
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "msg":Lcom/taobao/accs/data/Message;
    :cond_5
    return-void

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
