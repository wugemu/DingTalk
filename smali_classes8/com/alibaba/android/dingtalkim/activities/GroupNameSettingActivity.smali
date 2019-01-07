.class public Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "GroupNameSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Landroid/widget/EditText;

.field private final f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->f:I

    .line 157
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v7, Lctk$g;->im_group_name_setting_activity:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "avatar"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "use_enterprise_icon"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->b:Z

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "enterprise_name"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->c:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "choose_enterprise_oid"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->d:J

    .line 66
    sget v7, Lctk$f;->avatar_preview:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 67
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    const/16 v7, 0x12c

    invoke-virtual {v0, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 68
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget v7, Lctk$f;->enterprise_name:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    .local v1, "enterpriseText":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 71
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 72
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->d:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 75
    invoke-static {}, Lcms;->c()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 76
    sget v3, Lctk$e;->enterprise_cornor_icon_for_session_fragment:I

    .line 83
    .local v3, "iconResId":I
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 84
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v8, v2, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 91
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconResId":I
    :cond_0
    :goto_1
    sget v7, Lctk$f;->bottom_line:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 92
    .local v6, "v":Landroid/view/View;
    const-string/jumbo v7, "pref_keyboard_height"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    .line 93
    .local v4, "keyboardHeight":I
    if-nez v4, :cond_8

    .line 94
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;

    invoke-direct {v8, p0, v6}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 115
    :goto_2
    sget v7, Lctk$f;->group_name_editor:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->e:Landroid/widget/EditText;

    .line 116
    return-void

    .line 78
    .end local v4    # "keyboardHeight":I
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    sget v3, Lctk$e;->enterprise_cornor_icon_for_session_fragment_en:I

    .restart local v3    # "iconResId":I
    goto :goto_0

    .line 81
    .end local v3    # "iconResId":I
    :cond_2
    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->d:J

    .line 2149
    invoke-static {}, Ldho;->a()Ldho;

    invoke-static {v8, v9}, Ldho;->a(J)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    .line 2150
    :goto_3
    invoke-static {}, Lcms;->c()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2151
    if-eqz v7, :cond_4

    sget v7, Lctk$e;->enterprise_cornor_icon_for_session_fragment_encrypt:I

    :goto_4
    move v3, v7

    .line 81
    .restart local v3    # "iconResId":I
    :goto_5
    goto :goto_0

    .line 2149
    .end local v3    # "iconResId":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 2151
    :cond_4
    sget v7, Lctk$e;->enterprise_cornor_icon_for_session_fragment:I

    goto :goto_4

    .line 2153
    :cond_5
    if-eqz v7, :cond_6

    sget v7, Lctk$e;->enterprise_cornor_icon_for_session_fragment_en_encrypt:I

    :goto_6
    move v3, v7

    goto :goto_5

    :cond_6
    sget v7, Lctk$e;->enterprise_cornor_icon_for_session_fragment_en:I

    goto :goto_6

    .line 88
    :cond_7
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 111
    .restart local v4    # "keyboardHeight":I
    .restart local v6    # "v":Landroid/view/View;
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 113
    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 122
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 123
    .local v0, "nextItem":Landroid/view/MenuItem;
    sget v1, Lctk$e;->acbar_icon_next:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 124
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 125
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3139
    :pswitch_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3140
    const-string/jumbo v0, "title"

    sget v2, Lctk$i;->select_members_of_group:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3142
    const-string/jumbo v0, "count_limit_tips"

    sget v2, Lctk$i;->create_conversation_choose_limit:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3143
    const-string/jumbo v0, "show_crm_customer"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3144
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3145
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 3146
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3148
    :cond_0
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;-><init>()V

    .line 3149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->inputTitle:Ljava/lang/String;

    .line 3150
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->orgId:Ljava/lang/String;

    .line 3151
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->avatar:Ljava/lang/String;

    .line 3152
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity;->b:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    :goto_1
    iput-object v0, v2, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic;->useEnterpriseIcon:Ljava/lang/String;

    .line 3153
    const-string/jumbo v0, "choose_people_from_contact_logic"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3154
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 3152
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
