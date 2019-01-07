.class public Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Lfkr$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Landroid/content/BroadcastReceiver;

.field private G:Lcir;

.field private H:Lfkr$a;

.field private I:Landroid/support/v7/app/AlertDialog;

.field private final b:I

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

.field private d:Landroid/view/View;

.field private e:Lfky;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

.field private n:Landroid/widget/Button;

.field private o:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:D

.field private s:D

.field private t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field private v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Lcom/alibaba/android/user/model/PositionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b:I

    .line 150
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->q:Ljava/lang/String;

    .line 176
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->D:Z

    .line 178
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->E:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # D

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->s:D

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->y:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->y:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->I:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcir;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcir;

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/user/model/PositionData;)Lcom/alibaba/android/user/model/PositionData;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/PositionData;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(JLjava/lang/String;)V
    .locals 9
    .param p1, "orgId"    # J
    .param p3, "orgName"    # Ljava/lang/String;

    .prologue
    .line 972
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 974
    .local v5, "industryCode":Ljava/lang/String;
    :goto_0
    iget-boolean v6, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->D:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lflz;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 976
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "finish_activity"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 978
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l()V

    .line 979
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->finish()V

    .line 980
    return-void

    .line 972
    .end local v5    # "industryCode":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcfi;Ljava/lang/String;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcfi;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 101
    .line 10914
    sget v0, Lezg$l;->create_org_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 10916
    const-string/jumbo v0, "org_create_success"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 10918
    iput-boolean v8, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->D:Z

    .line 10921
    const-string/jumbo v0, ""

    .line 10924
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;-><init>()V

    .line 10925
    if-eqz p1, :cond_0

    .line 10926
    iget-object v0, p1, Lcfi;->a:Ljava/lang/Long;

    .line 11044
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 10927
    iget-object v0, p1, Lcfi;->q:Ljava/lang/String;

    .line 10929
    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgId:J

    .line 10930
    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->corpId:Ljava/lang/String;

    .line 10931
    iget-object v4, p1, Lcfi;->b:Ljava/lang/String;

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->orgName:Ljava/lang/String;

    .line 10934
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 10935
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 10936
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ne v5, v7, :cond_1

    .line 10937
    aget-object v5, v4, v9

    iput-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->province:Ljava/lang/String;

    .line 10938
    aget-object v4, v4, v6

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->city:Ljava/lang/String;

    .line 10942
    :cond_1
    iget v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->y:I

    iput v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->scale:I

    .line 10943
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/CreateNewOrgInfo;->industryObject:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    .line 10944
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "pref_last_create_org_info"

    aput-object v5, v4, v8

    .line 10945
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 10944
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11052
    const/4 v5, -0x1

    invoke-static {v4, v1, v5}, Lcmu;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 10947
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcfi;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 10950
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcfi;->w:Ljava/lang/String;

    .line 10951
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    const/4 v4, 0x0

    .line 10952
    invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$9;

    invoke-direct {v1, p0, v2, v3, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$9;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;JLjava/lang/String;)V

    .line 10953
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 10958
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 10963
    :goto_0
    return-void

    .line 10960
    :cond_2
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10961
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    .line 12040
    const-string/jumbo v2, "https://h5.dingtalk.com/guess_invite/index.html?corpId=%s&frNativeCreate=1"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10961
    const-string/jumbo v2, ""

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10962
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l()V

    .line 10963
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->finish()V

    goto :goto_0

    .line 10965
    :cond_3
    invoke-direct {p0, v2, v3, p2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/user/model/OrgDetailObject;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lcom/alibaba/android/user/model/OrgDetailObject;

    .prologue
    .line 101
    .line 10620
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10621
    sget v1, Lezg$l;->dt_create_org_recovery_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10622
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$23;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lcom/alibaba/android/user/model/OrgDetailObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10703
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10709
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lfom;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Lfom;

    .prologue
    .line 101
    .line 10885
    const-string/jumbo v0, "12115"

    iget-object v1, p1, Lfom;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10886
    iget-object v0, p1, Lfom;->a:Ljava/lang/String;

    iget-object v1, p1, Lfom;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10887
    :goto_0
    return-void

    .line 10889
    :cond_0
    iget-object v0, p1, Lfom;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 10890
    :goto_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10891
    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_title:I

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10892
    if-eqz v0, :cond_3

    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_apply_message:I

    :goto_2
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10893
    if-eqz v0, :cond_4

    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_ignore:I

    :goto_3
    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$7;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10899
    if-eqz v0, :cond_1

    .line 10900
    sget v0, Lezg$l;->dt_group_invite_apply:I

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$8;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Lfom;)V

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 10909
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 10910
    const-string/jumbo v0, "org_create_same_name_warning_show"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 10889
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 10892
    :cond_3
    sget v1, Lezg$l;->dt_create_team_repeat_corp_name_admin_message:I

    goto :goto_2

    .line 10893
    :cond_4
    sget v1, Lezg$l;->and_tips_know:I

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 101
    .line 8020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8022
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v1, :cond_0

    .line 8023
    new-instance v1, Lcfb;

    invoke-direct {v1}, Lcfb;-><init>()V

    .line 8024
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v2, v1, Lcfb;->b:Ljava/lang/String;

    .line 8025
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcfb;->d:Ljava/lang/Long;

    .line 8026
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 8044
    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 8026
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcfb;->a:Ljava/lang/Long;

    .line 8027
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iput-object v2, v1, Lcfb;->c:Ljava/lang/String;

    .line 8028
    sget-object v2, Lffp;->a:Ljava/lang/Integer;

    iput-object v2, v1, Lcfb;->e:Ljava/lang/Integer;

    .line 8029
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-boolean v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcfb;->h:Ljava/lang/Boolean;

    .line 8030
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    iput-object v2, v1, Lcfb;->i:Ljava/lang/String;

    .line 8031
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8034
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8035
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;-><init>()V

    .line 8036
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->fromIDLModelList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->members:Ljava/util/List;

    .line 8037
    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptNodeObject;->id:J

    .line 8038
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8985
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v0, :cond_3

    .line 8986
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;)Lcfi;

    move-result-object v0

    move-object v1, v0

    .line 8991
    :goto_0
    iput-object p1, v1, Lcfi;->b:Ljava/lang/String;

    .line 8992
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfi;->s:Ljava/lang/String;

    .line 8993
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcfi;->m:Ljava/lang/Integer;

    .line 8995
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->n:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 8997
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    iput-object v0, v1, Lcfi;->r:Ljava/lang/String;

    .line 8998
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->q:Ljava/lang/String;

    .line 9109
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 8998
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcfi;->y:Ljava/lang/Long;

    .line 9000
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_create_org_source"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9001
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "key_create_org_source"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcfi;->t:Ljava/lang/Integer;

    .line 7832
    :cond_1
    if-eqz v1, :cond_2

    .line 7834
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->showLoadingDialog()V

    .line 7835
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;

    invoke-direct {v0, p0, p1, v6}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$6;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;Z)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7881
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v2, v4, v0}, Lezt;->b(Lcfi;Ljava/util/List;Lcom/alibaba/android/user/model/OrgAttachObject;Lcma;)V

    .line 101
    :cond_2
    return-void

    .line 8988
    :cond_3
    new-instance v0, Lcfi;

    invoke-direct {v0}, Lcfi;-><init>()V

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # D

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->r:D

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/user/model/PositionData;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->H:Lfkr$a;

    invoke-interface {v0}, Lfkr$a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->w:Ljava/util/List;

    .line 585
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->H:Lfkr$a;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m:Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lfkr$a;->a(Ljava/lang/String;)V

    .line 586
    return-void

    .line 585
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->j()V

    return-void
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 717
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 9610
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 9611
    const-string/jumbo v1, "key_create_org_info_v4"

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    .line 9612
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 9613
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 9615
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 757
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v0, :cond_0

    .line 6771
    sget-object v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$4;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 767
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->j:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private k()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1007
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1009
    .local v1, "extObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "orgScal"

    iget v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->y:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1010
    const-string/jumbo v2, "longitude"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->r:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1011
    const-string/jumbo v2, "latitude"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->s:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "user"

    sget-object v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "json exception "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    .line 9796
    const-string/jumbo v0, "pref_key_user_industry_switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->D:Z

    if-nez v0, :cond_1

    .line 9797
    :cond_0
    :goto_0
    return-void

    .line 9800
    :cond_1
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v1

    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$5;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v0}, Lfac;->a(Lcma;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    return-object v0
.end method

.method private l()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1165
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->D:Z

    if-eqz v1, :cond_0

    .line 1166
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_create_org_times"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 1167
    .local v0, "times":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "pref_create_org_times"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1169
    .end local v0    # "times":I
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfky;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->e:Lfky;

    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobDesc:Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->jobName:Ljava/lang/String;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    iget-boolean v1, v1, Lcom/alibaba/android/user/model/PositionData;->custom:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isCustomJobPosition:Z

    goto :goto_0

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    iget-object v0, v0, Lcom/alibaba/android/user/model/PositionData;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lfkr$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->H:Lfkr$a;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m()V

    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->t:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcir;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PositionData;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 528
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PositionData;>;"
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->w:Ljava/util/List;

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    if-nez v0, :cond_0

    .line 6097
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    const-string/jumbo v2, "dt_user"

    const-string/jumbo v3, "jobPosition"

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$13;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    .line 6098
    invoke-static {v1, v4, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    .line 6097
    invoke-interface {v0, v2, v3, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 559
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 564
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
    .line 544
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;>;"
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 573
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
    .line 479
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/UserBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 480
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/16 v2, 0x3e9

    if-ne p1, v2, :cond_4

    .line 484
    const-string/jumbo v2, "intent_key_team_scale_object"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;

    .line 485
    .local v1, "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    if-eqz v1, :cond_0

    .line 488
    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->id:I

    iput v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->y:I

    .line 489
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;->text:Ljava/lang/String;

    .line 490
    .local v0, "orgScaleText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 493
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    :cond_2
    sget v2, Lezg$l;->input_optional:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    .end local v0    # "orgScaleText":Ljava/lang/String;
    .end local v1    # "teamScaleObject":Lcom/alibaba/android/dingtalk/userbase/model/TeamScaleObject;
    :cond_4
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_0

    .line 498
    const-string/jumbo v2, "intent_key_selected_position"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/model/PositionData;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->z:Lcom/alibaba/android/user/model/PositionData;

    .line 499
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->m()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 440
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 441
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->E:Z

    if-nez v2, :cond_0

    .line 442
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->E:Z

    .line 5590
    const-class v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$22;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$22;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 446
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->C:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "pref_key_create_team_promote_shown"

    .line 447
    invoke-static {p0, v2, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 449
    .local v0, "showCreateOrgPromote":Z
    :cond_1
    if-eqz v0, :cond_3

    .line 450
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->o:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    if-nez v2, :cond_2

    .line 451
    new-instance v2, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->o:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    .line 453
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->o:Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;

    invoke-virtual {v2}, Lcom/alibaba/android/user/widget/CreateOrgPromoteDialog;->show()V

    .line 455
    const-string/jumbo v2, "pref_key_create_team_promote_shown"

    invoke-static {p0, v2, v1}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 457
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 505
    .line 6043
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6044
    sget v1, Lezg$l;->settings_org_add_member_quit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6045
    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$10;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6087
    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$11;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$11;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 6093
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 506
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 190
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    sget v0, Lezg$j;->activity_create_org_v4:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->setContentView(I)V

    .line 192
    new-instance v0, Lfks;

    invoke-direct {v0, p0, p0}, Lfks;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfkr$b;)V

    .line 2217
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2221
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->B:Ljava/lang/String;

    .line 2222
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->x:Ljava/lang/String;

    .line 2223
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_org_create_promote"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->C:Z

    .line 2228
    :cond_0
    sget v0, Lezg$h;->tv_create_org_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2229
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2230
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2235
    :goto_0
    sget v0, Lezg$h;->create_org_helper:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2245
    sget v0, Lezg$h;->et_org_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    .line 2246
    new-instance v0, Lfky;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {v0, v1, p0}, Lfky;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->e:Lfky;

    .line 2248
    new-array v0, v5, [Landroid/text/InputFilter;

    .line 2249
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "pref_key_create_org_name_limit"

    const/16 v4, 0x32

    .line 2250
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2249
    invoke-static {v2, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v6

    .line 2251
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2750
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2751
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2752
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3260
    :cond_1
    sget v0, Lezg$h;->rl_org_industry:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d:Landroid/view/View;

    .line 3261
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$12;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3269
    sget v0, Lezg$h;->tv_org_industry_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->f:Landroid/widget/TextView;

    .line 3274
    sget v0, Lezg$h;->rl_org_scale:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->g:Landroid/view/View;

    .line 3275
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$17;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3284
    sget v0, Lezg$h;->tv_org_scale_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h:Landroid/widget/TextView;

    .line 3289
    sget v0, Lezg$h;->rl_org_region:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i:Landroid/view/View;

    .line 3290
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$18;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3306
    sget v0, Lezg$h;->tv_org_region_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->j:Landroid/widget/TextView;

    .line 3311
    sget v0, Lezg$h;->rl_my_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k:Landroid/view/View;

    .line 3312
    sget v0, Lezg$h;->tv_my_position_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->l:Landroid/widget/TextView;

    .line 3314
    invoke-static {}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3315
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3316
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$19;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$19;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3335
    :goto_1
    sget v0, Lezg$h;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->n:Landroid/widget/Button;

    .line 3336
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->n:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3379
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 3381
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v0, :cond_3

    .line 3385
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;-><init>()V

    .line 3386
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    .line 3387
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    .line 3388
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "+"

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->stateCode:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    .line 3389
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    .line 3390
    iput-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdd:Z

    .line 3578
    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .line 3579
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->v:Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    iput-boolean v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->isAdmin:Z

    .line 3393
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->u:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3394
    :cond_2
    iput-boolean v5, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->D:Z

    .line 4400
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->F:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4

    .line 4404
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$21;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->F:Landroid/content/BroadcastReceiver;

    .line 4431
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4432
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4433
    const-string/jumbo v1, "action_key_select_org_type"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4434
    const-string/jumbo v1, "selector_region"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4435
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 205
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->j()V

    .line 5175
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    if-nez v0, :cond_5

    .line 5176
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$14;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    .line 5197
    :cond_5
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v6

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$15;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-static {p0, v5, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 207
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->h()V

    .line 208
    invoke-static {}, Lflr;->g()V

    .line 5228
    sget v0, Lezg$h;->ll_create_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$16;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$16;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    const-string/jumbo v0, "org_create_step1_page_enter"

    invoke-static {p0, v0}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 213
    return-void

    .line 2232
    :cond_6
    sget v1, Lezg$l;->dt_contact_createorg_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 3329
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 461
    const/4 v1, 0x1

    sget v2, Lezg$l;->dt_create_org_fill_invite_code:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 462
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 463
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->F:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 512
    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->F:Landroid/content/BroadcastReceiver;

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    if-eqz v0, :cond_1

    .line 516
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->a(Landroid/content/Context;)Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/amap/LocationProxy;->b(Lcir;)V

    .line 517
    iput-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->G:Lcir;

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->I:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->I:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->I:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 523
    :cond_2
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 524
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->onBackPressed()V

    .line 474
    :goto_0
    return v0

    .line 471
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 5722
    const-string/jumbo v1, "contact_create_team_fill_in_invitecode_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 5723
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5724
    sget v2, Lezg$l;->input_optional:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 5725
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5726
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->A:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->inviteCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5728
    :cond_1
    new-array v2, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v0

    .line 5729
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 5730
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 5731
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5732
    sget v3, Lezg$l;->dt_create_org_fill_invite_code:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5733
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5734
    sget v3, Lezg$l;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5735
    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$3;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5745
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5746
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 474
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 101
    check-cast p1, Lfkr$a;

    .line 7548
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->H:Lfkr$a;

    .line 101
    return-void
.end method
