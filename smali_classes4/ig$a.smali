.class final Lig$a;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lig$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field final synthetic c:Lig;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lim;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lim;


# direct methods
.method constructor <init>(Lig;Landroid/content/Context;Ljava/util/List;Lim;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "strategy"    # Lim;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lim;",
            ">;",
            "Lim;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    .local p3, "strategyList":Ljava/util/List;, "Ljava/util/List<Lim;>;"
    iput-object p1, p0, Lig$a;->c:Lig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lig$a;->b:Z

    .line 189
    iput-object p2, p0, Lig$a;->a:Landroid/content/Context;

    .line 190
    iput-object p3, p0, Lig$a;->d:Ljava/util/List;

    .line 191
    iput-object p4, p0, Lig$a;->e:Lim;

    .line 192
    return-void
.end method


# virtual methods
.method public final a(Lanet/channel/Session;)V
    .locals 11
    .param p1, "session"    # Lanet/channel/Session;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 243
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "Connect Success"

    iget-object v5, p0, Lig$a;->e:Lim;

    .line 6086
    iget-object v5, v5, Lim;->c:Ljava/lang/String;

    .line 243
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "session"

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    const-string/jumbo v7, "host"

    aput-object v7, v6, v10

    const/4 v7, 0x3

    iget-object v8, p0, Lig$a;->c:Lig;

    .line 7084
    iget-object v8, v8, Lig;->a:Ljava/lang/String;

    .line 243
    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8038
    :try_start_0
    sget-object v3, Lif$a;->a:Lif;

    .line 245
    iget-object v4, p0, Lig$a;->c:Lig;

    invoke-virtual {v3, v4, p1}, Lif;->a(Lig;Lanet/channel/Session;)V

    .line 246
    if-eqz p1, :cond_0

    instance-of v3, p1, Ljo;

    if-eqz v3, :cond_0

    .line 247
    move-object v0, p1

    check-cast v0, Ljo;

    move-object v3, v0

    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v4

    invoke-virtual {v4}, Lanet/channel/SessionCenter;->getDataChannelCb()Lhz;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljo;->a(Lhz;)V

    .line 248
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "set Framecb success"

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "session"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v4, v5, v6}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_0
    new-instance v1, Lju;

    invoke-direct {v1}, Lju;-><init>()V

    .line 253
    .local v1, "alarmObject":Lju;
    const-string/jumbo v3, "networkPrefer"

    iput-object v3, v1, Lju;->e:Ljava/lang/String;

    .line 254
    const-string/jumbo v3, "policy"

    iput-object v3, v1, Lju;->f:Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lig$a;->c:Lig;

    invoke-static {v3}, Lig;->b(Lig;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lju;->b:Ljava/lang/String;

    .line 256
    const/4 v3, 0x1

    iput-boolean v3, v1, Lju;->a:Z

    .line 257
    invoke-static {}, Lih;->a()Lij;

    move-result-object v3

    invoke-interface {v3, v1}, Lij;->a(Lju;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v3, p0, Lig$a;->c:Lig;

    invoke-virtual {v3}, Lig;->a()V

    .line 262
    .end local v1    # "alarmObject":Lju;
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "awcn.SessionRequest"

    const-string/jumbo v4, "[onSuccess]:"

    iget-object v5, p0, Lig$a;->e:Lim;

    .line 8086
    iget-object v5, v5, Lim;->c:Ljava/lang/String;

    .line 259
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v2, v6}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    iget-object v3, p0, Lig$a;->c:Lig;

    invoke-virtual {v3}, Lig;->a()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lig$a;->c:Lig;

    invoke-virtual {v4}, Lig;->a()V

    throw v3
.end method

.method public final a(Lanet/channel/Session;Lanet/channel/entity/EventType;I)V
    .locals 11
    .param p1, "session"    # Lanet/channel/Session;
    .param p2, "type"    # Lanet/channel/entity/EventType;
    .param p3, "errorcode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 197
    invoke-static {v8}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const-string/jumbo v2, "awcn.SessionRequest"

    const-string/jumbo v3, "Connect failed"

    iget-object v4, p0, Lig$a;->e:Lim;

    .line 1086
    iget-object v4, v4, Lim;->c:Ljava/lang/String;

    .line 198
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "session"

    aput-object v6, v5, v9

    aput-object p1, v5, v8

    const-string/jumbo v6, "host"

    aput-object v6, v5, v10

    const/4 v6, 0x3

    iget-object v7, p0, Lig$a;->c:Lig;

    .line 2084
    iget-object v7, v7, Lig;->a:Ljava/lang/String;

    .line 198
    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "isHandleFinish"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-boolean v7, p0, Lig$a;->b:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_0
    iget-boolean v2, p0, Lig$a;->b:Z

    if-eqz v2, :cond_2

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    iput-boolean v8, p0, Lig$a;->b:Z

    .line 3038
    sget-object v2, Lif$a;->a:Lif;

    .line 206
    iget-object v3, p0, Lig$a;->c:Lig;

    invoke-virtual {v2, v3, p1}, Lif;->b(Lig;Lanet/channel/Session;)V

    .line 208
    iget-boolean v2, p1, Lanet/channel/Session;->q:Z

    if-eqz v2, :cond_1

    .line 211
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 212
    iget-object v2, p0, Lig$a;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 213
    invoke-static {v8}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    const-string/jumbo v2, "awcn.SessionRequest"

    const-string/jumbo v3, "use next strategy to create session"

    iget-object v4, p0, Lig$a;->e:Lim;

    .line 3086
    iget-object v4, v4, Lim;->c:Ljava/lang/String;

    .line 214
    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "host"

    aput-object v6, v5, v9

    iget-object v6, p0, Lig$a;->c:Lig;

    .line 4084
    iget-object v6, v6, Lig;->a:Ljava/lang/String;

    .line 214
    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    :cond_3
    iget-object v2, p0, Lig$a;->d:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim;

    .line 217
    .local v1, "ci":Lim;
    iget-object v2, p0, Lig$a;->c:Lig;

    iget-object v3, p0, Lig$a;->a:Landroid/content/Context;

    new-instance v4, Lig$a;

    iget-object v5, p0, Lig$a;->c:Lig;

    iget-object v6, p0, Lig$a;->a:Landroid/content/Context;

    iget-object v7, p0, Lig$a;->d:Ljava/util/List;

    invoke-direct {v4, v5, v6, v7, v1}, Lig$a;-><init>(Lig;Landroid/content/Context;Ljava/util/List;Lim;)V

    .line 4086
    iget-object v5, v1, Lim;->c:Ljava/lang/String;

    .line 217
    invoke-static {v2, v3, v1, v4, v5}, Lig;->a(Lig;Landroid/content/Context;Lim;Lig$c;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    .end local v1    # "ci":Lim;
    :cond_4
    invoke-static {v8}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 220
    const-string/jumbo v2, "awcn.SessionRequest"

    const-string/jumbo v3, "strategy has used up,finish"

    iget-object v4, p0, Lig$a;->e:Lim;

    .line 5086
    iget-object v4, v4, Lim;->c:Ljava/lang/String;

    .line 220
    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "host"

    aput-object v6, v5, v9

    iget-object v6, p0, Lig$a;->c:Lig;

    .line 6084
    iget-object v6, v6, Lig;->a:Ljava/lang/String;

    .line 220
    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :cond_5
    iget-object v2, p0, Lig$a;->c:Lig;

    invoke-virtual {v2}, Lig;->a()V

    .line 224
    sget-object v2, Lanet/channel/entity/EventType;->CONNECT_FAIL:Lanet/channel/entity/EventType;

    invoke-virtual {v2, p2}, Lanet/channel/entity/EventType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, -0xa35

    if-eq p3, v2, :cond_1

    const/16 v2, -0xa29

    if-eq p3, v2, :cond_1

    .line 227
    new-instance v0, Lju;

    invoke-direct {v0}, Lju;-><init>()V

    .line 228
    .local v0, "alarmObject":Lju;
    const-string/jumbo v2, "networkPrefer"

    iput-object v2, v0, Lju;->e:Ljava/lang/String;

    .line 229
    const-string/jumbo v2, "policy"

    iput-object v2, v0, Lju;->f:Ljava/lang/String;

    .line 230
    iget-object v2, p0, Lig$a;->c:Lig;

    invoke-static {v2}, Lig;->b(Lig;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lju;->b:Ljava/lang/String;

    .line 231
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lju;->c:Ljava/lang/String;

    .line 232
    iput-boolean v9, v0, Lju;->a:Z

    .line 233
    invoke-static {}, Lih;->a()Lij;

    move-result-object v2

    invoke-interface {v2, v0}, Lij;->a(Lju;)V

    goto/16 :goto_0

    .line 237
    .end local v0    # "alarmObject":Lju;
    :cond_6
    iget-object v2, p0, Lig$a;->c:Lig;

    invoke-virtual {v2}, Lig;->a()V

    goto/16 :goto_0
.end method

.method public final b(Lanet/channel/Session;)V
    .locals 10
    .param p1, "session"    # Lanet/channel/Session;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 267
    invoke-static {}, Lic;->j()Z

    move-result v0

    .line 268
    .local v0, "isbg":Z
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "Connect Disconnect"

    iget-object v3, p0, Lig$a;->e:Lim;

    .line 9086
    iget-object v3, v3, Lim;->c:Ljava/lang/String;

    .line 268
    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    const-string/jumbo v5, "host"

    aput-object v5, v4, v9

    const/4 v5, 0x3

    iget-object v6, p0, Lig$a;->c:Lig;

    .line 10084
    iget-object v6, v6, Lig;->a:Ljava/lang/String;

    .line 268
    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "appIsBg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "isHandleFinish"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-boolean v6, p0, Lig$a;->b:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11038
    sget-object v1, Lif$a;->a:Lif;

    .line 269
    iget-object v2, p0, Lig$a;->c:Lig;

    invoke-virtual {v1, v2, p1}, Lif;->b(Lig;Lanet/channel/Session;)V

    .line 271
    iget-boolean v1, p0, Lig$a;->b:Z

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iput-boolean v8, p0, Lig$a;->b:Z

    .line 276
    iget-boolean v1, p1, Lanet/channel/Session;->p:Z

    if-eqz v1, :cond_0

    .line 279
    if-eqz v0, :cond_2

    .line 280
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "[onDisConnect]app background, don\'t Recreate"

    iget-object v3, p0, Lig$a;->e:Lim;

    .line 11086
    iget-object v3, v3, Lim;->c:Ljava/lang/String;

    .line 280
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->f()Z

    move-result v1

    if-nez v1, :cond_3

    .line 284
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "[onDisConnect]no network, don\'t Recreate"

    iget-object v3, p0, Lig$a;->e:Lim;

    .line 12086
    iget-object v3, v3, Lim;->c:Ljava/lang/String;

    .line 284
    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v5, "session"

    aput-object v5, v4, v7

    aput-object p1, v4, v8

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 288
    :cond_3
    :try_start_0
    const-string/jumbo v1, "awcn.SessionRequest"

    const-string/jumbo v2, "session disconnected, try to recreate session"

    iget-object v3, p0, Lig$a;->e:Lim;

    .line 13086
    iget-object v3, v3, Lim;->c:Ljava/lang/String;

    .line 288
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    new-instance v1, Lig$a$1;

    invoke-direct {v1, p0, p1}, Lig$a$1;-><init>(Lig$a;Lanet/channel/Session;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lkq;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method
