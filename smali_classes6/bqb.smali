.class public final Lbqb;
.super Lcom/alibaba/wukong/sync/SyncDataHandler;
.source "NoticeReceiveHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/wukong/sync/SyncDataHandler",
        "<",
        "Lbpm;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    const/16 v2, 0x2af8

    const-class v3, Lbpm;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;-><init>(Lcom/alibaba/wukong/sync/SyncType;ILjava/lang/reflect/Type;)V

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/sync/SyncDataHandler;-><init>(Lcom/alibaba/wukong/sync/SyncDataHandler$TypeFilter;)V

    .line 49
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5019
    .local p0, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 178
    .local v2, "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->isAdd()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 180
    .local v0, "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v0    # "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .end local v2    # "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    :cond_1
    return-object v1
.end method

.method static synthetic a(Lbqb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lbqb;
    .param p1, "x1"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lbqb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 3
    .param p1, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    const/4 v1, 0x1

    .line 101
    iget v0, p0, Lbqb;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbqb;->a:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 4032
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 102
    :goto_0
    if-eqz v0, :cond_2

    .line 4111
    const-string/jumbo v0, "Circle-Notice-Push"

    invoke-static {v0, v1}, Lbqq;->a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lbqb$2;

    invoke-direct {v1, p0, p1, p2}, Lbqb$2;-><init>(Lbqb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 108
    :cond_0
    :goto_1
    return-void

    .line 4032
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0, p1, p2}, Lbqb;->b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    goto :goto_1
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6019
    .local p0, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "commentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 193
    .local v2, "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->isDelete()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 196
    .local v0, "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v0    # "commentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .end local v2    # "noticeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    :cond_1
    return-object v1
.end method

.method static synthetic b(Lbqb;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lbqb;
    .param p1, "x1"    # Lcom/alibaba/wukong/sync/SyncAck;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lbqb;->b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    return-void
.end method

.method private b(Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    .locals 9
    .param p1, "ack"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 121
    .local p2, "noticObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-static {}, Lbpd;->e()Lbpd;

    move-result-object v1

    .line 122
    .local v1, "dataSource":Lbpd;
    invoke-virtual {v1, p2}, Lbpd;->b(Ljava/util/Collection;)I

    move-result v5

    .line 123
    .local v5, "items":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "doBulkMerge "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " items"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lbqh;->a(Ljava/lang/String;)V

    .line 126
    invoke-static {p2}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->inflate(Ljava/util/List;)Ljava/util/List;

    .line 128
    invoke-static {p2}, Lbqb;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "addedComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {p2}, Lbqb;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "deletedComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v3

    .line 133
    .local v3, "impl":Lbpb;
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    invoke-virtual {v3, v0, v2}, Lbpb;->a(Ljava/util/List;Ljava/util/List;)V

    .line 4155
    :cond_0
    :goto_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v6, "circle_on_receive_notice"

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4156
    instance-of v6, p2, Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 4157
    const-string/jumbo v8, "circle_on_receive_notice"

    move-object v6, p2

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4164
    :goto_1
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v6

    .line 4165
    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v7}, Ldq;->a(Landroid/content/Intent;)Z

    .line 4169
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "circle_on_receive_notice_num"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4170
    const-string/jumbo v7, "circle_on_receive_notice_num"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4171
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v7

    invoke-virtual {v7, v6}, Ldq;->a(Landroid/content/Intent;)Z

    .line 146
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "action_comments_changed"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "extra_comments_added"

    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "addedComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v6, "extra_comments_deleted"

    check-cast v2, Ljava/util/ArrayList;

    .end local v2    # "deletedComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 149
    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 152
    return-void

    .line 135
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v0    # "addedComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    .restart local v2    # "deletedComments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    :cond_1
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 136
    invoke-virtual {v3, v0}, Lbpb;->b(Ljava/util/Collection;)I

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {v2}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 138
    invoke-virtual {v3, v2}, Lbpb;->a(Ljava/util/List;)V

    goto :goto_0

    .line 4159
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 4160
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4161
    const-string/jumbo v8, "circle_on_receive_notice"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public final onReceived(Ljava/util/List;Lcom/alibaba/wukong/sync/SyncAck;)V
    .locals 10
    .param p2, "syncAck"    # Lcom/alibaba/wukong/sync/SyncAck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbpm;",
            ">;",
            "Lcom/alibaba/wukong/sync/SyncAck;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 53
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lbpm;>;"
    const/4 v5, 0x0

    .line 55
    .local v5, "trace":Lhzv;
    :try_start_0
    const-string/jumbo v6, "[SYNC] follow"

    .line 1014
    const-string/jumbo v7, "im"

    invoke-static {v6, v7}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;)Lhzv;

    move-result-object v5

    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 57
    :cond_0
    const-string/jumbo v6, "[SYNC] models empty"

    invoke-virtual {v5, v6}, Lhzv;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 1030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 97
    :goto_0
    return-void

    .line 61
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 62
    .local v3, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpm;

    .line 63
    .local v0, "model":Lbpm;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->fromIdl(Lbpm;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    move-result-object v4

    .line 64
    .local v4, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    if-eqz v4, :cond_2

    .line 67
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 95
    .end local v0    # "model":Lbpm;
    .end local v3    # "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 4030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    .line 96
    throw v6

    .line 70
    .restart local v3    # "notices":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    :cond_3
    :try_start_2
    invoke-static {v3}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    const-string/jumbo v6, "notice empty"

    .line 1076
    const/4 v7, 0x0

    invoke-static {v7, v6}, Lbqh;->a(ZLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 2030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto :goto_0

    .line 75
    :cond_4
    const/4 v6, 0x0

    :try_start_3
    iput v6, p0, Lbqb;->a:I

    .line 76
    move-object v2, v3

    .line 77
    .local v2, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .line 78
    .local v1, "notice":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 81
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    invoke-static {v7}, Lcpf;->a(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 82
    iget-object v7, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    new-instance v9, Lbqb$1;

    invoke-direct {v9, p0, v1, p2, v2}, Lbqb$1;-><init>(Lbqb;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V

    invoke-static {v7, v8, v9}, Lbqg;->a(Ljava/lang/String;Ljava/util/Map;Lcov;)V

    goto :goto_2

    .line 90
    :cond_6
    invoke-direct {p0, p2, v2}, Lbqb;->a(Lcom/alibaba/wukong/sync/SyncAck;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 95
    .end local v1    # "notice":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    :cond_7
    invoke-virtual {p2}, Lcom/alibaba/wukong/sync/SyncAck;->success()V

    .line 3030
    invoke-static {v5}, Lhzt;->a(Lhzv;)V

    goto/16 :goto_0
.end method
