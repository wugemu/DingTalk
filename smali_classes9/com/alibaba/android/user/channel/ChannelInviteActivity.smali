.class public Lcom/alibaba/android/user/channel/ChannelInviteActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChannelInviteActivity.java"


# instance fields
.field private a:J

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelInviteActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelInviteActivity;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelInviteActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelInviteActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    .line 2116
    if-eqz p1, :cond_2

    .line 2117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2119
    if-eqz v0, :cond_0

    .line 2120
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2123
    :cond_1
    const-class v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/ChannelIService;

    .line 2124
    new-instance v2, Lcom/alibaba/android/user/channel/ChannelInviteActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/channel/ChannelInviteActivity$2;-><init>(Lcom/alibaba/android/user/channel/ChannelInviteActivity;)V

    .line 2135
    iget-wide v4, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->a:J

    invoke-interface {v0, v4, v5, v1, v2}, Lcom/alibaba/android/user/idl/services/ChannelIService;->sendChannelRequest(JLjava/util/List;Liyv;)V

    .line 46
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "scope":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lezg$h;->followed:I

    if-ne v2, v3, :cond_1

    .line 164
    const/4 v0, 0x5

    .line 168
    :cond_0
    :goto_0
    move v1, v0

    .line 169
    .local v1, "scopeValue":I
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/page/channelpeople.html"

    new-instance v4, Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/channel/ChannelInviteActivity$3;-><init>(Lcom/alibaba/android/user/channel/ChannelInviteActivity;I)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 178
    return-void

    .line 165
    .end local v1    # "scopeValue":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lezg$h;->invited:I

    if-ne v2, v3, :cond_0

    .line 166
    const/4 v0, 0x6

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lezg$j;->activity_channel_follow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->setContentView(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_manege_org_channel_attention_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->a:J

    .line 1087
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelInviteActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelInviteActivity$1;-><init>(Lcom/alibaba/android/user/channel/ChannelInviteActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->b:Landroid/content/BroadcastReceiver;

    .line 1104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1105
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 61
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v1, 0x1

    sget v2, Lezg$l;->home_menu_share:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 72
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 65
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 1110
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1111
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1141
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1143
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1144
    const-string/jumbo v1, "choose_people_action"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1146
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_manege_org_channel_invite:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string/jumbo v1, "org_request_from_source_type"

    const-string/jumbo v2, "source_channel_invite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string/jumbo v1, "key_need_change_dept"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1150
    const-string/jumbo v1, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1151
    const-string/jumbo v1, "display_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelInviteActivity;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1155
    const-string/jumbo v1, "fragment_key"

    const-string/jumbo v2, "ExternalContactFragmentser"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
