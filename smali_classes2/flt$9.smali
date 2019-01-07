.class final Lflt$9;
.super Ljava/lang/Object;
.source "FriendRequestDataManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lflt;


# direct methods
.method constructor <init>(Lflt;)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 301
    iput-object p1, p0, Lflt$9;->a:Lflt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 301
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    .line 2304
    iget-object v0, p0, Lflt$9;->a:Lflt;

    invoke-static {v0}, Lflt;->a(Lflt;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2307
    iget-object v0, p0, Lflt$9;->a:Lflt;

    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->exColleagueInvalidDay:I

    .line 3060
    iput v1, v0, Lflt;->h:I

    .line 2308
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2309
    iget-object v0, p0, Lflt$9;->a:Lflt;

    .line 4060
    iget-object v0, v0, Lflt;->i:Ljava/util/List;

    .line 2309
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2310
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 2311
    if-eqz v0, :cond_0

    .line 2314
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 4062
    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 2315
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    .line 4092
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->f:Ljava/lang/String;

    .line 2316
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    .line 5087
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 2317
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 6082
    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 2318
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 2319
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    move-result-object v2

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 7077
    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2321
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v0

    .line 2322
    iget-object v2, p0, Lflt$9;->a:Lflt;

    .line 8060
    iget-object v2, v2, Lflt;->i:Ljava/util/List;

    .line 2322
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2326
    :cond_1
    iget-object v0, p0, Lflt$9;->a:Lflt;

    .line 9060
    invoke-virtual {v0}, Lflt;->a()V

    .line 2327
    iget-object v0, p0, Lflt$9;->a:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    .line 301
    :cond_2
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 337
    iget-object v0, p0, Lflt$9;->a:Lflt;

    .line 1060
    invoke-virtual {v0}, Lflt;->a()V

    .line 338
    iget-object v0, p0, Lflt$9;->a:Lflt;

    invoke-static {v0}, Lflt;->c(Lflt;)V

    .line 339
    iget-object v0, p0, Lflt$9;->a:Lflt;

    .line 2060
    const/4 v1, 0x0

    iput-boolean v1, v0, Lflt;->a:Z

    .line 340
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 333
    return-void
.end method
