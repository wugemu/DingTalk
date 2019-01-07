.class public Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "MemberSessionActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->b:Ljava/util/List;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->c:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "retail_im_click"

    invoke-interface {v4, v8, v5, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    sget v4, Lctk$g;->layout_category_session_list:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->setContentView(I)V

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "intent_key_biz_title"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "intent_key_biz_tag"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 61
    .local v2, "targetTags":[J
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 62
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v0, v2, v4

    .line 63
    .local v0, "tag":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "tag":J
    .end local v2    # "targetTags":[J
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v4, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1028
    :cond_1
    new-instance v4, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;-><init>()V

    .line 70
    iput-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 71
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    sget v5, Lctk$g;->fragment_member_session_empty:I

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(ILdbz;)V

    .line 72
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1116
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    const-wide/32 v6, 0x188b95b1

    .line 2110
    iput-wide v6, v4, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->h:J

    .line 1117
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$2;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->getSupportFragmentManager()Lcn;

    move-result-object v4

    invoke-virtual {v4}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    sget v5, Lctk$f;->root_view:I

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 4130
    invoke-static {}, Lcom/alibaba/wukong/im/IMEngine;->getSwitchProxy()Lcom/alibaba/wukong/im/SwitchProviderProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/im/SwitchProviderProxy;->loadConversationsUseV3()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4133
    invoke-static {}, Ldzb;->a()Ljava/lang/String;

    move-result-object v6

    .line 4134
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4137
    new-instance v4, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)V

    .line 4155
    const-class v5, Lcom/alibaba/wukong/Callback;

    invoke-static {v4, v5, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/Callback;

    .line 4156
    const-class v5, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v5}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v5, v4, v6}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 79
    :cond_2
    return-void

    .line 3082
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    .line 4086
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->e:Z

    .line 3083
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->a:Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 180
    const/4 v2, 0x3

    const-string/jumbo v3, ""

    invoke-interface {p1, v5, v2, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 181
    .local v1, "mySetting":Landroid/view/MenuItem;
    sget v2, Lctk$e;->ic_actbar_member_index:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 184
    sget v2, Lctk$i;->title_activity_settings:I

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 185
    .local v0, "menuSetting":Landroid/view/MenuItem;
    sget v2, Lctk$e;->actbar_icon_emotion_settings:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 186
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 188
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 206
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4210
    :sswitch_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    .line 4227
    invoke-static {}, Ldzb;->a()Ljava/lang/String;

    move-result-object v1

    .line 4210
    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5214
    :sswitch_1
    const-string/jumbo v0, "https://ulifem.taobao.com/memberManage/index"

    .line 5215
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    sget v2, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v1, v2, :cond_1

    .line 5216
    const-string/jumbo v0, "https://pre-ulifem.taobao.com/memberManage/index"

    .line 5221
    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5222
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5223
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, p0, v1, v2}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 5217
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v1

    if-nez v1, :cond_0

    .line 5218
    const-string/jumbo v0, "http://ulifem.daily.taobao.net/memberManage/index"

    goto :goto_1

    .line 203
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/MemberSessionActivity;->finish()V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method
