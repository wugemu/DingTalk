.class public Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "GrantResourcesActivity.java"

# interfaces
.implements Lfhp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lfhq;

.field private c:Lfhp$a;

.field private d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 127
    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_grant_resource"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->setResult(ILandroid/content/Intent;)V

    .line 148
    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->dismissLoadingDialog()V

    .line 115
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 94
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 95
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->b:Lfhq;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 2106
    invoke-virtual {v0, v1}, Lfhq;->a(Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;)V

    .line 2107
    invoke-virtual {v0}, Lfhq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->showLoadingDialog()V

    .line 110
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->g()V

    .line 140
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->finish()V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v4, Lezg$j;->activity_grant_resources:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->setContentView(I)V

    .line 36
    new-instance v4, Lfhr;

    invoke-direct {v4, p0, p0}, Lfhr;-><init>(Landroid/app/Activity;Lfhp$b;)V

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "org_id"

    invoke-static {v4, v6, v10, v11}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v2

    .line 39
    .local v2, "orgId":J
    cmp-long v4, v2, v10

    if-gtz v4, :cond_0

    .line 40
    const-string/jumbo v4, "GrantResourcesActivity"

    const-string/jumbo v6, "onCreate() orgId illegal!"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "intent_key_grant_resource"

    invoke-static {v4, v6}, Lcoy;->b(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 46
    .local v0, "lastResult":Ljava/io/Serializable;
    const/4 v1, 0x0

    .line 47
    .local v1, "selectedIds":[J
    if-eqz v0, :cond_4

    .line 48
    check-cast v0, Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .end local v0    # "lastResult":Ljava/io/Serializable;
    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    .line 54
    :goto_1
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v4, :cond_1

    .line 55
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v6, Lezg$l;->dt_contact_subManager_assignPermission:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    sget v4, Lezg$h;->lv_grant_resources:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->a:Landroid/widget/ListView;

    .line 58
    new-instance v4, Lfhq;

    invoke-direct {v4, p0}, Lfhq;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->b:Lfhq;

    .line 59
    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    .line 60
    iget-object v6, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->b:Lfhq;

    .line 1241
    if-eqz v1, :cond_2

    array-length v4, v1

    if-nez v4, :cond_5

    .line 1242
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v6, Lfhq;->a:Ljava/util/HashSet;

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->a:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->b:Lfhq;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    if-nez v4, :cond_7

    .line 66
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->c:Lfhp$a;

    invoke-interface {v4, v2, v3}, Lfhp$a;->a(J)V

    goto :goto_0

    .line 50
    .restart local v0    # "lastResult":Ljava/io/Serializable;
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v6, "intent_key_grant_resource_ids"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    goto :goto_1

    .line 1246
    .end local v0    # "lastResult":Ljava/io/Serializable;
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v6, Lfhq;->a:Ljava/util/HashSet;

    .line 1247
    array-length v7, v1

    move v4, v5

    :goto_2
    if-ge v4, v7, :cond_3

    .line 1248
    aget-wide v8, v1, v4

    cmp-long v5, v8, v10

    if-lez v5, :cond_6

    .line 1251
    iget-object v5, v6, Lfhq;->a:Ljava/util/HashSet;

    aget-wide v8, v1, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 68
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->d:Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->a(Lcom/alibaba/android/user/model/OrgManagerResourceGroupObject;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->c:Lfhp$a;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->c:Lfhp$a;

    invoke-interface {v0}, Lfhp$a;->i()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->c:Lfhp$a;

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 90
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->g()V

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->finish()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lfhp$a;

    .line 3104
    iput-object p1, p0, Lcom/alibaba/android/user/contact/managersetting/GrantResourcesActivity;->c:Lfhp$a;

    .line 25
    return-void
.end method
