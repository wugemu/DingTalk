.class public Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "NameCardOrgsActivity.java"

# interfaces
.implements Lfsz$a;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

.field private f:Lftf;

.field private final g:I

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->g:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->h:J

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_name_card_select_company"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 113
    const-string/jumbo v1, "org_name"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "org_id"

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "title"

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "intent_key_org_authed"

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthed:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "intent_key_title_authed"

    iget-boolean v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->titleAuthed:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    :goto_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->finish()V

    .line 123
    return-void

    .line 119
    :cond_0
    const-string/jumbo v1, "org_name"

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/user/namecard/base/BaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->e:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lftf;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->f:Lftf;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-static {p1}, Lhcn;->a(Ljava/lang/String;)V

    .line 235
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lccl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 127
    .local p2, "suggestList":Ljava/util/List;, "Ljava/util/List<Lccl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lfsi;>;"
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 129
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 130
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccl;

    .line 131
    .local v4, "searchOrgModel":Lccl;
    if-eqz v4, :cond_0

    .line 135
    iget-object v2, v4, Lccl;->b:Ljava/lang/String;

    .line 136
    .local v2, "orgName":Ljava/lang/String;
    new-instance v3, Lfsv;

    invoke-direct {v3}, Lfsv;-><init>()V

    .line 4031
    .local v3, "orgsItemBean":Lfsv;
    iput-object v2, v3, Lfsv;->a:Ljava/lang/String;

    .line 5026
    iput-object p1, v3, Lfsv;->b:Ljava/lang/String;

    .line 138
    iget-object v5, v4, Lccl;->c:Ljava/lang/String;

    iput-object v5, v3, Lfsv;->d:Ljava/lang/String;

    .line 139
    iget-wide v6, v4, Lccl;->a:J

    iput-wide v6, v3, Lfsv;->c:J

    .line 140
    new-instance v5, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)V

    .line 5036
    iput-object v5, v3, Lfsv;->e:Lftb$d;

    .line 152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    const/4 v5, 0x1

    .line 5041
    :goto_1
    iput-boolean v5, v3, Lfsv;->f:Z

    .line 153
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v2    # "orgName":Ljava/lang/String;
    .end local v3    # "orgsItemBean":Lfsv;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .restart local v2    # "orgName":Ljava/lang/String;
    .restart local v3    # "orgsItemBean":Lfsv;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 156
    .end local v1    # "index":I
    .end local v2    # "orgName":Ljava/lang/String;
    .end local v3    # "orgsItemBean":Lfsv;
    .end local v4    # "searchOrgModel":Lccl;
    :cond_2
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$2;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$2;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 185
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    :goto_0
    return-void

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lfsi;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 192
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    .line 193
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;
    if-eqz v2, :cond_1

    .line 197
    new-instance v3, Lfsu;

    invoke-direct {v3}, Lfsu;-><init>()V

    .line 198
    .local v3, "orgsItemBean":Lfsu;
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgName:Ljava/lang/String;

    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgId:J

    .line 6029
    iput-object v5, v3, Lfsu;->b:Ljava/lang/String;

    .line 6030
    iput-wide v8, v3, Lfsu;->d:J

    .line 198
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgMediaId:Ljava/lang/String;

    .line 7024
    iput-object v5, v3, Lfsu;->a:Ljava/lang/String;

    .line 199
    iget-boolean v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthed:Z

    .line 7040
    iput-boolean v5, v3, Lfsu;->h:Z

    .line 200
    iget v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthLevel:I

    .line 7045
    iput v5, v3, Lfsu;->i:I

    .line 201
    new-instance v5, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V

    .line 8035
    iput-object v5, v3, Lfsu;->c:Lftb$c;

    .line 212
    if-nez v1, :cond_2

    move v5, v6

    :goto_2
    iput-boolean v5, v3, Lfsu;->e:Z

    .line 213
    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgId:J

    iget-wide v10, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->h:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_3

    move v5, v6

    :goto_3
    iput-boolean v5, v3, Lfsu;->f:Z

    .line 214
    add-int/lit8 v5, v4, -0x1

    if-eq v1, v5, :cond_4

    move v5, v6

    :goto_4
    iput-boolean v5, v3, Lfsu;->g:Z

    .line 215
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v3    # "orgsItemBean":Lfsu;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v3    # "orgsItemBean":Lfsu;
    :cond_2
    move v5, v7

    .line 212
    goto :goto_2

    :cond_3
    move v5, v7

    .line 213
    goto :goto_3

    :cond_4
    move v5, v7

    .line 214
    goto :goto_4

    .line 217
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;
    .end local v3    # "orgsItemBean":Lfsu;
    :cond_5
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$4;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v0, Lezg$j;->activity_name_card_orgs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->setContentView(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->h:J

    .line 1084
    const-string/jumbo v1, "org_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->j:Ljava/lang/String;

    .line 1238
    :cond_0
    sget v0, Lezg$h;->name_card_orgs_et_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    .line 1243
    :cond_1
    sget v0, Lezg$h;->name_card_orgs_rv_orgList:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->d:Landroid/support/v7/widget/RecyclerView;

    .line 1244
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1245
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1246
    new-instance v1, Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/user/namecard/base/BaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->e:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    .line 1247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->e:Lcom/alibaba/android/user/namecard/base/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$5;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1257
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$6;-><init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->dt_card_org_information:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 74
    new-instance v0, Lftf;

    invoke-direct {v0, p0}, Lftf;-><init>(Lfsz$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->f:Lftf;

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->f:Lftf;

    .line 2060
    new-instance v1, Lftf$2;

    invoke-direct {v1, v0}, Lftf$2;-><init>(Lftf;)V

    const-class v0, Lcma;

    invoke-static {v1, v0, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2076
    invoke-static {}, Lfug;->a()Lfug;

    move-result-object v1

    .line 2200
    new-instance v2, Lfug$3;

    invoke-direct {v2, v1, v0}, Lfug$3;-><init>(Lfug;Lcma;)V

    .line 2217
    iget-object v0, v1, Lfug;->a:Lcom/alibaba/android/user/namecard/service/CardIService;

    invoke-interface {v0, v2}, Lcom/alibaba/android/user/namecard/service/CardIService;->getMyOrgList(Liyv;)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    sget v1, Lezg$l;->finish:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 92
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 93
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->j:Ljava/lang/String;

    .line 3170
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a:Ljava/util/List;

    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3171
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    .line 3172
    if-eqz v0, :cond_0

    .line 3175
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgName:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    :goto_1
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V

    goto :goto_0

    .line 3180
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
