.class final Lfap$5;
.super Lcmg;
.source "FriendAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfap;->e(JILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmg",
        "<",
        "Lcdt;",
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lfap;


# direct methods
.method constructor <init>(Lfap;Lcma;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lfap;

    .prologue
    .line 381
    .local p2, "x0":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;>;"
    iput-object p1, p0, Lfap$5;->b:Lfap;

    iput-object p3, p0, Lfap$5;->a:Lcma;

    invoke-direct {p0, p2}, Lcmg;-><init>(Lcma;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 381
    check-cast p1, Lcdt;

    .line 1389
    if-nez p1, :cond_1

    .line 1390
    iget-object v0, p0, Lfap$5;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lfap$5;->a:Lcma;

    invoke-interface {v0, v1, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;-><init>()V

    .line 1396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1397
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1398
    iget-object v0, p1, Lcdt;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1399
    iget-object v0, p1, Lcdt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcds;

    .line 1400
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->fromIdl(Lcds;)Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    move-result-object v0

    .line 1401
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v5, :cond_2

    .line 1404
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1405
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1408
    :cond_3
    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    .line 1409
    iget-object v0, p1, Lcdt;->b:Ljava/lang/Long;

    .line 2044
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 1409
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->cursor:J

    .line 1410
    iget-object v0, p1, Lcdt;->c:Ljava/lang/Boolean;

    .line 3022
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1410
    iput-boolean v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->hasMore:Z

    .line 1411
    invoke-static {}, Lfbj;->a()Lfbj;

    move-result-object v0

    new-instance v2, Lfap$5$1;

    invoke-direct {v2, p0, v1}, Lfap$5$1;-><init>(Lfap$5;Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;)V

    invoke-virtual {v0, v3, v2}, Lfbj;->b(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method
