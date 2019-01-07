.class public Lcom/alibaba/lightapp/runtime/money/ChooseResultHandler;
.super Ljava/lang/Object;
.source "ChooseResultHandler.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# static fields
.field private static final serialVersionUID:J = 0x13a99f1e4b76247cL


# instance fields
.field private mCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/money/ChooseResultHandler;->mCallbackId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v6, p2

    if-lez v6, :cond_1

    .line 33
    aget-object v6, p2, v7

    instance-of v6, v6, Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 34
    aget-object v1, p2, v7

    check-cast v1, Landroid/content/Intent;

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "choose_user_identities"

    .line 36
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 37
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 39
    .local v3, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v3, :cond_0

    .line 42
    new-instance v5, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;

    invoke-direct {v5}, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;-><init>()V

    .line 43
    .local v5, "user":Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v8, v5, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->uid:J

    .line 44
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->nick:Ljava/lang/String;

    .line 45
    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;->avatarURL:Ljava/lang/String;

    .line 46
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v5    # "user":Lcom/alibaba/lightapp/runtime/money/RequestMoneyUser;
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "action_request_money_pick_result_contact"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "extra_contact_list"

    .line 54
    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "extra_callback_id"

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/money/ChooseResultHandler;->mCallbackId:Ljava/lang/String;

    .line 55
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 56
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v6

    invoke-virtual {v6, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 58
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 61
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
