.class public Lbtr;
.super Ljava/lang/Object;
.source "LiveRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbtr$b;,
        Lbtr$a;
    }
.end annotation


# static fields
.field private static volatile b:Lbtr;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lbtr$a;",
            "Lbtr$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbtv;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lbtr;->a:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lbtr$1;

    invoke-direct {v0, p0}, Lbtr$1;-><init>(Lbtr;)V

    iput-object v0, p0, Lbtr;->c:Lbtv;

    .line 58
    return-void
.end method

.method public static a()Lbtr;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lbtr;->b:Lbtr;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lbtr;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lbtr;->b:Lbtr;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lbtr;

    invoke-direct {v0}, Lbtr;-><init>()V

    sput-object v0, Lbtr;->b:Lbtr;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lbtr;->b:Lbtr;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(II)Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    .locals 6
    .param p1, "searchType"    # I
    .param p2, "pageNum"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    new-instance v0, Lbtr$a;

    invoke-direct {v0, p1, p2}, Lbtr$a;-><init>(II)V

    .line 74
    .local v0, "key":Lbtr$a;
    iget-object v2, p0, Lbtr;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbtr$b;

    .line 75
    .local v1, "value":Lbtr$b;
    if-eqz v1, :cond_2

    .line 1137
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iget-wide v4, v1, Lbtr$b;->a:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 76
    :goto_0
    if-eqz v2, :cond_1

    .line 2127
    iget-object v2, v1, Lbtr$b;->b:Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_1
    monitor-exit p0

    return-object v2

    .line 1137
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 79
    :cond_1
    :try_start_1
    iget-object v2, p0, Lbtr;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 73
    .end local v0    # "key":Lbtr$a;
    .end local v1    # "value":Lbtr$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(IILcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;)V
    .locals 4
    .param p1, "searchType"    # I
    .param p2, "pageNum"    # I
    .param p3, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 87
    monitor-enter p0

    if-nez p3, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_0
    new-instance v0, Lbtr$a;

    invoke-direct {v0, p1, p2}, Lbtr$a;-><init>(II)V

    .line 91
    .local v0, "key":Lbtr$a;
    new-instance v1, Lbtr$b;

    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    invoke-direct {v1, p3, v2, v3}, Lbtr$b;-><init>(Lcom/alibaba/android/dingtalk/livebase/model/ListLiveRecordsRspObject;J)V

    .line 92
    .local v1, "value":Lbtr$b;
    iget-object v2, p0, Lbtr;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "key":Lbtr$a;
    .end local v1    # "value":Lbtr$b;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
