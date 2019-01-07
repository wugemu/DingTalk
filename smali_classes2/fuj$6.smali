.class final Lfuj$6;
.super Ljava/lang/Object;
.source "NameCardCache.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfuj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

.field final synthetic c:Lfuj;


# direct methods
.method constructor <init>(Lfuj;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V
    .locals 0
    .param p1, "this$0"    # Lfuj;

    .prologue
    .line 359
    iput-object p1, p0, Lfuj$6;->c:Lfuj;

    iput-object p2, p0, Lfuj$6;->a:Landroid/app/Activity;

    iput-object p3, p0, Lfuj$6;->b:Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 359
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;

    .line 1362
    iget-object v10, p0, Lfuj$6;->c:Lfuj;

    iget-object v1, p0, Lfuj$6;->a:Landroid/app/Activity;

    iget-object v9, p0, Lfuj$6;->b:Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

    .line 2381
    if-nez p1, :cond_0

    .line 2382
    iput-boolean v2, v10, Lfuj;->e:Z

    .line 2406
    :goto_0
    return-void

    .line 2385
    :cond_0
    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->cursor:J

    iput-wide v6, v10, Lfuj;->d:J

    .line 2386
    iget-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->hasMore:Z

    iput-boolean v0, v10, Lfuj;->e:Z

    .line 2387
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendObjectList;->friendList:Ljava/util/List;

    .line 2388
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2389
    iput-boolean v2, v10, Lfuj;->e:Z

    goto :goto_0

    .line 2392
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;

    .line 2393
    if-eqz v0, :cond_2

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_2

    .line 2394
    iget-object v6, v10, Lfuj;->f:Ljava/util/List;

    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2396
    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v6, :cond_2

    .line 2397
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;-><init>()V

    .line 2398
    iget-wide v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->uid:J

    iput-wide v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    .line 2399
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->title:Ljava/lang/String;

    .line 2400
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/FriendObject;->card:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    iput-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->orgName:Ljava/lang/String;

    .line 2401
    iget-object v0, v10, Lfuj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2405
    :cond_3
    iget-boolean v0, v10, Lfuj;->e:Z

    if-eqz v0, :cond_4

    .line 2406
    invoke-virtual {v10, v1, v9}, Lfuj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V

    goto :goto_0

    .line 2409
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.user.card_friend"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2410
    const-string/jumbo v3, "intent_key_user_card_friend"

    iget-object v6, v10, Lfuj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2411
    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2413
    iget-object v0, v10, Lfuj;->f:Ljava/util/List;

    invoke-static {v0}, Lfuj;->a(Ljava/util/List;)[J

    move-result-object v3

    .line 2414
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget v6, v9, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->max:I

    iget-object v7, v9, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->title:Ljava/lang/String;

    iget-object v8, v9, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->pickedUsers:[J

    iget-object v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->disabledUsers:[J

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;I[JJILjava/lang/String;[J[J)V

    .line 2419
    iget-object v0, v10, Lfuj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lfuj;->g:Ljava/util/ArrayList;

    .line 2422
    iput-wide v4, v10, Lfuj;->d:J

    .line 2423
    const/4 v0, 0x1

    iput-boolean v0, v10, Lfuj;->e:Z

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 372
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "code:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 368
    return-void
.end method
