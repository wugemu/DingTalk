.class public Lcom/alibaba/android/user/channel/ChannelManangerActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChannelManangerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;,
        Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/widget/ToggleButton;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->d:Ljava/util/ArrayList;

    .line 365
    return-void
.end method

.method private a(I)V
    .locals 3
    .param p1, "scope"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 329
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/channelpeople.html"

    new-instance v2, Lcom/alibaba/android/user/channel/ChannelManangerActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$7;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 338
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    .line 59
    .line 3297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3298
    const-string/jumbo v1, "url"

    const-string/jumbo v2, "https://h5.dingtalk.com/channel/setup.html?orgId="

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/channel/ChannelManangerActivity;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    .line 4232
    if-eqz p1, :cond_2

    .line 4233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4234
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

    .line 4235
    if-eqz v0, :cond_0

    .line 4236
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4240
    :cond_1
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$6;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    .line 4256
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-interface {v2, v0, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4257
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    invoke-interface {v2, v4, v5, v1, v0}, Lezs;->a(JLjava/util/List;Lcma;)V

    .line 59
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    .line 59
    .line 4210
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$5;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    .line 4226
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 4227
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x19

    invoke-interface/range {v1 .. v6}, Lezs;->a(JZILcma;)V

    .line 59
    return-void

    .line 4227
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    const/4 v4, 0x0

    .line 59
    .line 4263
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->dt_manege_org_channel_invite_succeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 4264
    const/16 v0, 0x11

    invoke-virtual {v1, v0, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 4265
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4266
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4267
    sget v3, Lezg$g;->icon_create_success_duihao:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4268
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 4269
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/channel/ChannelManangerActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->invite:I

    if-ne v3, v4, :cond_2

    .line 275
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "corpId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 277
    const-string/jumbo v1, ""

    .line 279
    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "https://h5.dingtalk.com/channel/index.html?showmenu=false&corpId="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "#invite"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "toUrl":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 294
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "corpId":Ljava/lang/String;
    .end local v2    # "toUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 287
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->followed:I

    if-ne v3, v4, :cond_3

    .line 288
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a(I)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lezg$h;->invited:I

    if-ne v3, v4, :cond_1

    .line 291
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x21

    .line 79
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget v0, Lezg$j;->activity_channel_mananger:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->setContentView(I)V

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_manege_org_channel_setting_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1113
    sget v0, Lezg$h;->channel_introduction:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1114
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_manege_org_channel_introduction:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_manege_org_channel_understand_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1116
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1117
    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1118
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1120
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1122
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->uidic_global_color_6_2:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sub-int v5, v1, v2

    invoke-virtual {v3, v4, v5, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1123
    new-instance v4, Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;

    new-instance v5, Lcom/alibaba/android/user/channel/ChannelManangerActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$1;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    invoke-direct {v4, p0, v5}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$a;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;Lcom/alibaba/android/user/channel/ChannelManangerActivity$b;)V

    sub-int v2, v1, v2

    invoke-virtual {v3, v4, v2, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1129
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1130
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1132
    sget v0, Lezg$h;->followed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_manege_org_channel_manager_view:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    sget v0, Lezg$h;->invited:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lezg$h;->uidic_forms_item_tip_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_manege_org_channel_manager_view:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    sget v0, Lezg$h;->allow_staff_add_channel_setting_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c:Landroid/widget/ToggleButton;

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->c:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/channel/ChannelManangerActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$2;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    .line 1153
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$3;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->b:Landroid/content/BroadcastReceiver;

    .line 1171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1172
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1173
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1185
    new-instance v0, Lcom/alibaba/android/user/channel/ChannelManangerActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/channel/ChannelManangerActivity$4;-><init>(Lcom/alibaba/android/user/channel/ChannelManangerActivity;)V

    .line 1202
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1203
    invoke-static {}, Lfai;->a()Lezs;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    const/16 v4, 0x19

    invoke-interface {v1, v2, v3, v4, v0}, Lezs;->a(JILcma;)V

    .line 86
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

    .line 96
    const/4 v1, 0x1

    sget v2, Lezg$l;->dt_manege_org_channel_setting_preview:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 98
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
    .line 90
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 2177
    iget-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2178
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->b:Landroid/content/BroadcastReceiver;

    .line 92
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 3146
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3147
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "https://h5.dingtalk.com/channel/preview.html?orgId="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/channel/ChannelManangerActivity;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3148
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
