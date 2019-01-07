.class final Lflr$1$1;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflr$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

.field final synthetic b:Lcma;

.field final synthetic c:Lflr$1;


# direct methods
.method constructor <init>(Lflr$1;Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lflr$1;

    .prologue
    .line 109
    iput-object p1, p0, Lflr$1$1;->c:Lflr$1;

    iput-object p2, p0, Lflr$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iput-object p3, p0, Lflr$1$1;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "mergeFriends error:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "loading "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-boolean v2, Lflr;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    sget-boolean v0, Lflr;->a:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lflr;->b()V

    .line 133
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v5, 0x7d0

    const/4 v4, 0x0

    .line 109
    .line 1112
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "friends_bulk_sync"

    invoke-virtual {v0, v1, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    const-string/jumbo v0, "pref_sync_friends_cursor"

    iget-object v1, p0, Lflr$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->cursor:J

    invoke-static {v0, v2, v3}, Lcpk;->b(Ljava/lang/String;J)V

    .line 1115
    :cond_0
    iget-object v0, p0, Lflr$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 1117
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v0

    iget-object v1, p0, Lflr$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->cursor:J

    iget-object v1, p0, Lflr$1$1;->b:Lcma;

    invoke-interface {v0, v2, v3, v5, v1}, Lezv;->a(JILcma;)V

    .line 1118
    const-string/jumbo v0, "mergeFriends, continue to pull friendList"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    .line 1120
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "mergeFriends, notifyFirstloadEnd, loading "

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-boolean v2, Lflr;->a:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    sget-boolean v0, Lflr;->a:Z

    if-eqz v0, :cond_1

    .line 1122
    invoke-static {}, Lflr;->b()V

    goto :goto_0
.end method
