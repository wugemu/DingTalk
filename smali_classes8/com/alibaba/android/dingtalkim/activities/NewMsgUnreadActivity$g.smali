.class final Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;
.super Ljava/lang/Object;
.source "NewMsgUnreadActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldrs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/List;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 819
    .line 2822
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2825
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->s(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    const-string/jumbo v1, "group_active_tip_shown"

    invoke-static {v0, v1, v8}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2827
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2828
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2829
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;

    .line 2830
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 2831
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2832
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$b;->a:Ldqw;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2835
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2836
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v1

    sget v3, Lctk$f;->new_msg_active_tip:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->g(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 2837
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v1

    sget v3, Lctk$f;->new_msg_active_tip_shadow:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->h(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/view/View;)Landroid/view/View;

    .line 2838
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->t(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2839
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->u(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2841
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 2842
    iget-object v3, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, v0, Ldqw;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2844
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v10, :cond_7

    .line 2845
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    iget-object v0, v0, Ldqw;->b:Ljava/lang/String;

    move v1, v2

    .line 2846
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2847
    new-array v3, v10, [Ljava/lang/String;

    aput-object v0, v3, v8

    const-string/jumbo v0, ","

    aput-object v0, v3, v2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    iget-object v0, v0, Ldqw;->b:Ljava/lang/String;

    aput-object v0, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2846
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_2

    .line 2849
    :cond_3
    new-array v1, v9, [Ljava/lang/String;

    aput-object v0, v1, v8

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v3, Lctk$i;->new_msg_unread_active_tip:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2850
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v2, Lctk$f;->new_msg_active_tip_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2851
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->new_msg_active_tip_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$i;->new_msg_unread_active_tip_action:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2852
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->new_msg_active_tip_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;

    invoke-direct {v1, p0, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2879
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->new_msg_active_tip_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2910
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-direct {v1, v2, p1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$d;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->a(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;Landroid/widget/BaseAdapter;)Landroid/widget/BaseAdapter;

    .line 2911
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->v(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->l(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2912
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 2913
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 2914
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 2915
    sget v1, Lctk$e;->msg_unconfirm_none_new:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 2916
    sget v1, Lctk$i;->msg_confirmer_all_confirmed:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 2918
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->q(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 2920
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->m(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)V

    .line 819
    :cond_6
    return-void

    .line 2863
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->new_msg_active_tip_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v3, Lctk$i;->new_msg_unread_active_tip2:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v8

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2864
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->new_msg_active_tip_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    sget v2, Lctk$i;->new_msg_unread_active_tip2_action:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2865
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->c(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->new_msg_active_tip_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$2;

    invoke-direct {v1, p0, v4, v5}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 819
    check-cast p1, Ldrs;

    .line 1926
    if-eqz p1, :cond_5

    .line 1929
    iget-object v0, p1, Ldrs;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1930
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1931
    iget-object v0, p1, Ldrs;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsa;

    .line 1932
    if-eqz v0, :cond_0

    iget-object v4, v0, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_0

    .line 1933
    iget-object v4, v0, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v0, Ldsa;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1936
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1937
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1938
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1940
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_3
    move-object v0, v1

    .line 1943
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v2, v1

    .line 1944
    :goto_2
    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;Ljava/util/Set;)V

    .line 1978
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1979
    const-class v0, Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v5, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    move-object v5, v0

    .line 1981
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->s(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .line 1982
    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->f(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .line 1981
    invoke-static/range {v0 .. v5}, Ldjj;->a(JLcom/alibaba/wukong/im/Conversation;Ljava/util/List;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 819
    :cond_5
    return-void

    .line 1940
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    .line 1941
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 1943
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity$g;->a:Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;->j(Lcom/alibaba/android/dingtalkim/activities/NewMsgUnreadActivity;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 992
    sget v0, Lctk$i;->load_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 993
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 988
    return-void
.end method
