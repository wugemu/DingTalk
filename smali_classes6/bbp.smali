.class public Lbbp;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/objects/IDataDingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbp$a;
    }
.end annotation


# static fields
.field private static volatile c:Lbbp;


# instance fields
.field public a:Lbbo;

.field public b:Lbbp$a;

.field private d:Lbbq;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lbbq;

    invoke-direct {v0}, Lbbq;-><init>()V

    iput-object v0, p0, Lbbp;->d:Lbbq;

    .line 86
    new-instance v0, Lbbp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbp$a;-><init>(B)V

    iput-object v0, p0, Lbbp;->b:Lbbp$a;

    .line 87
    new-instance v0, Lbbo;

    iget-object v1, p0, Lbbp;->d:Lbbq;

    invoke-direct {v0, v1}, Lbbo;-><init>(Lbbq;)V

    iput-object v0, p0, Lbbp;->a:Lbbo;

    .line 88
    return-void
.end method

.method static synthetic a(Lbbp;)Lbbo;
    .locals 1
    .param p0, "x0"    # Lbbp;

    .prologue
    .line 74
    iget-object v0, p0, Lbbp;->a:Lbbo;

    return-object v0
.end method

.method public static a()Lbbp;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lbbp;->c:Lbbp;

    if-nez v0, :cond_1

    .line 92
    const-class v1, Lbbp;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lbbp;->c:Lbbp;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lbbp;

    invoke-direct {v0}, Lbbp;-><init>()V

    sput-object v0, Lbbp;->c:Lbbp;

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lbbp;->c:Lbbp;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lbbp;)Lbbq;
    .locals 1
    .param p0, "x0"    # Lbbp;

    .prologue
    .line 74
    iget-object v0, p0, Lbbp;->d:Lbbq;

    return-object v0
.end method

.method public static d()Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2

    .prologue
    .line 1338
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 1339
    .local v0, "queuedThread":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "thread_group_ding"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 1340
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 1341
    sget-object v1, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1342
    return-object v0
.end method


# virtual methods
.method public final a(IJLjava/lang/String;Ljava/lang/String;IZLcma;)V
    .locals 12
    .param p1, "scope"    # I
    .param p2, "dingId"    # J
    .param p4, "meetingUniqueId"    # Ljava/lang/String;
    .param p5, "meetingRecurrenceId"    # Ljava/lang/String;
    .param p6, "taskCount"    # I
    .param p7, "queryFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Lcma",
            "<",
            "Lbfm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p8, "listener":Lcma;, "Lcma<Lbfm;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$109;

    const/4 v8, 0x5

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lbbp$109;-><init>(Lbbp;IJLjava/lang/String;Ljava/lang/String;IZLcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1036
    return-void
.end method

.method public final a(JIIILcma;)V
    .locals 9
    .param p1, "dingId"    # J
    .param p3, "role"    # I
    .param p4, "cursor"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIII",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v8, p0, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$82;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbbp$82;-><init>(Lbbp;JIIILcma;)V

    invoke-virtual {v8, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public final a(JIILcma;)V
    .locals 9
    .param p1, "dingId"    # J
    .param p3, "oldStatus"    # I
    .param p4, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 892
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v7, p0, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$95;

    const/4 v5, 0x4

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lbbp$95;-><init>(Lbbp;JIILcma;)V

    invoke-virtual {v7, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 898
    return-void
.end method

.method public final a(JJILcma;)V
    .locals 9
    .param p1, "parentDingId"    # J
    .param p3, "cursor"    # J
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p6, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    iget-object v8, p0, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$111;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbbp$111;-><init>(Lbbp;JJILcma;)V

    invoke-virtual {v8, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1054
    return-void
.end method

.method public final a(JLckm$a;)V
    .locals 3
    .param p1, "parentDingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p3, "observer":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lbbp$13;-><init>(Lbbp;JLckm$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "dingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1178
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lbbp$9;-><init>(Lbbp;JLcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1184
    return-void
.end method

.method public final a(JLcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "parentDingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1039
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$110;

    invoke-direct {v1, p0, p1, p2, p3}, Lbbp$110;-><init>(Lbbp;JLcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1045
    return-void
.end method

.method public final a(Lbfk;Lcma;)V
    .locals 2
    .param p1, "executorChangeObject"    # Lbfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfk;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1242
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$17;

    invoke-direct {v1, p0, p1, p2}, Lbbp$17;-><init>(Lbbp;Lbfk;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1248
    return-void
.end method

.method public final a(Lbfp;Lcma;)V
    .locals 2
    .param p1, "changeObject"    # Lbfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfp;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1076
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$114;

    invoke-direct {v1, p0, p1, p2}, Lbbp$114;-><init>(Lbbp;Lbfp;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1082
    return-void
.end method

.method public final a(Lbfu;Lcma;)V
    .locals 2
    .param p1, "meetingTimeUpdateObject"    # Lbfu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfu;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 994
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$105;

    invoke-direct {v1, p0, p1, p2}, Lbbp$105;-><init>(Lbbp;Lbfu;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1000
    return-void
.end method

.method public final a(Lckm$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 158
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$87;

    invoke-direct {v1, p0, p1}, Lbbp$87;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public final a(Lcma;)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 563
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$68;

    invoke-direct {v1, p0, p1}, Lbbp$68;-><init>(Lbbp;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 545
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$66;

    invoke-direct {v1, p0, p1, p2}, Lbbp$66;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 560
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "observer"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 120
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$45;

    invoke-direct {v1, p0, p1, p2}, Lbbp$45;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 392
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$49;

    invoke-direct {v1, p0, p1}, Lbbp$49;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "status"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 844
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$90;

    invoke-direct {v1, p0, p1, p2, p3}, Lbbp$90;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 850
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "received"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 741
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$83;

    invoke-direct {v1, p0, p1, p2}, Lbbp$83;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 747
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;JLcma;)V
    .locals 8
    .param p1, "sent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .param p2, "notifyTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lbfn;JLcma;)V

    .line 819
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lbfn;JLcma;)V
    .locals 9
    .param p1, "sent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .param p2, "groupTaskParamObject"    # Lbfn;
    .param p3, "notifyTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent;",
            "Lbfn;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    iget-object v7, p0, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$88;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lbbp$88;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lbfn;JLcma;)V

    invoke-virtual {v7, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 831
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;JLjava/util/List;Ljava/util/List;Lcma;)V
    .locals 1
    .param p1, "sent"    # Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    .param p2, "type"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .param p3, "notifyTimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/ObjectDingSent;",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 803
    .local p5, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "ccUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p7, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 804
    invoke-virtual {p1, p2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 805
    invoke-virtual {p1, p5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Ljava/util/List;)V

    .line 806
    invoke-virtual {p1, p6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/util/List;)V

    .line 808
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p7}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;JLcma;)V

    .line 809
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/data/object/RemindAgainObject;Lcma;)V
    .locals 2
    .param p1, "remindAgainObject"    # Lcom/alibaba/android/ding/data/object/RemindAgainObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/data/object/RemindAgainObject;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 834
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$89;

    invoke-direct {v1, p0, p1, p2}, Lbbp$89;-><init>(Lbbp;Lcom/alibaba/android/ding/data/object/RemindAgainObject;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 840
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 2
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1306
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$24;

    invoke-direct {v1, p0, p1}, Lbbp$24;-><init>(Lbbp;Lcom/alibaba/wukong/sync/SyncAck;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1312
    return-void
.end method

.method public final a(Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Lcma;)V
    .locals 7
    .param p1, "dingId"    # Ljava/lang/Long;
    .param p3, "ignorePrevent"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcma",
            "<",
            "Lbcj;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 871
    .local p2, "receiverUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Lbcj;>;"
    iget-object v6, p0, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$93;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbbp$93;-><init>(Lbbp;Ljava/lang/Long;Ljava/util/List;Ljava/lang/Boolean;Lcma;)V

    invoke-virtual {v6, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 877
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 1346
    if-eqz p1, :cond_0

    .line 1347
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    invoke-virtual {v0, p1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1349
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 8
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "blockTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$6;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbbp$6;-><init>(Lbbp;Ljava/lang/String;JLcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1157
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 617
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$73;

    invoke-direct {v1, p0, p1, p2}, Lbbp$73;-><init>(Lbbp;Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 623
    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V
    .locals 7
    .param p2, "action"    # Ljava/lang/Integer;
    .param p3, "filterType"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 785
    .local p1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v6, p0, Lbbp;->b:Lbbp$a;

    new-instance v0, Lbbp$86;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbbp$86;-><init>(Lbbp;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    invoke-virtual {v6, v0}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 791
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 527
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$64;

    invoke-direct {v1, p0}, Lbbp$64;-><init>(Lbbp;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method

.method public final b(JLckm$a;)V
    .locals 3
    .param p1, "parentDingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lckm$a",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p3, "observer":Lckm$a;, "Lckm$a<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lbbp$23;-><init>(Lbbp;JLckm$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public final b(Lckm$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 167
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$98;

    invoke-direct {v1, p0, p1}, Lbbp$98;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public final b(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 572
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$69;

    invoke-direct {v1, p0, p1}, Lbbp$69;-><init>(Lbbp;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 578
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 581
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$70;

    invoke-direct {v1, p0, p1, p2}, Lbbp$70;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 2
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "observer"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 130
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$56;

    invoke-direct {v1, p0, p1, p2}, Lbbp$56;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 431
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$53;

    invoke-direct {v1, p0, p1}, Lbbp$53;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 626
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$74;

    invoke-direct {v1, p0, p1, p2}, Lbbp$74;-><init>(Lbbp;Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 632
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 536
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$65;

    invoke-direct {v1, p0}, Lbbp$65;-><init>(Lbbp;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 542
    return-void
.end method

.method public final c(Lckm$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 212
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$28;

    invoke-direct {v1, p0, p1}, Lbbp$28;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public final c(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 635
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$75;

    invoke-direct {v1, p0, p1}, Lbbp$75;-><init>(Lbbp;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 641
    return-void
.end method

.method public final c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 449
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$55;

    invoke-direct {v1, p0, p1}, Lbbp$55;-><init>(Lbbp;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 455
    return-void
.end method

.method public final c(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 644
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-nez p2, :cond_0

    .line 659
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$76;

    invoke-direct {v1, p0, p1, p2}, Lbbp$76;-><init>(Lbbp;Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final d(Lckm$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 221
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$29;

    invoke-direct {v1, p0, p1}, Lbbp$29;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public final d(Lcma;)V
    .locals 2
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

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 853
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$91;

    invoke-direct {v1, p0, p1}, Lbbp$91;-><init>(Lbbp;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public final d(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 677
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$79;

    invoke-direct {v1, p0, p2, p1}, Lbbp$79;-><init>(Lbbp;Lcma;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 683
    return-void
.end method

.method public final e(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 686
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    iget-object v0, p0, Lbbp;->b:Lbbp$a;

    new-instance v1, Lbbp$80;

    invoke-direct {v1, p0, p1, p2}, Lbbp$80;-><init>(Lbbp;Ljava/lang/String;Lcma;)V

    invoke-virtual {v0, v1}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 706
    return-void
.end method
