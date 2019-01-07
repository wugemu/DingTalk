.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;
.super Landroid/content/BroadcastReceiver;
.source "TeleCallSelectMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 568
    const-string/jumbo v8, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "com.workapp.choose.people.from.group.member"

    .line 569
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 570
    :cond_0
    const-string/jumbo v8, "choose_mode"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 571
    .local v0, "chooseMode":I
    const-string/jumbo v8, "choose_user_identities"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 572
    .local v4, "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez v0, :cond_5

    .line 573
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 574
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_1

    .line 575
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)Ljava/util/List;

    .line 576
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->c(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Z)V

    .line 578
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    .line 579
    .local v2, "memberCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 580
    .local v1, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    .line 583
    new-instance v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v9, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v5, v9}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 585
    .local v5, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    iput-object v1, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 586
    iget-boolean v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    iput-boolean v9, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->f:Z

    .line 587
    const/4 v9, 0x0

    iput-object v9, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->e:Ljava/lang/String;

    .line 588
    iget v9, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_3

    .line 589
    iput-boolean v6, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->h:Z

    .line 594
    :goto_1
    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    :cond_3
    iput-boolean v7, v5, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->h:Z

    goto :goto_1

    .line 596
    .end local v1    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v5    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_4
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v8}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 598
    .local v3, "newMemberCount":I
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->d(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V

    .line 599
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V

    .line 600
    iget-object v8, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v9

    if-le v3, v11, :cond_6

    if-gt v2, v11, :cond_6

    :goto_2
    invoke-static {v8, v9, v6}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;Z)V

    .line 601
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iget-object v7, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Ljava/util/List;)V

    .line 609
    .end local v0    # "chooseMode":I
    .end local v2    # "memberCount":I
    .end local v3    # "newMemberCount":I
    .end local v4    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_5
    :goto_3
    return-void

    .restart local v0    # "chooseMode":I
    .restart local v2    # "memberCount":I
    .restart local v3    # "newMemberCount":I
    .restart local v4    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_6
    move v6, v7

    .line 600
    goto :goto_2

    .line 604
    .end local v0    # "chooseMode":I
    .end local v2    # "memberCount":I
    .end local v3    # "newMemberCount":I
    .end local v4    # "userIdentityObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_7
    const-string/jumbo v6, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 605
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 606
    iget-object v6, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$16;->a:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;->finish()V

    goto :goto_3
.end method
