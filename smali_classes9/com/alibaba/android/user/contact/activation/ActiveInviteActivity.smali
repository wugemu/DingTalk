.class public Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ActiveInviteActivity.java"

# interfaces
.implements Lffw;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lffx;

.field private c:Lfxq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfxq",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 34
    .line 4069
    if-eqz p1, :cond_4

    .line 4070
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 4071
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->e:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4072
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4073
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 4078
    :cond_0
    :goto_0
    return-object v0

    .line 4073
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_0

    .line 4078
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_0

    .line 4081
    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Ljava/util/List;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    .prologue
    .line 34
    .line 3226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->f:Z

    .line 3227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3228
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    invoke-virtual {v0}, Lfxq;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    invoke-virtual {v0}, Lfxq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    invoke-virtual {v0}, Lfxq;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3230
    if-eqz v0, :cond_0

    .line 3233
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->f:Z

    goto :goto_0

    .line 3237
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_2
    return-object v1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Lffx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->b:Lffx;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .param p1, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    invoke-virtual {v0, p2}, Lfxq;->e(Ljava/util/List;)V

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 4
    .param p1, "shareTitle"    # Ljava/lang/String;
    .param p2, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 198
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 199
    .local v1, "share":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newShareConstants(Landroid/content/Context;)Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/laiwang/tide/share/business/excutor/ShareToManager;->init(Landroid/content/Context;Lcom/alibaba/laiwang/tide/share/business/excutor/common/Constants;)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    sget v2, Lezg$l;->dt_invite_title_share_dingtalk:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    sget v2, Lezg$l;->dt_invite_title_share_weixin_friend:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget v2, Lezg$l;->dt_invite_title_share_sms:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newSmsShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v1, p0, p1, v0, p2}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->showShareActionBox(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V

    .line 212
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 221
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lezg$j;->activity_active_invite:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->setContentView(I)V

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1057
    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 1058
    const-string/jumbo v0, "ActiveInvite"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "orgId is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->finish()V

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dept_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1062
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_selected_user_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    .line 1063
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key_selected_user_name_map"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->e:Ljava/util/HashMap;

    .line 1064
    new-instance v0, Lffx;

    invoke-direct {v0, v2, v3, v4, v5}, Lffx;-><init>(JJ)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->b:Lffx;

    .line 1065
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->b:Lffx;

    .line 1075
    iput-object p0, v0, Lffx;->f:Lffw;

    .line 1086
    sget v0, Lezg$l;->active_invite_newer:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->setTitle(I)V

    .line 1088
    sget v0, Lezg$h;->ll_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->a:Landroid/widget/LinearLayout;

    .line 1089
    sget v0, Lezg$h;->btn_active_invite_now:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1090
    new-instance v1, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$1;-><init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    sget v0, Lezg$h;->active_list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/CommonScrollListView;

    .line 1105
    new-instance v1, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$2;-><init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnScrollChange(Lcom/alibaba/android/user/contact/view/CommonScrollListView$a;)V

    .line 1115
    new-instance v1, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$3;-><init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1135
    sget v1, Lezg$l;->active_invite_ta:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1136
    new-instance v2, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;

    invoke-direct {v2, p0, p0, v1}, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity$4;-><init>(Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    .line 1169
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1170
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lfxq;->a(Ljava/util/List;)V

    .line 1172
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->c:Lfxq;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/CommonScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->b:Lffx;

    .line 2093
    const/16 v1, 0x1e

    invoke-virtual {v0, v6, v1}, Lffx;->a(ZI)V

    .line 53
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activation/ActiveInviteActivity;->b:Lffx;

    .line 3080
    const/4 v1, 0x0

    iput-object v1, v0, Lffx;->f:Lffw;

    .line 178
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 179
    return-void
.end method
