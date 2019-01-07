.class final Lfnl$1;
.super Ljava/lang/Object;
.source "TmpFriendRequestDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnl;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lfnl;


# direct methods
.method constructor <init>(Lfnl;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lfnl;

    .prologue
    .line 27
    iput-object p1, p0, Lfnl$1;->c:Lfnl;

    iput-object p2, p0, Lfnl$1;->a:Ljava/util/List;

    iput-object p3, p0, Lfnl$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 32
    .local v2, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lfnl$1;->c:Lfnl;

    invoke-static {v3}, Lfnl;->b(Lfnl;)Lcom/alibaba/bee/DBManager;

    move-result-object v3

    iget-object v4, p0, Lfnl$1;->c:Lfnl;

    invoke-static {v4}, Lfnl;->a(Lfnl;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;

    const-class v6, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;

    const-string/jumbo v7, "tb_tmp_friend_request"

    invoke-static {v6, v7}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v2

    .line 33
    iget-object v3, p0, Lfnl$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 34
    .local v1, "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    new-instance v0, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;-><init>()V

    .line 35
    .local v0, "entry":Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    iput-wide v4, v0, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;->uid:J

    .line 36
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;->iconMediaId:Ljava/lang/String;

    .line 37
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;->nick:Ljava/lang/String;

    .line 38
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;->remark:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v2}, Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 40
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 41
    invoke-interface {v2}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 42
    iget-object v4, p0, Lfnl$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    .end local v0    # "entry":Lcom/alibaba/android/user/entry/TmpFriendRequestEntry;
    .end local v1    # "object":Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lfnl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v3

    :cond_0
    invoke-static {v2}, Lfnl;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 46
    return-void
.end method
