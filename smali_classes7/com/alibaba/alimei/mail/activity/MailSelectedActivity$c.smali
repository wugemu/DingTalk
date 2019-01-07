.class public final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;
.super Landroid/widget/BaseAdapter;
.source "MailSelectedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;)Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$a;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->e(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 324
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v11, 0x23

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 330
    if-nez p2, :cond_1

    .line 331
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-direct {v2, v4}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    .line 332
    .local v2, "holder":Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Laxo$g;->item_member:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 333
    sget v4, Laxo$f;->tv_letter:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->a:Landroid/widget/TextView;

    .line 334
    sget v4, Laxo$f;->letter_divider:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->c:Landroid/view/View;

    .line 335
    sget v4, Laxo$f;->tv_avatar:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 336
    sget v4, Laxo$f;->tv_contact_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->e:Landroid/widget/TextView;

    .line 337
    sget v4, Laxo$f;->divider_line:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->g:Landroid/view/View;

    .line 338
    sget v4, Laxo$f;->click_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->h:Landroid/view/View;

    .line 339
    sget v4, Laxo$f;->checkbox:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    .line 340
    sget v4, Laxo$f;->tv_conversation_owner:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 341
    sget v4, Laxo$f;->tv_contact_unregister:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->b:Landroid/widget/TextView;

    .line 342
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 346
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 347
    .local v1, "currentUserModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->g:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->a:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v11}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultColor(I)V

    .line 355
    :goto_1
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4, v5, v6, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 356
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->e:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->m(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 359
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 360
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 365
    :goto_2
    if-lez p1, :cond_0

    .line 366
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 367
    .local v3, "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v4, v11}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v4

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    invoke-static {v5, v11}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v5

    if-ne v4, v5, :cond_4

    .line 368
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->c:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .end local v3    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->n(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_5

    .line 377
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 382
    :goto_4
    iget-object v0, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    .line 383
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$1;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->h:Landroid/view/View;

    new-instance v5, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;

    invoke-direct {v5, p0, v1, v0, p1}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-boolean v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    if-eqz v4, :cond_6

    .line 432
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    :goto_5
    return-object p2

    .line 344
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "currentUserModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v2    # "holder":Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;

    .restart local v2    # "holder":Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;
    goto/16 :goto_0

    .line 353
    .restart local v1    # "currentUserModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultColor(I)V

    goto/16 :goto_1

    .line 362
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 371
    .restart local v3    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_4
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->c:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 379
    .end local v3    # "previousModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->f:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 434
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_6
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v4, v2, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$d;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$c;->b:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    sget v6, Laxo$i;->mail_contact_status_not_activated:I

    invoke-virtual {v5, v6}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
