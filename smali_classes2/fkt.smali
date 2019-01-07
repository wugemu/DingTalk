.class public final Lfkt;
.super Lcom/alibaba/wukong/sync/SyncParaDataHandler;
.source "CreateOrgSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfkt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncParaDataHandler",
        "<",
        "Lcfb;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lfkt;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfkt$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfkt;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0x3e80

    const-class v1, Lcfb;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/wukong/sync/SyncParaDataHandler;-><init>(ILjava/lang/Class;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfkt;->a:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static a()Lfkt;
    .locals 4

    .prologue
    .line 29
    sget-object v0, Lfkt;->c:Lfkt;

    .line 30
    .local v0, "res":Lfkt;
    sget-object v2, Lfkt;->c:Lfkt;

    if-nez v2, :cond_1

    .line 31
    sget-object v3, Lfkt;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 32
    :try_start_0
    sget-object v0, Lfkt;->c:Lfkt;

    .line 33
    if-nez v0, :cond_0

    .line 34
    new-instance v1, Lfkt;

    invoke-direct {v1}, Lfkt;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "res":Lfkt;
    .local v1, "res":Lfkt;
    :try_start_1
    sput-object v1, Lfkt;->c:Lfkt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 36
    .end local v1    # "res":Lfkt;
    .restart local v0    # "res":Lfkt;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 38
    :cond_1
    return-object v0

    .line 36
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "res":Lfkt;
    .restart local v1    # "res":Lfkt;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "res":Lfkt;
    .restart local v0    # "res":Lfkt;
    goto :goto_0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 5
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcfb;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 51
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcfb;>;"
    const/4 v0, 0x0

    .line 52
    .local v0, "trace":Lhzv;
    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 57
    :cond_0
    :try_start_0
    const-string/jumbo v1, "[SYNC] OrgMemberModel"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 58
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    :cond_1
    const-string/jumbo v1, "[SYNC] models empty"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 65
    :goto_0
    return-void

    .line 1097
    :cond_2
    :try_start_1
    iget-object v2, p0, Lfkt;->a:Ljava/util/List;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1098
    :try_start_2
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1099
    iget-object v1, p0, Lfkt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1100
    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1101
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfkt$a;

    .line 1102
    if-eqz v1, :cond_3

    .line 1103
    invoke-interface {v1, v3}, Lfkt$a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 1106
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :catchall_1
    move-exception v1

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 64
    throw v1

    .line 1106
    :cond_4
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0
.end method
