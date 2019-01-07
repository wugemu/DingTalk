.class public Latf;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latf$c;,
        Latf$a;,
        Latf$b;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static volatile e:Latf;


# instance fields
.field public a:Latf$b;

.field public b:Latf$a;

.field public c:Latf$c;

.field private f:Lapw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Latf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Latf;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lapw;

    invoke-direct {v0}, Lapw;-><init>()V

    iput-object v0, p0, Latf;->f:Lapw;

    .line 62
    new-instance v0, Latf$b;

    invoke-direct {v0, v1}, Latf$b;-><init>(B)V

    iput-object v0, p0, Latf;->a:Latf$b;

    .line 63
    new-instance v0, Latf$a;

    invoke-direct {v0, v1}, Latf$a;-><init>(B)V

    iput-object v0, p0, Latf;->b:Latf$a;

    .line 64
    new-instance v0, Latf$c;

    invoke-direct {v0, v1}, Latf$c;-><init>(B)V

    iput-object v0, p0, Latf;->c:Latf$c;

    .line 65
    return-void
.end method

.method static synthetic a(Latf;)Lapw;
    .locals 1
    .param p0, "x0"    # Latf;

    .prologue
    .line 48
    iget-object v0, p0, Latf;->f:Lapw;

    return-object v0
.end method

.method public static a()Latf;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Latf;->e:Latf;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Latf;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Latf;->e:Latf;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Latf;

    invoke-direct {v0}, Latf;-><init>()V

    sput-object v0, Latf;->e:Latf;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Latf;->e:Latf;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "pref_key_clear_calendar_db_v7"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "pref_key_ding_tab_switch"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 1281
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1282
    sget-object v1, Latf;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1283
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1284
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 48
    return-object v0
.end method

.method static synthetic f()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 1305
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1306
    const-string/jumbo v1, "FOLDER_EXECUTOR"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1307
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1308
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 48
    return-object v0
.end method

.method static synthetic g()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 1329
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1330
    const-string/jumbo v1, "REPORT_DATA_EXECUTOR"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1331
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1332
    sget-object v1, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public final a(JJJLcom/alibaba/wukong/Callback;)V
    .locals 11
    .param p1, "calendarId"    # J
    .param p3, "eventId"    # J
    .param p5, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p7, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v9, p0, Latf;->a:Latf$b;

    new-instance v0, Latf$7;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Latf$7;-><init>(Latf;JJJLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v9, v0}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public final a(JJLcom/alibaba/wukong/Callback;)V
    .locals 9
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/calendar/data/object/InstanceShowObject;>;>;"
    iget-object v7, p0, Latf;->a:Latf$b;

    new-instance v0, Latf$34;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Latf$34;-><init>(Latf;JJLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v7, v0}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public final a(JLcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "calendarId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Latf;->a:Latf$b;

    new-instance v1, Latf$6;

    invoke-direct {v1, p0, p1, p2, p3}, Latf$6;-><init>(Latf;JLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method public final a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 7
    .param p1, "calendarId"    # J
    .param p3, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lasc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lasc;>;"
    iget-object v6, p0, Latf;->a:Latf$b;

    new-instance v0, Latf$9;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Latf$9;-><init>(Latf;JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v6, v0}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public final a(Lars;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "createObject"    # Lars;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lars;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 344
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Long;>;"
    iget-object v0, p0, Latf;->a:Latf$b;

    new-instance v1, Latf$4;

    invoke-direct {v1, p0, p1, p2}, Latf$4;-><init>(Latf;Lars;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public final a(Lasi;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "updateObject"    # Lasi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lasi;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 353
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Latf;->a:Latf$b;

    new-instance v1, Latf$5;

    invoke-direct {v1, p0, p1, p2}, Latf$5;-><init>(Latf;Lasi;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Laro;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 556
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Laro;>;>;"
    iget-object v0, p0, Latf;->a:Latf$b;

    new-instance v1, Latf$27;

    invoke-direct {v1, p0, p1}, Latf$27;-><init>(Latf;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 562
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Latf;->a:Latf$b;

    invoke-virtual {v0, p1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 278
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 407
    .local p1, "systemEvents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;"
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;>;"
    iget-object v0, p0, Latf;->a:Latf$b;

    new-instance v1, Latf$11;

    invoke-direct {v1, p0, p1, p2}, Latf$11;-><init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p0, Latf;->b:Latf$a;

    invoke-virtual {v0, p1}, Latf$a;->execute(Ljava/lang/Runnable;)V

    .line 302
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Latf;->c:Latf$c;

    invoke-virtual {v0, p1}, Latf$c;->execute(Ljava/lang/Runnable;)V

    .line 326
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 594
    iget-object v0, p0, Latf;->a:Latf$b;

    new-instance v1, Latf$31;

    invoke-direct {v1, p0}, Latf$31;-><init>(Latf;)V

    invoke-virtual {v0, v1}, Latf$b;->execute(Ljava/lang/Runnable;)V

    .line 600
    return-void
.end method
