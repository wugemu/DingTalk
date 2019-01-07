.class public final Lgok;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "CSpaceSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lgih;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v1, 0x4269

    const-class v2, Lgih;

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/Class;)V

    .line 37
    const-string/jumbo v0, "CSpaceSyncHandler"

    iput-object v0, p0, Lgok;->a:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lgok;->b:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lgok;->c:I

    .line 42
    const/16 v0, 0x14

    iput v0, p0, Lgok;->d:I

    .line 48
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgih;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lgih;>;"
    const/4 v4, 0x0

    .line 141
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgih;

    .line 146
    .local v0, "spaceSyncPushModel":Lgih;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lgih;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, v0, Lgih;->a:Ljava/lang/Integer;

    .line 4033
    invoke-static {v2, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 150
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 154
    const-string/jumbo v1, "receivedSyncDriveOpenCommand"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lgpp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4035
    const-string/jumbo v1, "pref_key_space_sync_drive_open"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpl;->a(Ljava/lang/String;Z)V

    .line 4038
    const-string/jumbo v1, "pref_key_space_sync_drive_guide_close_clicked"

    invoke-static {v1}, Lcpl;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4039
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_key_space_sync_drive_guide_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4040
    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 12
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgih;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lgih;>;"
    const-wide/16 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 52
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v1, "[SYNC_A] CSpace"

    .line 1014
    const-string/jumbo v2, "im"

    invoke-static {v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v0

    .line 58
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    const-string/jumbo v1, "[PUSH] models empty"

    invoke-virtual {v0, v1}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 71
    :goto_0
    return-void

    .line 1075
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1113
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    :cond_3
    :goto_2
    invoke-static {p1}, Lgok;->a(Ljava/util/List;)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[SYNC_A] CSpace size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhzv;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 1079
    :cond_4
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgih;

    .line 1083
    if-eqz v1, :cond_5

    iget-object v5, v1, Lgih;->a:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    .line 1087
    iget-object v5, v1, Lgih;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 1088
    iget-object v5, v1, Lgih;->b:Ljava/lang/Long;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lgih;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 1092
    iget-object v1, v1, Lgih;->b:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 70
    :catchall_0
    move-exception v1

    .line 4030
    invoke-static {v0}, Lhzt;->a(Lhzv;)V

    .line 70
    throw v1

    .line 1093
    :cond_6
    :try_start_3
    iget-object v5, v1, Lgih;->a:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 1094
    iget-object v5, v1, Lgih;->b:Ljava/lang/Long;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lgih;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 1098
    iget-object v1, v1, Lgih;->b:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1102
    :cond_7
    invoke-static {}, Lgam;->a()Lgam;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lgam;->a(Ljava/util/List;Ljava/util/List;)V

    .line 1103
    const-string/jumbo v1, "pref_cooperation_invite_new_show"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1106
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.dingtalk.space.cooperation.folder.new"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1109
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceSyncHandler"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "parseCooperationNew"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1117
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgih;

    .line 1119
    if-eqz v1, :cond_3

    .line 1123
    iget-object v1, v1, Lgih;->a:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 1125
    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v2, 0xb

    if-eq v1, v2, :cond_9

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 1131
    :cond_9
    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "CSpaceSyncHandler"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "parseAdsNew and type is :"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v1, "pref_key_ads_new_show"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1135
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.dingtalk.space.ads.new"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
