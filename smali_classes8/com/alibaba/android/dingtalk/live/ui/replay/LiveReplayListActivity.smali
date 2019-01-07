.class public Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "LiveReplayListActivity.java"

# interfaces
.implements Lbxy$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

.field private b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/wukong/im/Conversation;

.field private e:Lbxx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 47
    .line 8097
    sget v0, Lbtp$e;->tab_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 8098
    sget v1, Lbtp$e;->view_pager:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 8100
    sget v2, Lbtp$b;->selector_replay_tab:I

    invoke-static {p0, v2}, Ldp;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 8101
    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 8102
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcn;B)V

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 47
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    return-object v0
.end method


# virtual methods
.method public final a(ILcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 2146
    :pswitch_0
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 2149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2223
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v2, v4, :cond_1

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v4, "lv_replay_share_link_enabled"

    .line 2224
    invoke-virtual {v2, v4, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    move v2, v0

    .line 2150
    :goto_1
    if-eqz v2, :cond_2

    .line 2151
    new-instance v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    .line 3044
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2152
    new-instance v4, Lecn;

    invoke-direct {v4}, Lecn;-><init>()V

    .line 3151
    iput-object v4, v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2153
    sget v4, Lbtp$g;->dt_lv_replay_share_title:I

    .line 2154
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v2

    .line 2151
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2156
    :cond_2
    new-instance v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x1

    .line 4044
    iput-wide v4, v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2157
    new-instance v4, Lecn;

    invoke-direct {v4}, Lecn;-><init>()V

    .line 4151
    iput-object v4, v2, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2158
    sget v4, Lbtp$g;->dt_lv_live_statistics:I

    .line 2159
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v2

    .line 2156
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4321
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v4, "lv_ios_replay_rename_enabled"

    .line 4322
    invoke-virtual {v2, v4, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v2

    .line 4323
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_live_record_rename_enable"

    .line 4324
    invoke-virtual {v4, v5}, Lchx;->a(Ljava/lang/String;)Z

    move-result v4

    .line 4325
    if-eqz v2, :cond_3

    if-nez v4, :cond_4

    .line 4326
    :cond_3
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v4, :cond_7

    .line 2160
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 2161
    new-instance v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x2

    .line 5044
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2162
    new-instance v2, Lecn;

    invoke-direct {v2}, Lecn;-><init>()V

    .line 5151
    iput-object v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2163
    sget v2, Lbtp$g;->dt_common_rename:I

    .line 2164
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v0

    .line 2161
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2166
    :cond_5
    new-instance v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x3

    .line 6044
    iput-wide v4, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->a:J

    .line 2167
    new-instance v2, Lecp;

    invoke-direct {v2}, Lecp;-><init>()V

    .line 6151
    iput-object v2, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->g:Lecm;

    .line 2168
    sget v2, Lbtp$g;->dt_lv_replay_download:I

    .line 2169
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->b(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v0

    sget v2, Lbtp$g;->dt_lv_replay_mobile_download_tip:I

    .line 2170
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->c(I)Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;

    move-result-object v0

    .line 7138
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->h:Z

    .line 7139
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheetItemBuilder;->j:Z

    .line 2166
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2172
    new-instance v0, Lecl;

    invoke-direct {v0, p0, v3}, Lecl;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2173
    new-instance v1, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    .line 2174
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/actionsheet/DtActionSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lecl;Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V

    .line 2175
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2198
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    .line 2224
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 4326
    goto :goto_2

    .line 138
    :pswitch_1
    if-eqz p2, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e:Lbxx;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-wide v4, p2, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lbxx;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lbtp$f;->activity_live_replay_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->setContentView(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "cid"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c:Ljava/lang/String;

    .line 1072
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)V

    .line 1092
    const-class v1, Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 1093
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lbxx;

    invoke-direct {v0, p0}, Lbxx;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e:Lbxx;

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Lbyj;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    sget v1, Lbtp$g;->dt_common_group_create_live:I

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 115
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 117
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e:Lbxx;

    invoke-virtual {v0}, Lbxx;->i()V

    .line 108
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    const-string/jumbo v0, "live_records_start_live_click"

    invoke-static {v0}, Lcps;->a(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c:Ljava/lang/String;

    .line 2054
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lbyq;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
