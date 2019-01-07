.class public Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfSettingActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

.field private B:Lewi$a;

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/ToggleButton;

.field private d:Landroid/widget/ToggleButton;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Leum;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field private u:Ljava/lang/String;

.field private v:Ldq;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->t:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 110
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->B:Lewi$a;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->t:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->y:Z

    return p1
.end method

.method private b()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 542
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "com.workapp.conf.setting"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v9

    .line 3155
    iget-boolean v9, v9, Lewi;->a:Z

    .line 543
    if-eqz v9, :cond_2

    .line 544
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v5, "mProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 546
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v7, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 548
    .local v8, "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    if-eqz v8, :cond_0

    iget-object v10, v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v10, :cond_0

    .line 551
    iget-object v3, v8, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 555
    .local v3, "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    iget-wide v10, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 561
    .end local v3    # "identityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v8    # "userObject":Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;
    :cond_1
    invoke-static {}, Lewi;->a()Lewi;

    invoke-static {v7}, Lewi;->a(Ljava/util/List;)V

    .line 563
    const-string/jumbo v9, "tele_conf"

    sget-object v10, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Contact list "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v7    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_1
    const-string/jumbo v9, "choose_user_identities"

    check-cast v5, Ljava/util/ArrayList;

    .end local v5    # "mProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 569
    const-string/jumbo v9, "activity_identify"

    iget-object v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->u:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :cond_2
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v9

    invoke-virtual {v9, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 574
    const/4 v6, 0x0

    .line 575
    .local v6, "statusChanged":Z
    const/4 v2, 0x0

    .line 576
    .local v2, "countChanged":Z
    iget-boolean v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->y:Z

    iget-boolean v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->x:Z

    if-eq v9, v10, :cond_3

    .line 577
    const/4 v6, 0x1

    .line 579
    :cond_3
    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget v10, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->z:I

    if-eq v9, v10, :cond_4

    .line 580
    const/4 v2, 0x1

    .line 583
    :cond_4
    if-nez v6, :cond_5

    if-eqz v2, :cond_6

    .line 584
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 585
    .local v0, "args":Ljava/util/Map;
    iget-boolean v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->y:Z

    if-eqz v9, :cond_9

    .line 586
    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 587
    .local v1, "count":I
    :goto_2
    const-string/jumbo v9, "status"

    const-string/jumbo v10, "on"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string/jumbo v9, "number"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .end local v1    # "count":I
    :goto_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v9

    const-string/jumbo v10, "tele_setting_contact_click"

    invoke-interface {v9, v10, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 595
    .end local v0    # "args":Ljava/util/Map;
    :cond_6
    return-void

    .line 566
    .end local v2    # "countChanged":Z
    .end local v6    # "statusChanged":Z
    .restart local v5    # "mProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_7
    invoke-static {}, Lewi;->a()Lewi;

    const/4 v9, 0x0

    invoke-static {v9}, Lewi;->a(Ljava/util/List;)V

    goto :goto_1

    .line 586
    .end local v5    # "mProfiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .restart local v0    # "args":Ljava/util/Map;
    .restart local v2    # "countChanged":Z
    .restart local v6    # "statusChanged":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 590
    :cond_9
    const-string/jumbo v9, "status"

    const-string/jumbo v10, "off"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 69
    .line 4192
    sget v0, Leuj$i;->free_call_logo_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->i:Landroid/widget/TextView;

    .line 4193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->i:Landroid/widget/TextView;

    sget v4, Leuj$l;->dt_conference_business_call:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4195
    sget v0, Leuj$i;->rl_sticky_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 4196
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->t:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-nez v0, :cond_3

    .line 4197
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4215
    :goto_0
    sget v0, Leuj$i;->rl_favority_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 4216
    sget v0, Leuj$i;->contact_favorites_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c:Landroid/widget/ToggleButton;

    .line 4217
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c:Landroid/widget/ToggleButton;

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$8;

    invoke-direct {v6, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4238
    sget v0, Leuj$i;->sticky_fav_unit_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4239
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4241
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 4242
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 4243
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Leuj$g;->uidic_cell_margin_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 4244
    invoke-virtual {v6, v4, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4247
    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4249
    sget v0, Leuj$i;->rl_lockscreen_notification:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->e:Landroid/view/View;

    .line 4250
    sget v0, Leuj$i;->lockscreen_notification_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->d:Landroid/widget/ToggleButton;

    .line 4251
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->d:Landroid/widget/ToggleButton;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$9;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4260
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->d:Landroid/widget/ToggleButton;

    invoke-static {}, Lewl;->a()Lewl;

    invoke-static {}, Lewl;->c()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4261
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->e:Landroid/view/View;

    invoke-static {}, Lewx;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4263
    sget v0, Leuj$i;->conf_favo_members_grid:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 4264
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4280
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v0

    .line 5155
    iget-boolean v0, v0, Lewi;->a:Z

    .line 4280
    if-eqz v0, :cond_6

    .line 4281
    const-string/jumbo v0, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "Contact favorites open"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4283
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 4285
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->y:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->x:Z

    .line 4294
    :goto_2
    new-instance v0, Leum;

    invoke-direct {v0, p0}, Leum;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    .line 4295
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4297
    sget v0, Leuj$i;->rl_biz_call:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->f:Landroid/view/View;

    .line 4298
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4300
    sget v0, Leuj$i;->shortcut_card_unit_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->n:Landroid/view/View;

    .line 4301
    sget v0, Leuj$i;->calling_card_setting_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->h:Landroid/widget/ImageView;

    .line 4302
    sget v0, Leuj$i;->rl_calling_card:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->g:Landroid/view/View;

    .line 4303
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->A:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v0, :cond_9

    .line 4304
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->g:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4319
    invoke-static {p0}, Levl;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v0, v4, :cond_7

    invoke-static {}, Lcpi;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4322
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4323
    invoke-static {p0, v2}, Levl;->a(Landroid/content/Context;Z)V

    .line 4334
    :goto_3
    sget v0, Leuj$i;->rl_add_shortcut:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->k:Landroid/view/View;

    .line 4335
    invoke-static {}, Lewo;->a()Lewo;

    invoke-static {}, Lewo;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4336
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4337
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->k:Landroid/view/View;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4355
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->k:Landroid/view/View;

    .line 4356
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 4357
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4359
    sget v0, Leuj$i;->shortcut_card_unit_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4360
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4362
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->k:Landroid/view/View;

    .line 4363
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 4364
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Leuj$g;->uidic_cell_margin_size:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4365
    invoke-virtual {v4, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4368
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4374
    :goto_5
    sget v0, Leuj$i;->rl_permission_grant:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l:Landroid/view/View;

    .line 4375
    invoke-static {}, Lewx;->d()Z

    move-result v0

    .line 4376
    if-eqz v0, :cond_c

    .line 4377
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4381
    :goto_6
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4391
    sget v0, Leuj$i;->permission_grant_red_dot:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->m:Landroid/widget/ImageView;

    .line 4392
    invoke-static {p0}, Levl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4393
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4398
    :goto_7
    sget v0, Leuj$i;->rl_suggest_feedback:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->o:Landroid/view/View;

    .line 4399
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4410
    invoke-static {p0}, Lewp;->f(Landroid/content/Context;)Z

    move-result v0

    .line 4411
    if-eqz v0, :cond_e

    .line 4412
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    return-void

    .line 4199
    :cond_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4200
    sget v0, Leuj$i;->conversation_sticky_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b:Landroid/widget/ToggleButton;

    .line 4201
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b:Landroid/widget/ToggleButton;

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$7;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4212
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->t:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    move v0, v1

    .line 4213
    :goto_9
    iget-object v5, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 4212
    goto :goto_9

    :cond_5
    move v0, v3

    .line 4261
    goto/16 :goto_1

    .line 4287
    :cond_6
    const-string/jumbo v0, "tele_conf"

    sget-object v4, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "Contact favorites close"

    invoke-static {v0, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4288
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4289
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setVisibility(I)V

    .line 4291
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->y:Z

    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->x:Z

    goto/16 :goto_2

    .line 4325
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 4328
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 4331
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 4353
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 4371
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 4379
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 4395
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 4414
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    .line 6601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6602
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6603
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    .line 6604
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 6607
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 6611
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6614
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 6615
    :cond_2
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Go to add mem for favo."

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6617
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6619
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6620
    const-string/jumbo v0, "count_limit"

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6621
    const-string/jumbo v0, "title"

    sget v3, Leuj$l;->conf_txt_select_favo_member_title:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6622
    const-string/jumbo v0, "activity_identify"

    const-string/jumbo v3, "activity_identify_conf_setting"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6623
    const-string/jumbo v0, "choose_people_action"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6624
    const-string/jumbo v0, "count_limit_tips"

    sget v3, Leuj$l;->conf_txt_favorites_choose_limit:I

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6625
    const-string/jumbo v0, "filter_myself"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6626
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6627
    const-string/jumbo v3, "seleced_members"

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6628
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6630
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 6631
    :goto_1
    return-void

    .line 6632
    :cond_3
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Goto manage mem for favo"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6633
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/businessConference/selected_member.html"

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 653
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v0

    .line 4155
    iget-boolean v0, v0, Lewi;->a:Z

    .line 653
    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    invoke-virtual {v0, v2}, Leum;->b(Ljava/util/List;)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Leum;->b(Ljava/util/List;)V

    .line 662
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    invoke-virtual {v0, v2, v3}, Leum;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 667
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    invoke-virtual {v0, v2, v3}, Leum;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    .line 5419
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->w:Landroid/content/BroadcastReceiver;

    .line 5458
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5459
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5460
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->v:Ldq;

    .line 5461
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->v:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 69
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    .line 5465
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v0

    .line 6155
    iget-boolean v0, v0, Lewi;->a:Z

    .line 5465
    if-eqz v0, :cond_3

    .line 5469
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5470
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    if-nez v0, :cond_1

    .line 5471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    .line 5475
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5476
    if-eqz v0, :cond_0

    .line 5480
    new-instance v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;

    sget-object v3, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;->NormalNoNickType:Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;

    invoke-direct {v2, v3}, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject$ShowType;)V

    .line 5482
    iput-object v0, v2, Lcom/alibaba/android/teleconf/data/TeleBusinessConfUserObject;->a:Ljava/lang/Object;

    .line 5483
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5473
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 5486
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->z:I

    .line 5487
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c()V

    .line 5494
    :cond_3
    :goto_2
    return-void

    .line 5490
    :cond_4
    invoke-static {}, Lewi;->a()Lewi;

    invoke-static {}, Lewi;->b()Ljava/util/List;

    move-result-object v1

    .line 5491
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5492
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->z:I

    .line 5493
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c()V

    goto :goto_2

    .line 5496
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 5497
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5496
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_2
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->t:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Lcom/alibaba/android/teleconf/widget/UnFoldGridView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->j:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->d:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Leum;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->p:Leum;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->c()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 170
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b()V

    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    sget v0, Leuj$j;->activity_teleconf_setting_v2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->setContentView(I)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Leuj$l;->dt_conference_business_call_setting:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1183
    if-eqz v1, :cond_1

    .line 1184
    const-string/jumbo v0, "conf_call_biz_call_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->A:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 1185
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->s:Ljava/lang/String;

    .line 1186
    const-string/jumbo v0, "seleced_members"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->r:Ljava/util/List;

    .line 1187
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->u:Ljava/lang/String;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 131
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 132
    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->s:Ljava/lang/String;

    .line 130
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 154
    :cond_2
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->B:Lewi$a;

    .line 2071
    iput-object v1, v0, Lewi;->b:Lewi$a;

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-static {}, Lewi;->a()Lewi;

    move-result-object v0

    .line 3071
    iput-object v2, v0, Lewi;->b:Lewi$a;

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->v:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->w:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->v:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 162
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->w:Landroid/content/BroadcastReceiver;

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 165
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->b()V

    .line 178
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
