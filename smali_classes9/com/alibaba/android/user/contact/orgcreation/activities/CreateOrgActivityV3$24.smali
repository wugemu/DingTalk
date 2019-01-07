.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1751
    const-string/jumbo v3, "org_create_shortstaff_exit_click"

    invoke-static {v3}, Lfxo;->a(Ljava/lang/String;)V

    .line 1752
    const-string/jumbo v3, "contact_create_team_cancel_confirm_btn_click"

    invoke-static {v3}, Lfxo;->b(Ljava/lang/String;)V

    .line 1753
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, "orgName":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v3

    invoke-virtual {v3}, Lfla;->a()I

    move-result v2

    .line 1755
    .local v2, "size":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 1756
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->finish()V

    .line 1783
    :goto_0
    return-void

    .line 1760
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1761
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;-><init>()V

    invoke-static {v3, v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1765
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 1768
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1769
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v4

    iget v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iput v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    .line 1770
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    .line 1774
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->A(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    .line 1775
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfky;

    move-result-object v4

    .line 2158
    iget-wide v4, v4, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 1775
    :goto_1
    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    .line 1778
    new-instance v0, Lcom/alibaba/android/user/model/OrgDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgDetailObject;-><init>()V

    .line 1779
    .local v0, "orgDetailObject":Lcom/alibaba/android/user/model/OrgDetailObject;
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1780
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v3

    invoke-virtual {v3}, Lfla;->b()Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    .line 1781
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->k(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;

    move-result-object v3

    .line 3052
    const/4 v4, -0x1

    invoke-static {v3, v0, v4}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1782
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$24;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->finish()V

    goto/16 :goto_0

    .line 1775
    .end local v0    # "orgDetailObject":Lcom/alibaba/android/user/model/OrgDetailObject;
    :cond_4
    const-wide/16 v4, 0x0

    goto :goto_1
.end method
