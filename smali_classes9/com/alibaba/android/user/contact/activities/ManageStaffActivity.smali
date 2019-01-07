.class public Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManageStaffActivity.java"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/ToggleButton;

.field private E:Landroid/widget/ToggleButton;

.field private F:Landroid/widget/ToggleButton;

.field private G:Landroid/content/Context;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private J:Landroid/widget/Button;

.field private K:Ljava/lang/String;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Lcom/alibaba/android/user/model/SWHrmObject;

.field private S:Landroid/view/View;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/content/BroadcastReceiver;

.field private V:Z

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private d:Landroid/view/MenuItem;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ldq;

.field private j:Landroid/widget/ProgressBar;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private t:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private u:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/TextView;

.field private z:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c:I

    .line 129
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h:I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->O:Z

    .line 213
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->U:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N:Landroid/view/View;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic E(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic G(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i()V

    return-void
.end method

.method static synthetic I(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    const/4 v2, 0x0

    .line 110
    .line 19397
    const-string/jumbo v0, "start removeEmployee"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19398
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19399
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$15;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 19426
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 19427
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-interface/range {v1 .. v6}, Lezt;->a(JJLcma;)V

    .line 110
    return-void
.end method

.method static synthetic K(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 19830
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    .line 19834
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->showLoadingDialog()V

    .line 19835
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$28;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 19864
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 19865
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(JLjava/lang/String;Ljava/lang/String;Lcma;)V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic L(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 20791
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    .line 20795
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->showLoadingDialog()V

    .line 20796
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$27;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 20825
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 20826
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lezt;->a(JLjava/lang/String;Lcma;)V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic M(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 21718
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21719
    sget v1, Lezg$l;->dt_mail_delete_confirm:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$24;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$24;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 21720
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    .line 21725
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21726
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 110
    return-void
.end method

.method static synthetic N(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 110
    .line 21905
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 21906
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->M:Landroid/view/View;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21907
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void

    :cond_0
    move v0, v1

    .line 21905
    goto :goto_0

    :cond_1
    move v2, v3

    .line 21906
    goto :goto_1

    :cond_2
    move v3, v1

    .line 21907
    goto :goto_2
.end method

.method static synthetic O(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/user/model/SWHrmObject;)Lcom/alibaba/android/user/model/SWHrmObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/SWHrmObject;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 110
    .line 19662
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19664
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19665
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 19666
    if-eqz v0, :cond_0

    .line 19669
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19673
    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19674
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 19675
    if-eqz v0, :cond_2

    .line 19678
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 19680
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19684
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/view/MenuItem;Z)V
    .locals 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1965
    if-nez p1, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 1973
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    .local v0, "addString":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1976
    .local v1, "spannableString":Landroid/text/SpannableString;
    if-eqz p2, :cond_2

    .line 1977
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_theme_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1978
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1984
    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1980
    :cond_2
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$e;->ui_common_level3_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1981
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V
    .locals 4
    .param p1, "orgEmployeeExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "isGoon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1352
    const-string/jumbo v1, "start updateEmployee"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1353
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$14;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V

    const-class v3, Lcma;

    invoke-interface {v1, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1392
    .local v0, "callback":Lcma;
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lezt;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V

    .line 1393
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;I)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1168
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    .line 1171
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    if-nez v3, :cond_1

    .line 1172
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    .line 1174
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->layout_manage_staff_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1175
    .local v2, "view":Landroid/view/View;
    sget v3, Lezg$h;->tv_staff_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1176
    .local v1, "tvStaffTitle":Landroid/widget/TextView;
    sget v3, Lezg$h;->et_manage_staff_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1177
    .local v0, "cetStaffContent":Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1180
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1182
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;JJ)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 110
    .line 11985
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 12009
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 12010
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lezt;->a(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Landroid/view/MenuItem;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Landroid/view/MenuItem;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;JZZ)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # J
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z

    .prologue
    .line 110
    .line 19599
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;

    invoke-direct {v1, p0, p4, p1, p5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$21;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19650
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lezt;->b(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Z

    .prologue
    const/4 v4, 0x0

    .line 110
    .line 17297
    if-nez p1, :cond_0

    .line 17298
    const-string/jumbo v0, "data is null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17343
    :goto_0
    return-void

    .line 17303
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 17304
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org.employee.add"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17305
    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 17306
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17307
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17309
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 17312
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Landroid/view/MenuItem;Z)V

    .line 17314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 17315
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.org_apply_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17316
    const-string/jumbo v1, "user_mobile"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17317
    const-string/jumbo v1, "list_view_position"

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17319
    const-string/jumbo v1, "org_apply_status"

    sget-object v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17321
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 17322
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 17324
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.user_profile_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17325
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 17327
    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->alertMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 17328
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->alertMsg:Ljava/lang/String;

    .line 17329
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    const/4 v2, 0x0

    .line 17330
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$13;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V

    .line 17331
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 17340
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 17342
    :cond_4
    if-eqz p2, :cond_5

    .line 17343
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i()V

    goto/16 :goto_0

    .line 17345
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->finish()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;ZZ)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 110
    .line 19563
    if-eqz p1, :cond_0

    .line 19567
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19568
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$20;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;ZZ)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19592
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lezt;->a(Ljava/lang/String;Ljava/lang/Long;Lcma;)V

    .line 110
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 110
    .line 21730
    sget v0, Lezg$l;->dt_manage_mail_setting_unbind:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 21731
    sget v0, Lezg$l;->dt_cmail_delete_org_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 21733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21734
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 21735
    aput-object v1, v0, v4

    .line 21736
    aput-object v2, v0, v3

    .line 21742
    :goto_0
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21743
    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21745
    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$25;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$25;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 21756
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    return-void

    .line 21738
    :cond_0
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 21739
    aput-object v1, v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "externalTitle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->V:Z

    .line 1111
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->V:Z

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->C:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_contact_department_outside_position_option_sync_inner:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1116
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->externalTitle:Ljava/lang/String;

    .line 1119
    :cond_0
    return-void

    .line 1114
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 13
    .param p1, "isGoon"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 788
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v4, :cond_0

    .line 789
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    iput-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 792
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 793
    const-string/jumbo v4, "edit mode"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 796
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 797
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_name:I

    .line 798
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 797
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 799
    const-string/jumbo v4, "orgUserName is empty"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 805
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 808
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 811
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->jobNumber:Ljava/lang/String;

    .line 814
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extNumber:Ljava/lang/String;

    .line 817
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    .line 819
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    .line 821
    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "number:"

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    aput-object v5, v4, v9

    const-string/jumbo v5, ",name:"

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v5, v4, v11

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 825
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 826
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 827
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 828
    sget v4, Lezg$l;->dt_mail_invalid_emailaddress:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 829
    const-string/jumbo v4, "orgEmail is empty or invalid"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 835
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 836
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 837
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 838
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 839
    :cond_3
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_dept:I

    .line 840
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 839
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 841
    const-string/jumbo v4, "no dept or deptName is empty"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 845
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 848
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 849
    .local v1, "integer":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 850
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    .line 851
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 852
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    goto :goto_1

    .line 858
    .end local v1    # "integer":Ljava/lang/Integer;
    :cond_6
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;-><init>()V

    .line 859
    .local v3, "orgEmpSettingObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    .line 860
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    .line 863
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    .line 864
    .local v2, "isManagerModeChecked":Z
    if-eqz v2, :cond_7

    .line 865
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/16 v5, 0xa

    iput v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    .line 870
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d:Landroid/view/MenuItem;

    invoke-direct {p0, v4, v8}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Landroid/view/MenuItem;Z)V

    .line 873
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 874
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0, v4, p1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V

    goto/16 :goto_0

    .line 867
    :cond_7
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    goto :goto_2

    .line 876
    .end local v2    # "isManagerModeChecked":Z
    .end local v3    # "orgEmpSettingObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
    :cond_8
    const-string/jumbo v4, "not edit mode"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v6, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 880
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 881
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 882
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_name:I

    .line 883
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 882
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 884
    const-string/jumbo v4, "orgUserName is empty"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 889
    :cond_9
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 890
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 891
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_mobile:I

    .line 892
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 891
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 893
    const-string/jumbo v4, "orgUserMobile is empty"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 896
    :cond_a
    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "number:"

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    aput-object v5, v4, v9

    const-string/jumbo v5, ",name:"

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    aput-object v5, v4, v11

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 902
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->jobNumber:Ljava/lang/String;

    .line 905
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extNumber:Ljava/lang/String;

    .line 908
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    .line 910
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    .line 912
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v4, :cond_c

    .line 915
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 916
    .restart local v1    # "integer":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_b

    .line 917
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    goto :goto_3

    .line 922
    .end local v1    # "integer":Ljava/lang/Integer;
    :cond_c
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 923
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 924
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 925
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 926
    sget v4, Lezg$l;->dt_mail_invalid_emailaddress:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 927
    const-string/jumbo v4, "orgEmail is empty or invalid"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 933
    :cond_d
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_11

    .line 935
    :cond_e
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-nez v4, :cond_f

    .line 936
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 938
    :cond_f
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;-><init>()V

    .line 939
    .local v0, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    .line 940
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    .line 941
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    .end local v0    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    :goto_4
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    .line 946
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_12

    .line 947
    :cond_10
    sget v4, Lezg$l;->add_staff_blank_toast:I

    new-array v5, v9, [Ljava/lang/Object;

    sget v6, Lezg$l;->user_profile_dept:I

    .line 948
    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 947
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Ljava/lang/String;)V

    .line 949
    const-string/jumbo v4, "no dept"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 943
    :cond_11
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->deptList:Ljava/util/List;

    goto :goto_4

    .line 954
    :cond_12
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v4, :cond_13

    .line 955
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 959
    :cond_13
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;-><init>()V

    .line 960
    .restart local v3    # "orgEmpSettingObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    iput-boolean v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;->mobileHide:Z

    .line 961
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->empSetting:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpSettingObject;

    .line 964
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    .line 965
    .restart local v2    # "isManagerModeChecked":Z
    if-eqz v2, :cond_14

    .line 966
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/16 v5, 0xa

    iput v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    .line 972
    :goto_5
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->F:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    iput-boolean v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteHrm:Z

    .line 974
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d:Landroid/view/MenuItem;

    invoke-direct {p0, v4, v8}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Landroid/view/MenuItem;Z)V

    .line 977
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 11266
    const-string/jumbo v4, "start addEmployee"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11267
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11268
    new-instance v6, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;

    invoke-direct {v6, p0, p1, v5}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$11;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    .line 11292
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v7, Lcma;

    invoke-interface {v4, v6, v7, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 11293
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lezt;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V

    goto/16 :goto_0

    .line 968
    :cond_14
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgLevel:I

    goto :goto_5
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->P:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    .line 12186
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 12187
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 12189
    if-eqz p1, :cond_1

    .line 12193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 12194
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 12195
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 12196
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 12200
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 12202
    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_0

    .line 12203
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 12194
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 12207
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g:Ljava/lang/String;

    .line 384
    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    .line 385
    const-string/jumbo v2, "org_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    .line 386
    const-string/jumbo v2, "user_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k:Ljava/lang/String;

    .line 387
    const-string/jumbo v2, "org_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->m:Ljava/lang/String;

    .line 388
    const-string/jumbo v2, "key_org_title_name"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->K:Ljava/lang/String;

    .line 389
    const-string/jumbo v2, "user_mobile"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    .line 390
    const-string/jumbo v2, "list_view_position"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->n:I

    .line 391
    const-string/jumbo v2, "manage_staff_mode"

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    .line 392
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v3

    .line 391
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h:I

    .line 393
    const-string/jumbo v2, "dept_object"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 395
    const-string/jumbo v2, "org_request_from_source_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "source":Ljava/lang/String;
    const-string/jumbo v2, "manage_staff_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9402
    const-string/jumbo v2, "nav2OrgContactActivity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9403
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/org_contact.html"

    new-instance v4, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$23;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$23;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-interface {v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 399
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    .line 17533
    new-instance v0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;-><init>(Landroid/app/Activity;)V

    .line 17534
    sget v1, Lezg$l;->add_staff_existed_dlg_msg:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18137
    iput-object v1, v0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b:Ljava/lang/String;

    .line 17534
    sget v1, Lezg$l;->dt_contact_department_add_member_exist_tip:I

    .line 17535
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 19132
    iput-object v1, v0, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a:Ljava/lang/String;

    .line 17535
    sget v1, Lezg$l;->add_staff_existed_dlg_copy:I

    .line 17536
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$19;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$19;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;ZLcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    move-result-object v1

    sget v2, Lezg$l;->add_staff_existed_dlg_move:I

    .line 17544
    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$18;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$18;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;ZLcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    move-result-object v0

    .line 17552
    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->show()V

    .line 110
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    .line 16215
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 16231
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 16232
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    move v6, p1

    invoke-interface/range {v1 .. v7}, Lezt;->b(JJZLcma;)V

    .line 110
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 559
    sget v1, Lezg$h;->tv_manage_staff_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->B:Landroid/widget/TextView;

    .line 562
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->o:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->m:Ljava/lang/String;

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 572
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->B:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    :cond_2
    sget v1, Lezg$h;->ll_manage_staff_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 576
    .local v0, "manageStaffDeptLL":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$36;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    .line 17145
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v0, :cond_1

    .line 17146
    :cond_0
    return-void

    .line 17148
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 17151
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 17152
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;-><init>()V

    .line 17153
    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    .line 17154
    const-string/jumbo v0, ""

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    .line 17155
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17158
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 17159
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 17160
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 17161
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 17162
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;I)V

    .line 17159
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    .line 16241
    if-eqz p1, :cond_0

    .line 16242
    const/16 v6, 0xa

    .line 16246
    :goto_0
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$10;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 16260
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcma;

    .line 16261
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-interface/range {v1 .. v7}, Lezt;->a(JJILcma;)V

    .line 110
    return-void

    .line 16244
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private d()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    .line 634
    sget v4, Lezg$h;->rl_invite_fill_registration_form:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 635
    .local v1, "inviteFillRegistractionFormLayout":Landroid/view/View;
    sget v4, Lezg$h;->rl_edit_staff_hrm:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 636
    .local v0, "editStaffHrmLayout":Landroid/view/View;
    sget v4, Lezg$h;->tv_invite_fill_registration_form_tip:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 637
    .local v2, "inviteFillRegistrationFormTip":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 639
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    iget-object v4, v4, Lcom/alibaba/android/user/model/SWHrmObject;->mEditEmployeeUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 643
    new-instance v4, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$38;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$38;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    :goto_0
    return-void

    .line 653
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    iget-object v4, v4, Lcom/alibaba/android/user/model/SWHrmObject;->mPreEntryUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 659
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 660
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->F:Landroid/widget/ToggleButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 664
    sget v4, Lezg$l;->dt_contact_addmember_hrm:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 665
    new-instance v3, Landroid/text/SpannableString;

    sget v4, Lezg$l;->dt_contact_addmember_hrm_table:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 666
    .local v3, "more":Landroid/text/SpannableString;
    new-instance v4, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 674
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 666
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 675
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 676
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 678
    .end local v3    # "more":Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 679
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->O:Z

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1432
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->EDIT_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1433
    const/4 v0, 0x1

    .line 1436
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->B:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1441
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_EXISTED_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1442
    const/4 v0, 0x1

    .line 1445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->P:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1449
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1451
    iput-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1452
    const-string/jumbo v1, "save2AddClearData"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1453
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_management_org_addstaff_next"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1455
    sget v1, Lezg$l;->manual_add_people_button_save_success_toast:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 1456
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1457
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1460
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->B:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1462
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1464
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->y:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1468
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1469
    .local v0, "integer":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1472
    .end local v0    # "integer":Ljava/lang/Integer;
    :cond_0
    iput-object v5, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    .line 1473
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1474
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1476
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b()V

    .line 1477
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c()V

    .line 1481
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 12689
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12690
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->L:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_manage_mail_unsetting_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    .line 12692
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->L:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAuthEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    return-wide v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 13510
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->G:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$17;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$17;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 110
    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->O:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 13760
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->showLoadingDialog()V

    .line 13761
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$26;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$26;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 13786
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 13787
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(JLcma;)V

    .line 110
    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    .line 14697
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14699
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14700
    invoke-static {v0}, Lcpt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->P:Ljava/lang/String;

    .line 14703
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/org_mail_setting.html"

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$22;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 110
    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->H:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    const/4 v3, 0x0

    .line 110
    .line 15484
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/SWHrmObject;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15496
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 15497
    sget v1, Lezg$l;->edit_staff_confirm_delete:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$16;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$16;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 15498
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    .line 15505
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 15485
    :goto_0
    return-void

    .line 15487
    :cond_1
    const-string/jumbo v0, "edit_employee_delete_for_leaving"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 15488
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/SWHrmObject;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/user/model/SWHrmObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->R:Lcom/alibaba/android/user/model/SWHrmObject;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    const/4 v6, 0x1

    .line 110
    .line 16991
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 16992
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->employDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 16993
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->employDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 16995
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$32;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 17009
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 17010
    invoke-virtual {v0, v6}, Landroid/app/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 17011
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 110
    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->A:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2016
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 2017
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 2018
    if-eqz p3, :cond_0

    .line 2019
    const-string/jumbo v1, "is_sync_inner_position"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2020
    .local v0, "isSync":Z
    if-eqz v0, :cond_1

    .line 2021
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Ljava/lang/String;)V

    .line 2028
    .end local v0    # "isSync":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2029
    return-void

    .line 2023
    .restart local v0    # "isSync":Z
    :cond_1
    const-string/jumbo v1, "outside_position_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 364
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 366
    const-string/jumbo v0, "org_addstaff_cancel_btn_click"

    const-string/jumbo v1, "org_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 9315
    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 310
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    sget v0, Lezg$j;->activity_manage_staff:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->setContentView(I)V

    .line 312
    iput-object p0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->G:Landroid/content/Context;

    .line 314
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->b()V

    .line 2419
    sget v0, Lezg$h;->pb_manage_staff_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    .line 2420
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2425
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2426
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->edit_staff_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 2430
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2437
    :cond_0
    sget v0, Lezg$h;->et_manage_staff_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2438
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2439
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2440
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2444
    :cond_1
    sget v0, Lezg$h;->iv_add_staff_contact_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2445
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2446
    :cond_2
    sget v1, Lezg$h;->ll_btn_save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2447
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2472
    :goto_1
    sget v0, Lezg$h;->et_add_staff_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 2473
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2474
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2475
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2476
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2481
    :cond_3
    :goto_2
    sget v0, Lezg$h;->btn_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->J:Landroid/widget/Button;

    .line 2482
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->J:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$34;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$34;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2489
    sget v0, Lezg$h;->tv_edit_staff_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->A:Landroid/widget/TextView;

    .line 2491
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2492
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setVisibility(I)V

    .line 2493
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2506
    :goto_3
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2511
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_user_add_staff_auto_add_country_code"

    .line 3083
    invoke-virtual {v0, v1, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2511
    if-eqz v0, :cond_4

    .line 2516
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 2517
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "+86"

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 2518
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "86"

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    .line 2519
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3539
    :cond_4
    :goto_4
    sget v0, Lezg$h;->ll_manage_staff_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->M:Landroid/view/View;

    .line 3540
    sget v0, Lezg$h;->ll_manage_staff_org_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->N:Landroid/view/View;

    .line 3541
    sget v0, Lezg$h;->tv_manage_staff_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->L:Landroid/widget/TextView;

    .line 3542
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->M:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$35;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$35;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->c()V

    .line 3627
    sget v0, Lezg$h;->tb_invite_fill_registration_form:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->F:Landroid/widget/ToggleButton;

    .line 3629
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d()V

    .line 3685
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3686
    sget v0, Lezg$h;->et_manage_staff_user_id:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->u:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3695
    :goto_5
    sget v0, Lezg$h;->tb_manage_staff_hide_mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D:Landroid/widget/ToggleButton;

    .line 3697
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3698
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->D:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3706
    :cond_5
    sget v0, Lezg$l;->edit_staff_hide_mobile_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3707
    sget v0, Lezg$h;->edit_staff_hide_mobile_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3708
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3713
    sget v0, Lezg$h;->tb_manage_staff_manager_mode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E:Landroid/widget/ToggleButton;

    .line 3715
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3716
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->E:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3725
    :cond_6
    sget v0, Lezg$l;->edit_staff_manager_mode_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3726
    sget v0, Lezg$h;->edit_staff_manager_mode_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3727
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4338
    sget v0, Lezg$h;->outside_position_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->S:Landroid/view/View;

    .line 4339
    sget v0, Lezg$h;->tv_out_side_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->C:Landroid/widget/TextView;

    .line 4340
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->S:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$12;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4610
    sget v0, Lezg$h;->tv_manage_staff_delete:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4612
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4613
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4614
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$37;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$37;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4731
    :goto_6
    sget v0, Lezg$h;->et_manage_staff_org_mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->t:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4732
    sget v0, Lezg$h;->et_manage_staff_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4733
    sget v0, Lezg$h;->et_manage_staff_job_number:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->s:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4734
    sget v0, Lezg$h;->et_manage_staff_ext:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->v:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4735
    sget v0, Lezg$h;->et_manage_staff_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->w:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4736
    sget v0, Lezg$h;->ll_manage_staff_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->x:Landroid/widget/LinearLayout;

    .line 4737
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->x:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4743
    sget v0, Lezg$h;->tv_manage_staff_date:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->y:Landroid/widget/TextView;

    .line 4744
    sget v0, Lezg$h;->et_manage_staff_remark:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->z:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 4746
    sget v0, Lezg$h;->ll_ext_property_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->T:Landroid/widget/LinearLayout;

    .line 5371
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5372
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5373
    const-string/jumbo v1, "com.workapp.choose.org.department"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5374
    const-string/jumbo v1, "action_key_org_mail_setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5375
    const-string/jumbo v1, "hrm_leaveJob"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5376
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i:Ldq;

    .line 5377
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5751
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6017
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6018
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 6105
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6106
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lezt;->c(Ljava/lang/Long;Ljava/lang/Long;Lcma;)V

    .line 7871
    :goto_7
    const-string/jumbo v0, "start loadDomain"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7872
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$29;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 7899
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7900
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-interface {v1, v2, v3, v0}, Lezt;->e(JLcma;)V

    .line 7912
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7913
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->f:J

    .line 7921
    const-string/jumbo v0, "start getQuitInfo"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7922
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$30;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$30;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 8094
    if-eqz v0, :cond_7

    .line 8097
    const-class v1, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/SWCommonIService;

    .line 8098
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lfvz$4;

    invoke-direct {v4, v0}, Lfvz$4;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/android/user/idl/services/SWCommonIService;->getQuitInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V

    .line 7913
    :cond_7
    :goto_8
    return-void

    .line 2428
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->add_staff_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 2449
    :cond_9
    const-string/jumbo v1, "identity_from_jsapi_contact_add_user_form"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2450
    sget v1, Lezg$h;->ll_btn_save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2454
    :goto_9
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2455
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2456
    sget v1, Lezg$g;->add_staff_contact_icon_cn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2460
    :goto_a
    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$33;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$33;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 2452
    :cond_a
    sget v1, Lezg$h;->ll_btn_save:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 2458
    :cond_b
    sget v1, Lezg$g;->add_staff_contact_icon_en:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 2478
    :cond_c
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->h:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ADD_EXISTED_STAFF:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ManageStaffMode;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2479
    sget v0, Lezg$l;->add_staff_mobile_invisible_toast:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_2

    .line 2495
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setVisibility(I)V

    .line 2496
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 2524
    :cond_e
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2525
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2530
    :cond_f
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2531
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-array v3, v9, [Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    aput-object v0, v3, v6

    const-string/jumbo v0, "-"

    aput-object v0, v3, v7

    aput-object v1, v3, v8

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 2533
    :cond_10
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "+"

    aput-object v4, v3, v6

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    aput-object v0, v3, v7

    const-string/jumbo v0, "-"

    aput-object v0, v3, v8

    aput-object v1, v3, v9

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 3688
    :cond_11
    sget v0, Lezg$h;->ll_manage_staff_user_id:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3689
    sget v0, Lezg$h;->tv_edit_staff_user_id_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 4621
    :cond_12
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 5755
    :cond_13
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v0, :cond_14

    .line 5756
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5757
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->I:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 5759
    :cond_14
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Ljava/lang/String;)V

    .line 6126
    invoke-static {}, Lfaw;->a()Lfaw;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    new-instance v1, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    .line 7114
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_15

    .line 7116
    const-string/jumbo v0, "err_parameter"

    const-string/jumbo v2, "orgId invalid"

    invoke-interface {v1, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 7126
    :cond_15
    new-instance v4, Lfaw$4;

    invoke-direct {v4, v0, v1}, Lfaw$4;-><init>(Lfaw;Lcma;)V

    .line 7141
    const-class v0, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;

    .line 7142
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;->listCustomOrgExtField(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    goto/16 :goto_7

    .line 7915
    :cond_16
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    .line 8942
    const-string/jumbo v0, "start getHireInfo"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8943
    new-instance v0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$31;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity$31;-><init>(Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;)V

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-static {v2, v3, v0}, Lfvz;->b(JLcma;)V

    goto/16 :goto_8
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 767
    const/4 v0, 0x1

    sget v1, Lezg$l;->finish:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d:Landroid/view/MenuItem;

    .line 768
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->d:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 770
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 355
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->U:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->i:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 775
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 776
    const-string/jumbo v1, "org_addstaff_finish_btn_click"

    const-string/jumbo v2, "org_id=%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    .line 10315
    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    const-string/jumbo v1, "click options item complete."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/activities/ManageStaffActivity;->a(Z)V

    .line 782
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
