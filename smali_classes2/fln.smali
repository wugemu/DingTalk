.class public final Lfln;
.super Ljava/lang/Object;
.source "ConcernService.java"


# static fields
.field private static b:Lfln;


# instance fields
.field public a:Lcom/alibaba/wukong/im/FollowListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lfln$1;

    invoke-direct {v0, p0}, Lfln$1;-><init>(Lfln;)V

    iput-object v0, p0, Lfln;->a:Lcom/alibaba/wukong/im/FollowListener;

    .line 70
    return-void
.end method

.method public static declared-synchronized a()Lfln;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lfln;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfln;->b:Lfln;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lfln;

    invoke-direct {v0}, Lfln;-><init>()V

    sput-object v0, Lfln;->b:Lfln;

    .line 66
    :cond_0
    sget-object v0, Lfln;->b:Lfln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lfln;Lcom/alibaba/wukong/im/Follow$FollowStatus;)Z
    .locals 1
    .param p0, "x0"    # Lfln;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Follow$FollowStatus;

    .prologue
    .line 32
    .line 1277
    sget-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->FOLLOWING:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alibaba/wukong/im/Follow$FollowStatus;->BOTHWAY_FOLLOW:Lcom/alibaba/wukong/im/Follow$FollowStatus;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0
.end method


# virtual methods
.method public final a(IILcma;)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 196
    .local p3, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/Long;>;>;"
    const-class v1, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/FollowService;

    .line 197
    .local v0, "service":Lcom/alibaba/wukong/im/FollowService;
    new-instance v5, Lfln$4;

    invoke-direct {v5, p0, p3}, Lfln$4;-><init>(Lfln;Lcma;)V

    .line 234
    .local v5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Follow;>;>;"
    const-wide/16 v2, 0x0

    move v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/FollowService;->listFollowings(IJILcom/alibaba/wukong/Callback;)V

    .line 235
    return-void
.end method

.method public final a(JLcma;)V
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v0, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/FollowService;

    .line 93
    .local v1, "service":Lcom/alibaba/wukong/im/FollowService;
    new-instance v6, Lfln$2;

    invoke-direct {v6, p0, p3}, Lfln$2;-><init>(Lfln;Lcma;)V

    .line 138
    .local v6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Follow;>;"
    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/wukong/im/FollowService;->follow(JJLcom/alibaba/wukong/Callback;)V

    .line 140
    return-void
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 239
    const-class v1, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/FollowService;

    .line 240
    .local v0, "service":Lcom/alibaba/wukong/im/FollowService;
    new-instance v5, Lfln$5;

    invoke-direct {v5, p0}, Lfln$5;-><init>(Lfln;)V

    .line 271
    .local v5, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Follow;>;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/FollowService;->listFollowings(IJILcom/alibaba/wukong/Callback;)V

    .line 273
    return-void
.end method

.method public final b(JLcma;)V
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v0, Lcom/alibaba/wukong/im/FollowService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/FollowService;

    .line 146
    .local v1, "service":Lcom/alibaba/wukong/im/FollowService;
    new-instance v6, Lfln$3;

    invoke-direct {v6, p0, p3}, Lfln$3;-><init>(Lfln;Lcma;)V

    .line 191
    .local v6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Follow;>;"
    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/wukong/im/FollowService;->unfollow(JJLcom/alibaba/wukong/Callback;)V

    .line 192
    return-void
.end method
