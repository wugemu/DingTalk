.class public Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;
.super Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;
.source "RedPacketsDetailActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

.field private b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcaj$e;->activity_redpackets_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cluster"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pick_status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->sender:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->clusterId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;->type:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->f:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 78
    if-eqz p1, :cond_2

    .line 79
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_0

    .line 80
    const-string/jumbo v0, "senderId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string/jumbo v0, "clusterId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    .line 85
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    if-gtz v0, :cond_2

    .line 86
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    .line 90
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    :cond_3
    sget v0, Lcaj$f;->wrong_arguments:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 92
    const-string/jumbo v1, "red_packets"

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "RedPacketsDetailActivity param invalid, "

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_5

    const-string/jumbo v0, "sendId <= 0, "

    :goto_1
    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "clusterId is empty"

    :goto_2
    aput-object v0, v3, v5

    .line 92
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->finish()V

    .line 99
    :goto_3
    return-void

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sender_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cluster_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    goto/16 :goto_0

    .line 92
    :cond_5
    const-string/jumbo v0, ""

    goto :goto_1

    .line 94
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_2

    .line 97
    :cond_7
    iget v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    .line 1148
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_8

    .line 1149
    if-ne v0, v5, :cond_9

    .line 1150
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lcaj$f;->dt_redenvelop_enterprise_title:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1159
    :cond_8
    :goto_4
    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;-><init>()V

    .line 1160
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1161
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1162
    const-string/jumbo v0, "cluster"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->a:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1163
    const-string/jumbo v0, "pick_status"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->b:Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1164
    const-string/jumbo v0, "sender_id"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1165
    const-string/jumbo v0, "cluster_id"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v0, "conversation"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1167
    const-string/jumbo v0, "package_name"

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/fragments/GroupRedPacketsDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1169
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v2, Lcaj$d;->ll_fragment_container:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    goto/16 :goto_3

    .line 1151
    :cond_9
    if-nez v0, :cond_a

    .line 1152
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lcaj$f;->redpackets_title_random:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_4

    .line 1153
    :cond_a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 1154
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lcaj$f;->dt_redenvelop_enterprise:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_4

    .line 1156
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lcaj$f;->redpackets_title_normal:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 111
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2125
    :try_start_0
    const-string/jumbo v1, "com.android.internal.view.menu.MenuBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2126
    const-string/jumbo v2, "setOptionalIconsVisible"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2127
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2130
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    sget v1, Lcaj$f;->redpackets_menu_help:I

    invoke-interface {p1, v6, v7, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 114
    .local v0, "helpIcon":Landroid/view/MenuItem;
    sget v1, Lcaj$c;->redpackets_menu_help:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 115
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 117
    .end local v0    # "helpIcon":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 2132
    :catch_0
    move-exception v1

    .line 2133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_redpackets"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 144
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v0, "senderId"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->d:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    const-string/jumbo v0, "clusterId"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/RedPacketsDetailActivity;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-void
.end method
