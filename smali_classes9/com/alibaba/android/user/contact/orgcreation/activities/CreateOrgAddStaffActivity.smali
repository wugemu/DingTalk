.class public Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateOrgAddStaffActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/alibaba/android/user/model/PositionData;

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 270
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;)V
    .locals 10
    .param p1, "callback"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 107
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    const-string/jumbo v4, "org_create_normal_error_click"

    const-string/jumbo v5, "type=%d"

    new-array v6, v9, [Ljava/lang/Object;

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1315
    const/4 v7, 0x0

    invoke-static {v7, v4, v5, v6}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_name:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 111
    invoke-interface {p1, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;->a(Z)V

    .line 145
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v4, :cond_2

    .line 117
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iput-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v5, v5, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    .line 120
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v5, v5, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v5, v5, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    iput-boolean v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    .line 124
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v4, "intent_key_org_member_object"

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 126
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-interface {p1, v9}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;->a(Z)V

    goto :goto_0

    .line 132
    .end local v2    # "result":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "mobile":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_mobile:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 135
    invoke-interface {p1, v8}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;->a(Z)V

    goto :goto_0

    .line 139
    :cond_3
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 140
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 141
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 142
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 143
    iput v9, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 2148
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->showLoadingDialog()V

    .line 2149
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;

    invoke-direct {v5, p0, v3, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;)V

    const-class v6, Lcma;

    invoke-interface {v4, v5, v6, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 2198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2199
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v6

    invoke-interface {v6, v5, v8, v4}, Lfac;->a(Ljava/util/List;ZLcma;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Lcom/alibaba/android/user/model/PositionData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 230
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 234
    const-string/jumbo v0, "intent_key_selected_position"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/PositionData;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    .line 235
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x3e8

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lezg$h;->btn_next:I

    if-ne v2, v3, :cond_1

    .line 246
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)V

    invoke-direct {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;)V

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lezg$h;->item_position:I

    if-ne v2, v3, :cond_2

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/contact/orgcreation/activities/SelectPositionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_selected_position"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v2, "title"

    sget v3, Lezg$l;->dt_contact_job_position:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0, v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 262
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lezg$h;->ll_delete_staff:I

    if-ne v2, v3, :cond_0

    .line 263
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 264
    .local v1, "result":Landroid/content/Intent;
    const-string/jumbo v2, "intent_key_org_member_object"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->setResult(ILandroid/content/Intent;)V

    .line 266
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget v0, Lezg$j;->layout_create_org_add_staff:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->setContentView(I)V

    .line 1069
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->g:Ljava/lang/String;

    .line 1070
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_job_position_code"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/PositionData;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    .line 1071
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_org_member_object"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1077
    sget v0, Lezg$h;->ll_delete_staff:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1078
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    sget v0, Lezg$h;->et_staff_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c:Landroid/widget/EditText;

    .line 1082
    sget v0, Lezg$h;->et_staff_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->d:Landroid/widget/EditText;

    .line 1083
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1087
    :cond_0
    sget v0, Lezg$h;->rl_staff_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    sget v0, Lezg$h;->divider_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    sget v0, Lezg$h;->item_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    .line 1092
    const-string/jumbo v0, "identity_create_org_manual_add_admin"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v0, :cond_3

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v0, :cond_2

    .line 1096
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setContent(Ljava/lang/String;)V

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a:Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cell/TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    :cond_3
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->b:Landroid/widget/Button;

    .line 1102
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->b:Landroid/widget/Button;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v3, :cond_8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void

    :cond_4
    move v0, v2

    .line 1078
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1087
    goto :goto_1

    :cond_6
    move v0, v1

    .line 1088
    goto :goto_2

    .line 1096
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->e:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move v2, v1

    .line 1102
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 205
    const/4 v1, 0x1

    sget v2, Lezg$l;->save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 206
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 207
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)V

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;)V

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
