.class public Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateOrgSuccessActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

.field private j:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field private k:Lcom/alibaba/android/user/model/OrgInviteObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->f:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "checkdStr"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, " "

    .end local p0    # "checkdStr":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 1
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .prologue
    .line 219
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->dismissLoadingDialog()V

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    .line 223
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 225
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string/jumbo v0, "408"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget v0, Lezg$l;->server_down:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 133
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->showLoadingDialog()V

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->j:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    .line 136
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_invite_team:I

    if-ne v0, v1, :cond_3

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "org_create_invite_staff"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 185
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 187
    const-string/jumbo v2, "http://i01.lw.aliimg.com/media/lALOADbMxcyWzJY_150_150.png"

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->k:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const-string/jumbo v3, "http://i01.lw.aliimg.com/media/lALOADbMxcyWzJY_150_150.png"

    const-string/jumbo v6, " "

    const/4 v7, 0x1

    const-string/jumbo v8, "invite_share_click"

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v2    # "url":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "msg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_artificial_service:I

    if-ne v0, v1, :cond_5

    .line 196
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 197
    sget v0, Lezg$l;->network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 200
    :cond_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v6

    const-string/jumbo v8, "https://h5.dingtalk.com/40plan/appoint-custom/index.html?lwfrom=20160321130337835"

    sget v0, Lezg$l;->setting_service_center_title:I

    .line 201
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v7, p0

    .line 200
    invoke-virtual/range {v6 .. v11}, Lgvm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 203
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->ll_start_org_now:I

    if-ne v0, v1, :cond_0

    .line 204
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v12, "extras":Landroid/os/Bundle;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v0

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->d:J

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v13

    .line 206
    .local v13, "orgInfo":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v13, :cond_6

    .line 207
    const-string/jumbo v0, "to_page"

    const-string/jumbo v1, "to_oa"

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "corpid"

    iget-object v1, v13, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v12}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->finish()V

    goto/16 :goto_0

    .line 210
    :cond_6
    const-string/jumbo v0, "to_page"

    const-string/jumbo v1, "to_contact"

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget v0, Lezg$j;->activity_create_org_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->setContentView(I)V

    .line 76
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->d:J

    .line 1088
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "org_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->e:Ljava/lang/String;

    .line 1089
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uid_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 1090
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_quick_create_team"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->h:Z

    .line 1092
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1093
    if-eqz v2, :cond_1

    .line 1094
    array-length v3, v2

    move v0, v1

    .line 1095
    :goto_0
    if-ge v0, v3, :cond_1

    .line 1097
    aget-wide v4, v2, v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->b()Lchy;

    move-result-object v6

    invoke-virtual {v6}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 1098
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->f:Ljava/util/List;

    aget-wide v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1105
    :cond_1
    sget v0, Lezg$h;->ll_start_org_now:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->b:Landroid/widget/LinearLayout;

    .line 1108
    sget v0, Lezg$h;->tv_invite_team:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->a:Landroid/widget/TextView;

    .line 1110
    sget v0, Lezg$h;->tv_artificial_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->c:Landroid/widget/LinearLayout;

    .line 1112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "artificial_service_switch"

    invoke-static {v0, v2, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1114
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->h:Z

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    .line 1115
    :cond_2
    sget v0, Lezg$h;->divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->create_org_group_success:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 81
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->j:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newFavoriteUnit(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinGroupShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->i:Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v1, p0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSinaWeiboShareUnit(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void

    .line 1118
    :cond_3
    sget v0, Lezg$h;->divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->j:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 2039
    iput-object v1, v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->b:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;

    .line 141
    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateOrgSuccessActivity;->j:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 142
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 143
    return-void
.end method
