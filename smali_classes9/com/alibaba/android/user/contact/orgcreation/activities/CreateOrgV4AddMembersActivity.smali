.class public Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateOrgV4AddMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;
.implements Lfkr$b;
.implements Lflb$a;


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/alibaba/android/user/model/PositionData;

.field public d:Lcom/alibaba/android/user/model/OrgInviteObject;

.field public e:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

.field public f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/ListView;

.field private l:Lflb;

.field private m:Lfkv$a;

.field private n:Landroid/content/BroadcastReceiver;

.field private o:Lfkr$a;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/TextView;

.field private s:I

.field private t:Landroid/support/v7/app/AlertDialog;

.field private u:Lflb$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h:Z

    .line 124
    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->f:Z

    .line 243
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$6;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->u:Lflb$c;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->t:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/PositionData;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;IZZZZ)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    .line 13864
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 13865
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13866
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13868
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 13869
    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "x3":Ljava/util/List;
    invoke-virtual {v0, p3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->d(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13872
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->j(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13873
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13874
    sget v1, Lezg$l;->dt_createteam_add_admins_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13875
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->e(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13876
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->i(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13877
    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13878
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->n(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13879
    if-lez p4, :cond_1

    .line 13880
    invoke-virtual {v0, p4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13882
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->p(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13883
    const-string/jumbo v1, "UsersFragment"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 13884
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13885
    const-string/jumbo v2, "intent_key_contact_choose_request"

    .line 14053
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 13885
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 13886
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    .line 11591
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11592
    sget v0, Lezg$l;->dt_createteam_add_member_qrcode_without_team_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 11593
    :goto_0
    return-void

    .line 11596
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    if-nez v0, :cond_1

    .line 11597
    new-instance v0, Lfkx;

    invoke-direct {v0, p0}, Lfkx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 11598
    new-instance v1, Lfkw;

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$10;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lfkw;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkv$b;Lfkw$a;)V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    .line 11616
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    invoke-interface {v0, p1}, Lfkv$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    .prologue
    const/4 v4, 0x0

    .line 76
    .line 12538
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    if-eqz v0, :cond_0

    .line 12539
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    invoke-interface {v0}, Lfkv$a;->i()V

    .line 12540
    iput-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    .line 12547
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12548
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12554
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->finish()V

    .line 76
    return-void

    .line 12550
    :cond_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "https://industry-fab.dingtalk.com/orgCreate/guide?corpId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    .line 12551
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12550
    invoke-virtual {v0, p0, v1, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 76
    .line 12620
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12621
    :cond_0
    :goto_0
    return-void

    .line 12623
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 12624
    if-eqz v0, :cond_2

    .line 12625
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isFromQrcode:Z

    .line 12626
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    .line 12627
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 12628
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string/jumbo v1, ""

    :goto_2
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    .line 12629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lezg$l;->dt_createteam_add_member_from_qrcode_tag:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    goto :goto_1

    .line 12628
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->applyReason:Ljava/lang/String;

    goto :goto_2

    .line 12632
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v0, p1}, Lflb;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    .line 9638
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 9658
    :cond_0
    :goto_0
    return-void

    .line 9642
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9643
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 9644
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 9645
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 9646
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 9647
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9649
    :cond_3
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9654
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5

    .line 9655
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9656
    invoke-direct {p0, p1, v2, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 9661
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->showLoadingDialog()V

    .line 10656
    sget-object v3, Lfbk$a;->a:Lfbk;

    .line 9662
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$11;

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$11;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v3, v1, v0}, Lfbk;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .param p3, "identity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .local p2, "mobiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 689
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    if-nez v4, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v1, "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 695
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    invoke-static {v6, v7, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->addUserIdentityObject(JZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    move-result-object v0

    .line 701
    .local v0, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    iget v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    .line 702
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 703
    .local v2, "mobile":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 704
    iput-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 709
    .end local v2    # "mobile":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    if-eqz v4, :cond_3

    .line 710
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    iget-object v4, v4, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    .line 711
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    iget-object v4, v4, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    .line 712
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v4, v4, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    iput-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    .line 714
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 706
    .restart local v2    # "mobile":Ljava/lang/String;
    :cond_4
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    goto :goto_2

    .line 716
    .end local v0    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .end local v2    # "mobile":Ljava/lang/String;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    iput-object v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    .line 717
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 721
    const-string/jumbo v4, "identity_create_org_add_admin"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "identity_create_org_manual_add_admin"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 722
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v4, v1}, Lflb;->b(Ljava/util/List;)V

    .line 727
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h()V

    goto/16 :goto_0

    .line 724
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v4, v1}, Lflb;->c(Ljava/util/List;)V

    goto :goto_3
.end method

.method private a(Z)V
    .locals 2
    .param p1, "isQuit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 363
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    sget v1, Lezg$g;->no_added_members_confirm_dialog_banner:I

    .line 5243
    iput v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->h:I

    .line 365
    sget v1, Lezg$l;->dt_create_team_add_member_nobody_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 366
    sget v1, Lezg$l;->dt_create_team_add_member_nobody_detail:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 367
    sget v1, Lezg$l;->dt_create_team_add_member_continue:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 368
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$7;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Z)V

    .line 6271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 380
    sget v1, Lezg$l;->dt_create_team_add_member_later:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7263
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 381
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Z)V

    .line 7267
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 396
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 397
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)Lflb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    .line 12945
    sget v0, Lezg$l;->add_org_member:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12946
    const-string/jumbo v1, "identity_create_org_manual_add_admin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12947
    sget v0, Lezg$l;->dt_org_create_add_admin:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12949
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 12950
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12951
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12952
    const-string/jumbo v0, "intent_key_job_position_code"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 12953
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 76
    .line 8484
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    if-nez v0, :cond_2

    move-object v1, v2

    .line 8402
    :goto_0
    if-eqz v1, :cond_1

    .line 9526
    new-instance v3, Lcfi;

    invoke-direct {v3}, Lcfi;-><init>()V

    .line 9527
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcfi;->a:Ljava/lang/Long;

    .line 9529
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 9531
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "key_create_org_source"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9532
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "key_create_org_source"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcfi;->t:Ljava/lang/Integer;

    .line 8407
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->showLoadingDialog()V

    .line 8408
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$9;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V

    const-class v4, Lcma;

    invoke-static {v0, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8479
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v4

    invoke-interface {v4, v3, v1, v2, v0}, Lezt;->a(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    .line 76
    :cond_1
    return-void

    .line 8488
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v0}, Lflb;->b()Ljava/util/List;

    move-result-object v0

    .line 8493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8494
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 8495
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    if-eqz v4, :cond_3

    .line 8499
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8501
    sget v0, Lezg$l;->settings_org_member_name_empty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    move-object v1, v2

    .line 8502
    goto/16 :goto_0

    .line 8505
    :cond_4
    new-instance v4, Lcfb;

    invoke-direct {v4}, Lcfb;-><init>()V

    .line 8506
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v5, v4, Lcfb;->b:Ljava/lang/String;

    .line 8507
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcfb;->d:Ljava/lang/Long;

    .line 8508
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 9044
    invoke-static {v5, v10, v11}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 8508
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcfb;->a:Ljava/lang/Long;

    .line 8509
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iput-object v5, v4, Lcfb;->c:Ljava/lang/String;

    .line 8510
    sget-object v5, Lffp;->a:Ljava/lang/Integer;

    iput-object v5, v4, Lcfb;->e:Ljava/lang/Integer;

    .line 8511
    iget-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcfb;->h:Ljava/lang/Boolean;

    .line 8512
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    iput-object v0, v4, Lcfb;->i:Ljava/lang/String;

    .line 8513
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8516
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8517
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 8518
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 8519
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 8520
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 8521
    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)Lcom/alibaba/android/user/model/PositionData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    return-object v0
.end method

.method private g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 580
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 582
    .local v6, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    sget v0, Lezg$l;->dt_invite_title_share_dingtalk:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newDingDingFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    sget v0, Lezg$l;->dt_invite_title_share_weixin_friend:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newWeixinFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    sget v0, Lezg$l;->dt_invite_title_share_qq_friend:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->newQQFriendShareUnit(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->d:Lcom/alibaba/android/user/model/OrgInviteObject;

    const-wide/16 v2, 0x0

    const-string/jumbo v5, "org_create_step2_invitation_success"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lfls;->a(Landroid/content/Context;Lcom/alibaba/android/user/model/OrgInviteObject;JLjava/util/List;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private h()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 996
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->s:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    if-nez v2, :cond_2

    move v0, v1

    .line 1002
    .local v0, "currentMemberAddedCount":I
    :goto_1
    iget v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->s:I

    if-ge v0, v2, :cond_3

    .line 1003
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1004
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    sget v3, Lezg$g;->ui_common_level2_button_bg:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1005
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    sget v3, Lezg$l;->dt_contact_add_member_member_count_not_enough_at:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->s:I

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1000
    .end local v0    # "currentMemberAddedCount":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v2}, Lflb;->a()I

    move-result v0

    goto :goto_1

    .line 1008
    .restart local v0    # "currentMemberAddedCount":I
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1009
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    sget v2, Lezg$g;->ui_common_level1_button_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1010
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    sget v2, Lezg$l;->finish:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 1
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .prologue
    .line 560
    if-eqz p1, :cond_0

    .line 561
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->d:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 563
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;->REMOTE:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    if-ne p2, v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->g()V

    .line 566
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 21
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 802
    const-string/jumbo v3, "identity_create_org_add_member"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 803
    sget v3, Lezg$l;->dt_createteam_add_member_qrcode_without_team_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 810
    :cond_2
    const-string/jumbo v3, "identity_create_org_add_member"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 811
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c:Lcom/alibaba/android/user/model/PositionData;

    .line 814
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v10, "selectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v3}, Lflb;->a()I

    move-result v3

    if-lez v3, :cond_5

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v3}, Lflb;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 817
    .local v18, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v18, :cond_4

    .line 820
    invoke-static/range {v18 .. v18}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 824
    .end local v18    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->g:Ljava/lang/String;

    sget-object v3, Lflr;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h:Z

    move/from16 v16, v0

    new-instance v17, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/lang/String;)V

    .line 7893
    const/4 v11, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 7901
    sget v3, Lezg$c;->choose_add_people_mode_items:I

    .line 7902
    invoke-static {}, Lfkw;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7903
    const-string/jumbo v4, "identity_create_org_add_admin"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 7904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    .line 7905
    :goto_2
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 7906
    sget v3, Lezg$c;->choose_add_people_mode_admin_items:I

    :cond_6
    move/from16 v19, v3

    .line 7913
    :goto_3
    new-instance v20, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct/range {v20 .. v21}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7914
    sget v3, Lezg$l;->choose_add_people_dlg_title:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7915
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$4;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v3 .. v17}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$4;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Ljava/lang/String;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;ZIZZZZLandroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7939
    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 824
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    goto/16 :goto_0

    .line 7904
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v4}, Lflb;->c()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 7909
    :cond_8
    sget v3, Lezg$c;->choose_add_people_mode_member_items:I

    move/from16 v19, v3

    goto :goto_3

    :cond_9
    move/from16 v19, v3

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->d:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_0

    .line 572
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->g()V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .line 3321
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PositionData;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 258
    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 317
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 321
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 327
    if-eqz p3, :cond_0

    .line 4321
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    .line 327
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_2

    .line 332
    const-string/jumbo v1, "intent_key_org_member_object"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 333
    .local v0, "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    if-eqz v0, :cond_0

    .line 337
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_3

    .line 338
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v1, v0}, Lflb;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lflb$b;

    .line 344
    .end local v0    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h()V

    goto :goto_0

    .line 340
    .restart local v0    # "orgMemberObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    .line 5183
    const/4 v1, 0x0

    .line 5184
    if-eqz v0, :cond_4

    .line 5185
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    if-eqz v1, :cond_5

    .line 5186
    iget-object v1, v2, Lflb;->b:Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lflb;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Z

    move-result v1

    .line 5192
    :cond_4
    :goto_2
    if-eqz v1, :cond_2

    .line 5193
    invoke-virtual {v2}, Lflb;->d()V

    goto :goto_1

    .line 5188
    :cond_5
    iget-object v1, v2, Lflb;->c:Ljava/util/List;

    invoke-virtual {v2, v1, v0}, Lflb;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Z

    move-result v1

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Z)V

    .line 359
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    sget v0, Lezg$j;->activity_create_org_v4_add_members:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->setContentView(I)V

    .line 132
    new-instance v0, Lfks;

    invoke-direct {v0, p0, p0}, Lfks;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkr$b;)V

    .line 1149
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a:J

    .line 1154
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "org_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->g:Ljava/lang/String;

    .line 1155
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "key_personal_user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h:Z

    .line 1156
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_industry_code"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->i:Ljava/lang/String;

    .line 1157
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_add_members_jump_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->j:Ljava/lang/String;

    .line 1199
    :cond_0
    sget v0, Lezg$h;->tv_member_count_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->r:Landroid/widget/TextView;

    .line 1201
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->s:I

    .line 1203
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->s:I

    if-lez v0, :cond_3

    .line 1204
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->r:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->r:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_contact_add_member_member_count_tip_at:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->s:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2162
    :goto_1
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    .line 2163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2181
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->h()V

    .line 2186
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->header_create_org_v4_add_members:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2187
    sget v0, Lezg$h;->org_member_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->k:Landroid/widget/ListView;

    .line 2188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 2190
    new-instance v0, Lflb;

    invoke-direct {v0, p0}, Lflb;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    .line 2191
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    .line 2483
    iput-object p0, v0, Lflb;->a:Lflb$a;

    .line 2193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->u:Lflb$c;

    .line 2529
    iput-object v1, v0, Lflb;->f:Lflb$c;

    .line 2195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->l:Lflb;

    invoke-virtual {v0}, Lflb;->d()V

    .line 3214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->n:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 3218
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$5;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->n:Landroid/content/BroadcastReceiver;

    .line 3238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3239
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3240
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 3252
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->o:Lfkr$a;

    invoke-interface {v0}, Lfkr$a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->b:Ljava/util/List;

    .line 3253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->o:Lfkr$a;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lfkr$a;->a(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    .line 144
    const-string/jumbo v0, "org_create_step2_page_enter"

    invoke-static {p0, v0}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 145
    return-void

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "intent_key_member_count_required"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    .line 1208
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->r:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 276
    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->n:Landroid/content/BroadcastReceiver;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    invoke-interface {v0}, Lfkv$a;->i()V

    .line 281
    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->m:Lfkv$a;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->t:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->t:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->t:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 286
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 287
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->onBackPressed()V

    .line 351
    const/4 v0, 0x0

    .line 353
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
    .line 76
    check-cast p1, Lfkr$a;

    .line 8291
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->o:Lfkr$a;

    .line 76
    return-void
.end method
