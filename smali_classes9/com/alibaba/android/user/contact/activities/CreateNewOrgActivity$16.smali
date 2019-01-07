.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1429
    const-string/jumbo v3, "org_create_shortstaff_exit_click"

    invoke-static {v3}, Lfxo;->a(Ljava/lang/String;)V

    .line 1430
    const-string/jumbo v3, "contact_create_team_cancel_confirm_btn_click"

    invoke-static {v3}, Lfxo;->b(Ljava/lang/String;)V

    .line 1431
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1432
    .local v1, "orgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v3

    invoke-virtual {v3}, Lfgi;->f()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 1433
    .local v2, "size":I
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 1434
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    .line 1456
    :goto_1
    return-void

    .line 1432
    .end local v2    # "size":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v3

    invoke-virtual {v3}, Lfgi;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 1438
    .restart local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1439
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;-><init>()V

    invoke-static {v3, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1443
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 1446
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1447
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iput v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    .line 1448
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    .line 1451
    :cond_4
    new-instance v0, Lcom/alibaba/android/user/model/OrgDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgDetailObject;-><init>()V

    .line 1452
    .local v0, "orgDetailObject":Lcom/alibaba/android/user/model/OrgDetailObject;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->k(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1453
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v3

    invoke-virtual {v3}, Lfgi;->f()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    .line 1454
    const-string/jumbo v3, "key_create_org_info"

    .line 2052
    const/4 v4, -0x1

    invoke-static {v3, v0, v4}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1455
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$16;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    goto :goto_1
.end method
