.class final Lbag$21;
.super Landroid/content/BroadcastReceiver;
.source "DingDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 462
    iput-object p1, p0, Lbag$21;->a:Lbag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 465
    if-eqz p2, :cond_0

    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v8

    invoke-interface {v8}, Lbaf$b;->d()Z

    move-result v8

    if-nez v8, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string/jumbo v8, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "com.workapp.choose.people.from.contact"

    .line 469
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "com.workapp.ding.choose.myself"

    .line 470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 471
    :cond_2
    const-string/jumbo v8, "activity_identify"

    invoke-static {p2, v8}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "identifier":Ljava/lang/String;
    const-string/jumbo v8, "identify_ding_detail_activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 473
    const-string/jumbo v8, "choose_user_identities"

    invoke-static {p2, v8}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 475
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 476
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-virtual {v8, v2, v10}, Lbag;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 478
    .end local v2    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_3
    const-string/jumbo v8, "ding_detail_create_call"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 479
    const-string/jumbo v8, "choose_user_identities"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 481
    .restart local v2    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 482
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v8

    invoke-interface {v8, v2}, Lbaf$b;->b(Ljava/util/List;)V

    goto :goto_0

    .line 485
    .end local v0    # "identifier":Ljava/lang/String;
    .end local v2    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    const-string/jumbo v8, "ding_detail_create_call"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 486
    const-string/jumbo v8, "choose_user_identities"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 488
    .restart local v2    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 489
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v8

    invoke-interface {v8, v2}, Lbaf$b;->b(Ljava/util/List;)V

    goto/16 :goto_0

    .line 491
    .end local v2    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    const-string/jumbo v8, "com.workapp.choose.from.ding.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 493
    const-string/jumbo v8, "choose_user_identities"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 495
    .local v3, "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v8

    invoke-interface {v8, v3}, Lbaf$b;->c(Ljava/util/List;)V

    goto/16 :goto_0

    .line 496
    .end local v3    # "selectedMembers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->g(Lbag;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 500
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "choose_picture_ids"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 502
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, "send_origin_picture"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 504
    .local v4, "sendOrigin":Z
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 505
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 506
    .local v7, "url":Ljava/lang/String;
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v8

    invoke-interface {v8, v7, v4}, Lbaf$b;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 508
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "sendOrigin":Z
    .end local v7    # "url":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->h(Lbag;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 509
    const-string/jumbo v8, "msg_entity_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 511
    .local v6, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 512
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 513
    .local v5, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v5, :cond_0

    .line 514
    iget-object v8, p0, Lbag$21;->a:Lbag;

    invoke-static {v8}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v8

    invoke-interface {v8, v5}, Lbaf$b;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    goto/16 :goto_0
.end method
