.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/OrgDetailObject;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/user/model/OrgDetailObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 627
    const-string/jumbo v5, "contact_create_team_regaindata_ok_click"

    invoke-static {v5}, Lfxo;->a(Ljava/lang/String;)V

    .line 628
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    if-nez v5, :cond_1

    .line 629
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v6, v6, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 635
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v5

    if-nez v5, :cond_2

    .line 636
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfky;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 642
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 643
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;

    .line 644
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfky;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfky;->b(Ljava/lang/String;)V

    .line 646
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfky;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v6

    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    .line 1162
    iput-wide v6, v5, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 650
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v5

    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    if-eqz v5, :cond_8

    .line 651
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    if-nez v5, :cond_5

    .line 652
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;-><init>()V

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 654
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v6

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    iput v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    .line 655
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    .line 656
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->g(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :goto_1
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 664
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    .local v2, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    const-string/jumbo v6, "orgScal"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;I)I

    .line 666
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfkr$a;

    move-result-object v5

    invoke-interface {v5}, Lfkr$a;->a()Ljava/util/List;

    move-result-object v4

    .line 668
    .local v4, "teamScaleObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 669
    .local v3, "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    if-eqz v3, :cond_6

    .line 673
    iget v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 674
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    .end local v4    # "teamScaleObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    iget-object v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->region:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;

    .line 686
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    .line 689
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 690
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->a:Lcom/alibaba/android/user/model/OrgDetailObject;

    iget-object v5, v5, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 691
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v0, :cond_0

    .line 692
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v5

    if-nez v5, :cond_9

    .line 693
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    new-instance v6, Lcom/alibaba/android/user/model/PositionData;

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/alibaba/android/user/model/PositionData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;

    .line 698
    :goto_3
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->q(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    goto/16 :goto_0

    .line 658
    .end local v0    # "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    goto/16 :goto_1

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "user"

    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->g()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "json exception "

    aput-object v8, v7, v9

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 695
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v5

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    .line 696
    iget-object v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;->b:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v5

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    iput-object v6, v5, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    goto :goto_3
.end method
