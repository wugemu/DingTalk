.class final Lflt$11;
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
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:I

.field final synthetic c:Lflt;


# direct methods
.method constructor <init>(Lflt;Lcom/alibaba/wukong/Callback;I)V
    .locals 0
    .param p1, "this$0"    # Lflt;

    .prologue
    .line 537
    iput-object p1, p0, Lflt$11;->c:Lflt;

    iput-object p2, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    iput p3, p0, Lflt$11;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 537
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;

    .line 4540
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 5060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 4540
    if-nez v0, :cond_1

    .line 4541
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 4542
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v8, v8}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4554
    :cond_0
    :goto_0
    return-void

    .line 4546
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 4547
    :cond_2
    iget v0, p0, Lflt$11;->b:I

    iget-object v1, p0, Lflt$11;->c:Lflt;

    .line 6060
    iget-object v1, v1, Lflt;->c:Ljava/util/List;

    .line 4547
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4548
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 7060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 4548
    iget v1, p0, Lflt$11;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4549
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 8060
    invoke-virtual {v0}, Lflt;->a()V

    .line 4551
    :cond_3
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 4552
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 4556
    :cond_4
    iget-object v0, p0, Lflt$11;->c:Lflt;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->cursor:J

    .line 9060
    iput-wide v2, v0, Lflt;->b:J

    .line 4557
    iget-object v0, p0, Lflt$11;->c:Lflt;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->hasMore:Z

    .line 10060
    iput-boolean v1, v0, Lflt;->e:Z

    .line 4558
    iget-object v0, p0, Lflt$11;->c:Lflt;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11060
    iput-object v1, v0, Lflt;->d:Ljava/util/List;

    .line 4560
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObjectList;->friendRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;

    .line 4561
    if-eqz v0, :cond_5

    .line 4564
    iget-object v1, p0, Lflt$11;->c:Lflt;

    .line 12060
    iget-object v1, v1, Lflt;->c:Ljava/util/List;

    .line 4564
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 4565
    if-eqz v1, :cond_6

    .line 4568
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    goto :goto_2

    .line 4572
    :cond_7
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;-><init>()V

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->uid:J

    .line 12062
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a:J

    .line 4573
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->mobile:Ljava/lang/String;

    .line 12092
    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->f:Ljava/lang/String;

    .line 4574
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isRead:Z

    .line 13087
    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->e:Z

    .line 4575
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->remark:Ljava/lang/String;

    .line 14082
    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->d:Ljava/lang/String;

    .line 4576
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->status:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 4577
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;)Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;

    move-result-object v1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 15077
    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->c:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 4578
    iget-boolean v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->isHide:Z

    .line 15122
    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->l:Z

    .line 4579
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 15127
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->m:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 4581
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject$a;->a()Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    move-result-object v0

    .line 4583
    iget-object v1, p0, Lflt$11;->c:Lflt;

    .line 16060
    iget-object v1, v1, Lflt;->d:Ljava/util/List;

    .line 4583
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4585
    :cond_8
    iget v0, p0, Lflt$11;->b:I

    iget-object v1, p0, Lflt$11;->c:Lflt;

    .line 17060
    iget-object v1, v1, Lflt;->c:Ljava/util/List;

    .line 4585
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 4586
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 18060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 4586
    iget v1, p0, Lflt$11;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4588
    :cond_9
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 19060
    iget-object v0, v0, Lflt;->d:Ljava/util/List;

    .line 4588
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 4589
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 20060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 4589
    iget-object v1, p0, Lflt$11;->c:Lflt;

    .line 21060
    iget-object v1, v1, Lflt;->d:Ljava/util/List;

    .line 4589
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4591
    :cond_a
    iget-object v0, p0, Lflt$11;->c:Lflt;

    invoke-static {v0}, Lflt;->b(Lflt;)V

    .line 4592
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 4593
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 1060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 605
    if-eqz v0, :cond_0

    iget v0, p0, Lflt$11;->b:I

    iget-object v1, p0, Lflt$11;->c:Lflt;

    .line 2060
    iget-object v1, v1, Lflt;->c:Ljava/util/List;

    .line 605
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 3060
    iget-object v0, v0, Lflt;->c:Ljava/util/List;

    .line 606
    iget v1, p0, Lflt$11;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lflt$11;->c:Lflt;

    .line 4060
    invoke-virtual {v0}, Lflt;->a()V

    .line 609
    :cond_0
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lflt$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v2, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_1
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 600
    return-void
.end method
