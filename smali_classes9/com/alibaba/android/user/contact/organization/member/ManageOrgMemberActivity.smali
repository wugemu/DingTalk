.class public Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;
.super Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;
.source "ManageOrgMemberActivity.java"

# interfaces
.implements Lfip;


# instance fields
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcoi;

.field private g:Landroid/support/v4/app/Fragment;

.field private h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private i:Lfjl;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

.field private q:Landroid/view/View;

.field private r:Ljava/lang/String;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->e:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l:Ljava/util/List;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->o:J

    .line 348
    new-instance v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$4;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->g:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Lcoi;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->f:Lcoi;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->g:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    return-object v0
.end method

.method private l()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getKeyPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->q:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->g:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->q:Landroid/view/View;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->g:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->g:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactFragment;->a(Ljava/lang/String;)V

    .line 262
    :cond_1
    return-void

    .line 256
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V
    .locals 9
    .param p1, "fragmentKey"    # Ljava/lang/String;
    .param p2, "breadName"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "nodeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const/4 v7, 0x1

    .line 271
    iput-wide p3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->o:J

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 273
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 274
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    if-eqz p5, :cond_1

    .line 278
    const-string/jumbo v4, "node"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 279
    iput-object p5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 281
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    const-string/jumbo v4, "bread_node_name"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_2
    const-string/jumbo v4, "choose_enterprise_oid"

    invoke-virtual {v0, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    const-string/jumbo v4, "display_enterprise_oid"

    invoke-virtual {v0, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, "key":Ljava/lang/String;
    if-eqz p5, :cond_9

    .line 291
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getKeyPathList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getKeyPathList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->getKeyPathList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 292
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v4, p2, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_4
    iget-object v4, p5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 296
    iget-object v4, p5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 297
    .local v3, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v3}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 298
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v5, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-static {v3}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    .end local v3    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_5
    invoke-static {p5}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 303
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l:Ljava/util/List;

    invoke-interface {v4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-static {p5}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->b()V

    .line 326
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->e:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 327
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_7

    .line 328
    new-instance v1, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;

    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberFragment;-><init>()V

    .line 329
    .restart local v1    # "fragment":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->e:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 333
    :cond_7
    if-eqz v1, :cond_8

    .line 334
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->f:Lcoi;

    invoke-virtual {v4, v2, v1, v7}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 335
    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->g:Landroid/support/v4/app/Fragment;

    .line 337
    :cond_8
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l()V

    .line 338
    return-void

    .line 308
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_9
    invoke-static {p5}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 311
    const-string/jumbo v2, "default"

    .line 316
    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->l:Ljava/util/List;

    invoke-interface {v4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    invoke-virtual {v4, v2, p2}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    new-instance v5, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$3;

    invoke-direct {v5, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$3;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V

    invoke-virtual {v4, v5}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 313
    :cond_b
    move-object v2, p2

    goto :goto_2
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lezg$h;->view_search:I

    return v0
.end method

.method public final b(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lezg$j;->activity_user_contact:I

    return v0
.end method

.method protected final d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 374
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->d()V

    .line 375
    const-string/jumbo v0, "contact_management_search_click"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "org_id="

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->o:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 1315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 107
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance v1, Lcoi;

    sget v3, Lezg$h;->ll_fragment_container:I

    invoke-direct {v1, p0, v3}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->f:Lcoi;

    .line 109
    new-instance v1, Lfjl;

    invoke-direct {v1, p0}, Lfjl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->i:Lfjl;

    .line 1155
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1156
    const-string/jumbo v1, "title"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->m:Ljava/lang/String;

    .line 1157
    const-string/jumbo v1, "bread_node_name"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->n:Ljava/lang/String;

    .line 1158
    const-string/jumbo v1, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->o:J

    .line 1159
    const-string/jumbo v1, "node"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1160
    const-string/jumbo v1, "message"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->r:Ljava/lang/String;

    .line 1164
    sget v1, Lezg$h;->rl_select_result:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    sget v1, Lezg$h;->view_bread:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    .line 1166
    sget v1, Lezg$h;->ll_bread_crumbs:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->q:Landroid/view/View;

    .line 1168
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->p:Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$1;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView;->setBreakClickListener(Lcom/alibaba/android/user/contact/organization/base/BreadCrumbsView$a;)V

    .line 1212
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lezg$j;->actbar_button:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->j:Landroid/view/View;

    .line 1213
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->j:Landroid/view/View;

    sget v3, Lezg$h;->btn_ok:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->k:Landroid/widget/Button;

    .line 1214
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->k:Landroid/widget/Button;

    sget v3, Lezg$l;->dt_contact_manager_navigation_button_batch_operation:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1215
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->k:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity$2;-><init>(Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1226
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->b(Z)V

    .line 1230
    sget v1, Lezg$h;->ll_header_banner_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1231
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    sget v1, Lezg$h;->tv_tips_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1233
    iget-object v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->n:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->o:J

    iget-object v6, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->h:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.org.employee.remove.last_bread_crumb"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 125
    return-void

    .line 1236
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v3, Lezg$l;->act_title_contact:I

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->j:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->a:Z

    if-nez v2, :cond_0

    .line 130
    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 131
    .local v0, "guideMenuItem":Landroid/view/MenuItem;
    sget v2, Lezg$g;->ic_actbar_guide:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 132
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 134
    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v5, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 135
    .local v1, "menuItem":Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->j:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 136
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 139
    .end local v0    # "guideMenuItem":Landroid/view/MenuItem;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 344
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/member/ManageOrgMemberActivity;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 345
    invoke-super {p0}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onDestroy()V

    .line 346
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 145
    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://csmobile.alipay.com/router.htm?scene=dd_lxr&lwfrom=20160506120514452"

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/organization/base/BaseContactActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 148
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/int-guide/en"

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
