.class public Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectResultActivity.java"


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private b:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

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

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcen;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/organization/select/SelectModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:I

.field private m:I

.field private n:Lfki;

.field private final o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->g:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->h:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->i:Ljava/util/List;

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->m:I

    .line 179
    new-instance v0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$2;-><init>(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->n:Lfki;

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->o:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->h:Ljava/util/Map;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "size"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 94
    sget v0, Lezg$l;->dt_choose_kit_dept_hint:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    sget v0, Lezg$l;->contact_select_user_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .prologue
    .line 55
    .line 3206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 3208
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3209
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3210
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 55
    .line 3217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3219
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 3220
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3221
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 6
    .param p2, "isClick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 159
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 161
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->i:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-direct {v3, v0, p2}, Lcom/alibaba/android/user/contact/organization/select/SelectModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->g:Ljava/util/List;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->h:Ljava/util/Map;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->l:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->i:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_select_contact_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_selected_user_list"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 244
    const-string/jumbo v1, "key_selected_dept_list"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    const-string/jumbo v1, "activity_identify"

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 247
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->finish()V

    .line 248
    return-void
.end method

.method private b(Ljava/util/List;Z)V
    .locals 4
    .param p2, "isClick"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 172
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 174
    .local v0, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->i:Ljava/util/List;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/select/SelectModel;

    invoke-direct {v3, v0, p2}, Lcom/alibaba/android/user/contact/organization/select/SelectModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->m:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->l:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->l:I

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->l:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b()V

    .line 263
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v0, Lezg$j;->fragment_select_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->setContentView(I)V

    .line 1102
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1103
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->m:I

    .line 1104
    const-string/jumbo v0, "selectUserListResult"

    invoke-static {v0}, Lffv;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    :try_start_0
    const-string/jumbo v0, "selectUserListResult"

    invoke-static {v0}, Lffv;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_0
    const-string/jumbo v0, "key_request_select_user_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->d:Ljava/util/ArrayList;

    .line 1115
    const-string/jumbo v0, "key_selected_dept_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    .line 1116
    const-string/jumbo v0, "key_request_select_dept_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->f:Ljava/util/ArrayList;

    .line 1117
    const-string/jumbo v0, "intent_key_select_count"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->l:I

    .line 81
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 83
    new-instance v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->n:Lfki;

    .line 1155
    iput-object v1, v0, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->a:Lfki;

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v5}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a(Ljava/util/List;Z)V

    .line 2122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v4}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a(Ljava/util/List;Z)V

    .line 2123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v5}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b(Ljava/util/List;Z)V

    .line 2124
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v4}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b(Ljava/util/List;Z)V

    .line 2125
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b:Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/organization/select/SelectAdapter;->a(Ljava/util/List;)V

    .line 2130
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->g:Ljava/util/List;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$1;-><init>(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v0}, Lezt;->a(Ljava/util/List;Lcma;)V

    .line 2228
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->j:Landroid/view/View;

    .line 2229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->j:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->k:Landroid/widget/Button;

    .line 2230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->k:Landroid/widget/Button;

    sget v1, Lezg$l;->sure:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 2231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity$3;-><init>(Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->l:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->a(I)V

    .line 90
    return-void

    .line 1108
    :catch_0
    move-exception v0

    const-string/jumbo v0, "SelectResultActivity"

    const-string/jumbo v2, "ShareDataSource.getAndRemove failed!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1109
    iput-object v6, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1112
    :cond_1
    const-string/jumbo v0, "key_selected_user_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->c:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 268
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 269
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->j:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 270
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 271
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 256
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 253
    :pswitch_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/select/SelectResultActivity;->b()V

    .line 254
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
