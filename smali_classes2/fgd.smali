.class public final Lfgd;
.super Lfgg;
.source "AddContactFriendAdapter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lfgg;-><init>(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lfgd;Landroid/widget/Button;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 5
    .param p0, "x0"    # Lfgd;
    .param p1, "x1"    # Landroid/widget/Button;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 35
    .line 2140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2141
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 2142
    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2143
    iget-object v1, p2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 2144
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 2145
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2146
    new-instance v1, Lfgd$2;

    invoke-direct {v1, p0}, Lfgd$2;-><init>(Lfgd;)V

    .line 2175
    iget-object v0, p0, Lfgd;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2176
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v3, Lcma;

    iget-object v4, p0, Lfgd;->b:Landroid/app/Activity;

    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2178
    :goto_0
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lfac;->a(Ljava/util/List;ZLcma;)V

    .line 35
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lezg$j;->item_add_contact_friend:I

    return v0
.end method

.method public final a(Landroid/view/View;Lfgg$a;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewHolder"    # Lfgg$a;

    .prologue
    .line 63
    sget v0, Lezg$h;->btn_add_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lfgg$a;->i:Landroid/widget/Button;

    .line 64
    sget v0, Lezg$h;->tv_add_friends:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lfgg$a;->h:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 7
    .param p1, "contactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 1225
    iget-object v2, p0, Lfgg;->b:Landroid/app/Activity;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_0

    .line 1226
    iget-object v2, p0, Lfgg;->b:Landroid/app/Activity;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1227
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1186
    :cond_0
    new-instance v2, Lfjl;

    iget-object v5, p0, Lfgg;->b:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lfjl;-><init>(Landroid/app/Activity;)V

    .line 1187
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v5

    new-instance v6, Lfgg$2;

    invoke-direct {v6, p0, v2, v3, v4}, Lfgg$2;-><init>(Lfgg;Lfjl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v3, v6}, Lfac;->a(Ljava/lang/String;Lcma;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.add.search.history"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "history"

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v2, p0, Lfgd;->b:Landroid/app/Activity;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    .line 53
    .local v0, "broadcastManager":Ldq;
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 54
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Lfgg$a;Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "contactModel"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .param p2, "viewHolder"    # Lfgg$a;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 70
    if-eqz p1, :cond_2

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "avatarMediaId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 73
    .local v1, "dingNick":Ljava/lang/String;
    iget-boolean v4, p0, Lfgd;->d:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lfgd;->c:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lfgd;->c:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 74
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lfgd;->c:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfrz;

    .line 76
    .local v3, "userProfileObject":Lfrz;
    if-eqz v3, :cond_1

    .line 77
    iget-object v0, v3, Lfrz;->b:Ljava/lang/String;

    .line 78
    iget-boolean v4, v3, Lfrz;->h:Z

    if-eqz v4, :cond_0

    .line 79
    iget-object v1, v3, Lfrz;->d:Ljava/lang/String;

    .line 81
    :cond_0
    iget-boolean v4, v3, Lfrz;->g:Z

    if-eqz v4, :cond_1

    .line 82
    const-string/jumbo v4, "friend"

    iput-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 87
    .end local v3    # "userProfileObject":Lfrz;
    :cond_1
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 88
    .local v2, "realName":Ljava/lang/String;
    iget-object v4, p2, Lfgg$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    check-cast p3, Landroid/widget/AbsListView;

    .line 2043
    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v2, v0, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 89
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 90
    iget-object v4, p2, Lfgg$a;->c:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 96
    iget-object v4, p2, Lfgg$a;->d:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    iget-object v4, p2, Lfgg$a;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_2
    const-string/jumbo v4, "friend"

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    iget-object v4, p2, Lfgg$a;->i:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v4, p2, Lfgg$a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v4, p2, Lfgg$a;->h:Landroid/widget/TextView;

    sget v5, Lezg$l;->contact_is_friend:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 126
    :goto_3
    iget-object v4, p2, Lfgg$a;->i:Landroid/widget/Button;

    new-instance v5, Lfgd$1;

    invoke-direct {v5, p0, p1, p2}, Lfgd$1;-><init>(Lfgd;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;Lfgg$a;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .end local v0    # "avatarMediaId":Ljava/lang/String;
    .end local v1    # "dingNick":Ljava/lang/String;
    .end local v2    # "realName":Ljava/lang/String;
    :cond_2
    return-void

    .line 92
    .restart local v0    # "avatarMediaId":Ljava/lang/String;
    .restart local v1    # "dingNick":Ljava/lang/String;
    .restart local v2    # "realName":Ljava/lang/String;
    :cond_3
    iget-object v4, p2, Lfgg$a;->c:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_4
    iget-object v4, p2, Lfgg$a;->d:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 104
    :cond_5
    iget-object v4, p2, Lfgg$a;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v4, p2, Lfgg$a;->g:Landroid/widget/TextView;

    iget-object v5, p0, Lfgd;->b:Landroid/app/Activity;

    sget v6, Lezg$l;->contact_ding_nick:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 112
    :cond_6
    const-string/jumbo v4, "send"

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 113
    iget-object v4, p2, Lfgg$a;->i:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v4, p2, Lfgg$a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object v4, p2, Lfgg$a;->h:Landroid/widget/TextView;

    sget v5, Lezg$l;->contact_add_friend_send:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 117
    :cond_7
    iget-object v4, p2, Lfgg$a;->i:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v4, p2, Lfgg$a;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-static {}, Lfjo;->a()Lfjo;

    move-result-object v4

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    invoke-virtual {v4, v6, v7}, Lfjo;->a(J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 120
    iget-object v4, p2, Lfgg$a;->i:Landroid/widget/Button;

    iget-object v5, p0, Lfgd;->b:Landroid/app/Activity;

    sget v6, Lezg$l;->dt_contact_friendRequest_send_again:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 122
    :cond_8
    iget-object v4, p2, Lfgg$a;->i:Landroid/widget/Button;

    iget-object v5, p0, Lfgd;->b:Landroid/app/Activity;

    sget v6, Lezg$l;->action_add:I

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
