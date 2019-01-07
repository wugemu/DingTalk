.class public Lcom/taobao/accs/ut/monitor/TrafficsMonitor;
.super Ljava/lang/Object;
.source "TrafficsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;,
        Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

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

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$1;-><init>(Lcom/taobao/accs/ut/monitor/TrafficsMonitor;)V

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:Ljava/util/Map;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:I

    .line 52
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private a()V
    .locals 21

    .prologue
    .line 102
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v11

    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/taobao/accs/utl/UtilityImpl;->formatDay(J)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "currDay":Ljava/lang/String;
    move-object v9, v2

    .line 105
    .local v9, "savetoDay":Ljava/lang/String;
    const/4 v8, 0x0

    .line 106
    .local v8, "needCommit":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 108
    const/4 v8, 0x1

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 112
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 113
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 114
    .local v5, "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    if-eqz v5, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Landroid/content/Context;

    invoke-static {v10}, Ljiz;->a(Landroid/content/Context;)Ljiz;

    move-result-object v12

    iget-object v13, v5, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iget-object v14, v5, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:Ljava/util/Map;

    iget-object v15, v5, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-boolean v15, v5, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iget-wide v0, v5, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    move-wide/from16 v16, v0

    .line 1105
    invoke-virtual {v12, v13, v10, v15, v9}, Ljiz;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1106
    const-string/jumbo v18, "INSERT INTO traffic VALUES(null,?,?,?,?,?,?)"

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    aput-object v13, v19, v20

    const/4 v13, 0x2

    aput-object v14, v19, v13

    const/4 v13, 0x3

    aput-object v10, v19, v13

    const/4 v10, 0x4

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v19, v10

    const/4 v10, 0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v19, v10

    const/4 v10, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1, v10}, Ljiz;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    goto :goto_0

    .line 139
    .end local v2    # "currDay":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "needCommit":Z
    .end local v9    # "savetoDay":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1108
    .restart local v2    # "currDay":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    .restart local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "needCommit":Z
    .restart local v9    # "savetoDay":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v14, "UPDATE traffic SET size=? WHERE date=? AND host=? AND bid=? AND isbackground=?"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v18, v19

    const/16 v16, 0x1

    aput-object v9, v18, v16

    const/16 v16, 0x2

    aput-object v13, v18, v16

    const/4 v13, 0x3

    aput-object v10, v18, v13

    const/4 v10, 0x4

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v18, v10

    const/4 v10, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v12, v14, v0, v10}, Ljiz;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 121
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    .end local v7    # "key":Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 122
    const-string/jumbo v10, "TrafficsMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "savetoDay:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " saveTraffics"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v12, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_5
    if-eqz v8, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b()V

    .line 135
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    .line 136
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:I

    .line 139
    monitor-exit v11

    return-void

    .line 130
    :cond_7
    sget-object v10, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v10}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 131
    const-string/jumbo v10, "TrafficsMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "no need commit lastsaveDay:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->e:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " currday:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v12, v13}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 163
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Landroid/content/Context;

    invoke-static {v5}, Ljiz;->a(Landroid/content/Context;)Ljiz;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljiz;->a(Z)Ljava/util/List;

    move-result-object v3

    .line 165
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    if-nez v3, :cond_0

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 171
    .local v2, "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    if-eqz v2, :cond_1

    .line 173
    new-instance v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;

    invoke-direct {v4}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;-><init>()V

    .line 174
    .local v4, "monitor":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    iget-object v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->bizId:Ljava/lang/String;

    .line 175
    iget-object v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->a:Ljava/lang/String;

    iput-object v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->date:Ljava/lang/String;

    .line 176
    iget-object v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iput-object v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->host:Ljava/lang/String;

    .line 177
    iget-boolean v5, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iput-boolean v5, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->isBackground:Z

    .line 178
    iget-wide v6, v2, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    iput-wide v6, v4, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;->size:J

    .line 180
    invoke-static {}, Lih;->a()Lij;

    move-result-object v5

    invoke-interface {v5, v4}, Lij;->a(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    .end local v4    # "monitor":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$StatTrafficMonitor;
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, ""

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Landroid/content/Context;

    invoke-static {v5}, Ljiz;->a(Landroid/content/Context;)Ljiz;

    move-result-object v5

    .line 1135
    const-string/jumbo v6, "DELETE FROM traffic"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Ljiz;->a(Ljava/lang/String;[Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    .locals 12
    .param p1, "info"    # Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-wide v6, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 61
    iget-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "accsSelf"

    :goto_0
    iput-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    .line 62
    iget-object v6, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v6

    .line 63
    :try_start_0
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->c:Ljava/util/Map;

    iget-object v7, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "bid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v0    # "bid":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 61
    :cond_1
    iget-object v5, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->c:Ljava/lang/String;

    goto :goto_0

    .line 67
    .restart local v0    # "bid":Ljava/lang/String;
    :cond_2
    :try_start_1
    iput-object v0, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->b:Ljava/lang/String;

    .line 68
    sget-object v5, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v5}, Lcom/taobao/accs/utl/ALog;->a(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    const-string/jumbo v5, "TrafficsMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "addTrafficInfo count:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_3
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 72
    .local v4, "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    if-eqz v4, :cond_7

    .line 73
    const/4 v2, 0x1

    .line 74
    .local v2, "needAdd":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 75
    .local v3, "traf":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    iget-boolean v5, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    iget-boolean v7, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->d:Z

    if-ne v5, v7, :cond_4

    iget-object v5, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    iget-object v7, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->e:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 78
    iget-wide v8, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    iget-wide v10, p1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;->f:J

    .line 79
    const/4 v2, 0x0

    .line 83
    .end local v3    # "traf":Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;
    :cond_5
    if-eqz v2, :cond_6

    .line 84
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "needAdd":Z
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:I

    .line 92
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iget v5, p0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->d:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a()V

    goto/16 :goto_1

    .line 87
    :cond_7
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .restart local v4    # "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    .end local v0    # "bid":Ljava/lang/String;
    .end local v4    # "traffics":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method
