.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

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
    .line 1049
    const-string/jumbo v2, "org_create_step1_cancel_confirm_btn_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 1050
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, "orgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 1052
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->finish()V

    .line 1085
    :goto_0
    return-void

    .line 1056
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1057
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;-><init>()V

    invoke-static {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1061
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    iput-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    .line 1062
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v4

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfky;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfky;

    move-result-object v2

    .line 1158
    iget-wide v2, v2, Lcom/alibaba/android/user/service/SearchOrgNameCenter;->f:J

    .line 1062
    :goto_1
    iput-wide v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    .line 1065
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1066
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryCode:I

    .line 1067
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->industryDesc:Ljava/lang/String;

    .line 1071
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->s(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    .line 1074
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->region:Ljava/lang/String;

    .line 1077
    new-instance v0, Lcom/alibaba/android/user/model/OrgDetailObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgDetailObject;-><init>()V

    .line 1078
    .local v0, "orgDetailObject":Lcom/alibaba/android/user/model/OrgDetailObject;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->orgInfoObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 1079
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->t(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1080
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    .line 1081
    iget-object v2, v0, Lcom/alibaba/android/user/model/OrgDetailObject;->members:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->t(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->j(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v2

    .line 2052
    const/4 v3, -0x1

    invoke-static {v2, v0, v3}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 1084
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->finish()V

    goto/16 :goto_0

    .line 1062
    .end local v0    # "orgDetailObject":Lcom/alibaba/android/user/model/OrgDetailObject;
    :cond_5
    const-wide/16 v2, 0x0

    goto/16 :goto_1
.end method
