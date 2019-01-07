.class public final Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;
.super Landroid/widget/BaseAdapter;
.source "TeleBusinessConfSelectedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;)Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->a:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$a;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->m(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 453
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 459
    if-nez p2, :cond_1

    .line 460
    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-direct {v2, v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)V

    .line 461
    .local v2, "holder":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Leuj$j;->item_member:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 462
    sget v4, Leuj$i;->tv_letter:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->a:Landroid/widget/TextView;

    .line 463
    sget v4, Leuj$i;->letter_divider:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->c:Landroid/view/View;

    .line 464
    sget v4, Leuj$i;->tv_avatar:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 465
    sget v4, Leuj$i;->tv_contact_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->e:Landroid/widget/TextView;

    .line 466
    sget v4, Leuj$i;->divider_line:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->g:Landroid/view/View;

    .line 467
    sget v4, Leuj$i;->click_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->h:Landroid/view/View;

    .line 468
    sget v4, Leuj$i;->checkbox:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->f:Landroid/widget/CheckBox;

    .line 469
    sget v4, Leuj$i;->tv_conversation_owner:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 470
    sget v4, Leuj$i;->tv_contact_unregister:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->b:Landroid/widget/TextView;

    .line 471
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 475
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 476
    .local v1, "currentUserModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->g:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->a:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v9}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    if-eqz v4, :cond_2

    .line 480
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultColor(I)V

    .line 484
    :goto_1
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v5, v6, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 485
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    if-lez p1, :cond_0

    .line 488
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 489
    .local v3, "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v4, v9}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v9}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v5

    if-ne v4, v5, :cond_3

    .line 490
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->c:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 498
    .end local v3    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;->b:Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;->u(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_4

    .line 499
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->f:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 504
    :goto_3
    iget-object v0, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->f:Landroid/widget/CheckBox;

    .line 505
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$1;

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;Landroid/widget/CheckBox;ILcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->h:Landroid/view/View;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$c;Landroid/widget/CheckBox;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    if-eqz v4, :cond_5

    .line 548
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    :goto_4
    return-object p2

    .line 473
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "currentUserModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "holder":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;

    .restart local v2    # "holder":Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;
    goto/16 :goto_0

    .line 482
    .restart local v1    # "currentUserModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultColor(I)V

    goto :goto_1

    .line 493
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v3    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 494
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->c:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 501
    .end local v3    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 550
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_5
    iget-object v4, v2, Lcom/alibaba/android/teleconf/activities/TeleBusinessConfSelectedActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
