.class public Lfnc;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "FriendConnectionDataSourceImpl.java"

# interfaces
.implements Lfmp;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcjo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lfmp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfnc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 33
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Lfnc;->b:Lcjo;

    .line 236
    return-void
.end method

.method static synthetic a(Lfnc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfnc;

    .prologue
    .line 29
    invoke-virtual {p0}, Lfnc;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lfnc;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfnc;

    .prologue
    .line 29
    iget-object v0, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 11
    .param p1, "uid"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 160
    iget-object v0, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnc;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-string/jumbo v3, "tb_friend_connection"

    const-string/jumbo v4, "uid = ? "

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 161
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/user/internal/IMContextEngine;->c(J)V

    .line 163
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lfbn;->b(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 164
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v6, :cond_0

    .line 165
    iput-boolean v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    :cond_0
    move v0, v7

    .line 169
    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_0
    return v0

    :cond_1
    move v0, v8

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)I
    .locals 5
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "shareMobile"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 99
    if-eqz p1, :cond_0

    invoke-static {}, Lfnc;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v4

    .line 102
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/UserService;

    new-instance v1, Lfnc$1;

    invoke-direct {v1, p0, p1, p2}, Lfnc$1;-><init>(Lfnc;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)V

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 102
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/UserService;->getUser(Lcom/alibaba/wukong/Callback;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "friendObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 38
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lfnc;->j()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    move v6, v7

    .line 88
    :cond_1
    return v6

    .line 42
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .local v4, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    invoke-virtual {p0}, Lfnc;->k()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "dbName":Ljava/lang/String;
    iget-object v8, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v8, v0}, Lcom/alibaba/bee/DBManager;->beginTransaction(Ljava/lang/String;)V

    .line 46
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v5, "friendsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;>;"
    const/4 v2, 0x0

    .line 50
    .local v2, "friendConnectionStatement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v8, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    const-class v9, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-class v10, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-string/jumbo v11, "tb_friend_connection"

    invoke-static {v10, v11}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v0, v9, v10}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 51
    new-instance v1, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    invoke-direct {v1}, Lcom/alibaba/android/user/entry/FriendConnectionEntry;-><init>()V

    .line 52
    .local v1, "entry":Lcom/alibaba/android/user/entry/FriendConnectionEntry;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 53
    .local v3, "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    if-eqz v3, :cond_6

    sget-object v8, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->ADD:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-virtual {v8, v10}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 55
    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    iput-wide v10, v1, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->uid:J

    .line 57
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v8, :cond_4

    .line 58
    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v8, v1, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->mobile:Ljava/lang/String;

    .line 61
    :cond_4
    iget-boolean v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->showMobile:Z

    if-eqz v8, :cond_5

    move v8, v6

    :goto_1
    iput v8, v1, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->shareMobile:I

    .line 63
    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 64
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 65
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 66
    invoke-virtual {v1}, Lcom/alibaba/android/user/entry/FriendConnectionEntry;->clear()V

    .line 67
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v8

    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-virtual {v8, v10, v11}, Lcom/alibaba/android/user/internal/IMContextEngine;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    .end local v1    # "entry":Lcom/alibaba/android/user/entry/FriendConnectionEntry;
    .end local v3    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    :catchall_0
    move-exception v6

    invoke-static {v2}, Lfnc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 76
    iget-object v7, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    throw v6

    .restart local v1    # "entry":Lcom/alibaba/android/user/entry/FriendConnectionEntry;
    .restart local v3    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    :cond_5
    move v8, v7

    .line 61
    goto :goto_1

    .line 68
    :cond_6
    if-eqz v3, :cond_3

    :try_start_1
    sget-object v8, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->REMOVE:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    iget-object v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;

    invoke-virtual {v8, v10}, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject$FriendStatus;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 70
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v3    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    :cond_7
    iget-object v7, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->setTransactionSuccessful(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-static {v2}, Lfnc;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 76
    iget-object v7, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {v7, v0}, Lcom/alibaba/bee/DBManager;->endTransaction(Ljava/lang/String;)V

    .line 79
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 81
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 82
    .restart local v3    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;
    if-eqz v3, :cond_8

    .line 83
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-virtual {p0, v8, v9}, Lfnc;->a(J)I

    goto :goto_2
.end method

.method public final a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 190
    iget-object v0, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnc;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-string/jumbo v3, "tb_friend_connection"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v6, "uid"

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 192
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v9, :cond_1

    .line 195
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_1
    return-object v10
.end method

.method public final a(Lcjo$a;)V
    .locals 1
    .param p1, "eventListener"    # Lcjo$a;

    .prologue
    .line 207
    iget-object v0, p0, Lfnc;->b:Lcjo;

    invoke-interface {v0, p1}, Lcjo;->a(Lcjo$a;)V

    .line 208
    return-void
.end method

.method public final b()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 220
    iget-object v0, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnc;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-string/jumbo v3, "tb_friend_connection"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v6, "uid"

    aput-object v6, v4, v12

    const-string/jumbo v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 223
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 225
    .local v10, "isHasFriends":Z
    if-eqz v9, :cond_0

    .line 227
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v10, v11

    .line 229
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_0
    return v10

    :cond_1
    move v10, v12

    .line 227
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final b(J)Z
    .locals 13
    .param p1, "uid"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 175
    iget-object v0, p0, Lfnc;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfnc;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/FriendConnectionEntry;

    const-string/jumbo v3, "tb_friend_connection"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v4, v11

    const-string/jumbo v5, "uid = ? "

    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 176
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 178
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v11

    .line 185
    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
