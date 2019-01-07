.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 591
    const-string/jumbo v5, "ACTIVITY_IDENTIFY_AT"

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->p(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 592
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;I)I

    .line 593
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    sget v7, Lctk$i;->select_num_count_format:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    sget v9, Lctk$i;->sure:I

    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_0

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 595
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->r(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 621
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 594
    goto :goto_0

    .line 599
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 600
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    sget v5, Lctk$i;->choose_at_least_one_mem:I

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 601
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->s(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 602
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I

    move-result v5

    if-nez v5, :cond_3

    sget v5, Lctk$i;->choose_limit:I

    :goto_2
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->s(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v7, v5, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)I

    move-result v5

    goto :goto_2

    .line 604
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->q(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 605
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.workapp.choose.people.from.group.member"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "conversation_id"

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 609
    const-string/jumbo v5, "activity_identify"

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->o(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string/jumbo v5, "choose_user_identities"

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 611
    const-string/jumbo v5, "intent_key_at_seed"

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 613
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "intent_key_group_selection_do_logic"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 614
    .local v2, "serializable":Ljava/io/Serializable;
    instance-of v5, v2, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    if-eqz v5, :cond_5

    .line 615
    check-cast v2, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;

    .end local v2    # "serializable":Ljava/io/Serializable;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-interface {v2, v5, v4}, Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;->doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V

    .line 619
    :goto_3
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->finish()V

    goto/16 :goto_1

    .line 617
    .restart local v2    # "serializable":Ljava/io/Serializable;
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    invoke-virtual {v3, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_3
.end method
