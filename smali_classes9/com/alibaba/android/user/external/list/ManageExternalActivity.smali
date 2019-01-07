.class public Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ManageExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/android/user/external/ExternalEditContract$c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/view/ViewGroup;

.field private D:Landroid/view/View;

.field private E:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

.field private F:Landroid/view/View;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/ToggleButton;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/view/View;

.field private L:Landroid/widget/ToggleButton;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/ToggleButton;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/ToggleButton;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/view/View;

.field private U:Landroid/content/BroadcastReceiver;

.field private V:Lfnr;

.field private W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

.field private X:Lfnv$b;

.field private Y:Ljava/lang/String;

.field private Z:Landroid/content/BroadcastReceiver;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/EditText;

.field private o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/EditText;

.field private t:D

.field private u:D

.field private v:Landroid/widget/EditText;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    .line 781
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Y:Ljava/lang/String;

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k()V

    return-void
.end method

.method static synthetic B(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j()V

    return-void
.end method

.method static synthetic C(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lfnv$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n()V

    return-void
.end method

.method static synthetic E(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o()V

    return-void
.end method

.method static synthetic G(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    const/4 v0, 0x1

    .line 96
    .line 14395
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 14397
    if-eqz v1, :cond_1

    .line 14401
    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    if-eq v2, v0, :cond_0

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 14402
    :cond_0
    :goto_0
    return v0

    .line 14405
    :cond_1
    const/4 v0, 0x0

    .line 96
    goto :goto_0
.end method

.method static synthetic H(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # D

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t:D

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->U:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    const/4 v0, 0x0

    .line 96
    .line 13082
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13083
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 13090
    :cond_0
    :goto_0
    return-object v0

    .line 13085
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v1, :cond_0

    .line 13088
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 13089
    if-eqz v1, :cond_0

    .line 13092
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    .line 11208
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_1

    .line 11211
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b()Ljava/util/List;

    move-result-object v0

    .line 11212
    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11213
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->external_manage_no_org_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$12;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$12;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 11228
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 11233
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    .line 12788
    if-nez p1, :cond_0

    .line 12789
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Y:Ljava/lang/String;

    :goto_0
    return-void

    .line 12791
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Y:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "value"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 496
    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 526
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$2;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 96
    .line 13099
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->R:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13100
    const-string/jumbo v1, "Toggle unchecked"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13101
    :goto_0
    return v0

    .line 13103
    :cond_0
    const-class v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$14;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 13139
    const/4 v0, 0x1

    .line 96
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # D

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u:D

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->U:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    .line 14068
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14069
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->dt_contact_action_download:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$13;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 14070
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->login_cancel:I

    const/4 v2, 0x0

    .line 14076
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 96
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    .line 11543
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$3;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 96
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    const-wide/16 v4, 0x0

    .line 96
    .line 11560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11561
    const-string/jumbo v1, "return_location_image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11562
    new-instance v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;-><init>()V

    .line 11563
    sget v2, Lezg$g;->msg_select_location_mark:I

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->redId:I

    .line 11564
    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorX:F

    .line 11565
    const v2, -0x414ccccd    # -0.35f

    iput v2, v1, Lcom/alibaba/dingtalk/runtimebase/models/LocationMarker;->anchorY:F

    .line 11566
    const-string/jumbo v2, "location_center_marker"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11567
    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 11568
    const-string/jumbo v1, "EXTRA_LONGITUDE"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 11569
    const-string/jumbo v1, "EXTRA_LATITUDE"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 11571
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToLocationPage(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    .line 11757
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 11758
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11784
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Y:Ljava/lang/String;

    .line 11760
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11761
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11762
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 11764
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const-string/jumbo v4, "pref_key_friend_request_remark_limit"

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 11765
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lezg$l;->dt_contact_ext_friend_add_reason:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->ok:I

    new-instance v3, Lcom/alibaba/android/user/external/list/ManageExternalActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$7;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 11770
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 96
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    return-object v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 530
    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 5282
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v2, :cond_0

    .line 5286
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v2}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b()Ljava/util/List;

    move-result-object v2

    .line 5287
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 5288
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5289
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    .line 5290
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->V:Lfnr;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lfnr;->a(J)V

    .line 5291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    .line 5292
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5293
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 534
    :cond_0
    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    .line 12154
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12155
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->showLoadingDialog()V

    .line 12156
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$16;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    const-class v5, Lcma;

    invoke-static {v0, v5, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v2, v3, v4, v0}, Lezu;->b(JLjava/lang/String;Lcma;)V

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private j()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 606
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    if-eqz v6, :cond_6

    .line 607
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 609
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 610
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 611
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 612
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 613
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .line 614
    .local v3, "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    sget v6, Lezg$j;->activity_manage_external_custom_fd:I

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 615
    .local v5, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 616
    sget v6, Lezg$h;->fd_key:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 617
    .local v4, "tvName":Landroid/widget/TextView;
    iget-boolean v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v6, :cond_3

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :goto_1
    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 623
    sget v6, Lezg$h;->fd_value:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-boolean v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v7, :cond_4

    sget v7, Lezg$l;->input_required:I

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 625
    .end local v4    # "tvName":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 626
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 627
    .local v2, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 628
    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 629
    sget v6, Lezg$h;->fd_value:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .end local v2    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 620
    .restart local v4    # "tvName":Landroid/widget/TextView;
    :cond_3
    iget-object v6, v3, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 623
    :cond_4
    sget v7, Lezg$l;->input_optional:I

    goto :goto_2

    .line 638
    .end local v0    # "i":I
    .end local v1    # "l":I
    .end local v3    # "orgExtFieldObject":Lcom/alibaba/android/user/model/OrgExtFieldObject;
    .end local v4    # "tvName":Landroid/widget/TextView;
    .end local v5    # "v":Landroid/view/View;
    :cond_5
    iget-object v6, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    :cond_6
    return-void
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 681
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q()V

    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    .line 689
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->removeAllViews()V

    .line 690
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 692
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 693
    .local v0, "lo":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 694
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 695
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 696
    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 697
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 699
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 703
    .end local v0    # "lo":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 705
    :cond_2
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 721
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lfnv$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 722
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method private n()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 725
    iget-boolean v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CHANNEL_APPLY"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->c:Ljava/lang/String;

    .line 726
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ACTIVITY_IDENTIFY_CHANNEL_DETAIL_APPLY"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->c:Ljava/lang/String;

    .line 727
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Q:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_external_invite_to_focus_main_page:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 730
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->P:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_external_invite_to_focus_main_page_tip:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 731
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lezg$l;->guide_more:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 732
    .local v0, "more":Landroid/text/SpannableString;
    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$6;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 737
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 732
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 738
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->P:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 740
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->N:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->O:Landroid/widget/ToggleButton;

    const-string/jumbo v2, "pref_key_last_invite_channel_toggle_setting"

    invoke-static {v2, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 748
    .end local v0    # "more":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->N:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a()V

    .line 754
    :cond_0
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 774
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 775
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v0, :cond_0

    .line 776
    const-string/jumbo v1, ""

    .line 778
    :goto_0
    return-object v1

    :cond_0
    sget v1, Lezg$l;->dt_contact_add_request_at2:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    .line 14143
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$15;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method private q()V
    .locals 18

    .prologue
    .line 863
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_0

    .line 864
    const-string/jumbo v13, "orgid<0"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    sget v13, Lezg$l;->dt_external_selected_org_tip:I

    invoke-static {v13}, Lcms;->a(I)V

    .line 1065
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v13, v14, v15}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    .line 870
    .local v2, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-nez v2, :cond_1

    .line 871
    const-string/jumbo v13, "currentUser is null"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    sget v13, Lezg$l;->dt_external_selected_org_tip:I

    invoke-static {v13}, Lcms;->a(I)V

    goto :goto_0

    .line 876
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v13, :cond_7

    .line 877
    new-instance v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v13}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    iput-wide v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v14, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 881
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    iput-wide v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 890
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 891
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 892
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 893
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    .line 895
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t:D

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u:D

    const-wide/16 v16, 0x0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_8

    .line 896
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u:D

    move-wide/from16 v16, v0

    invoke-static/range {v13 .. v17}, Lfnn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;DD)V

    .line 900
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    .line 902
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_9

    .line 903
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    if-nez v13, :cond_3

    .line 904
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    .line 906
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 907
    .local v7, "l":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v7, :cond_9

    .line 908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 909
    .local v11, "v":Landroid/view/View;
    sget v13, Lezg$h;->fd_key:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 910
    .local v6, "key":Ljava/lang/String;
    sget v13, Lezg$h;->fd_value:I

    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 911
    .local v12, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 913
    .local v4, "found":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    .line 914
    .local v8, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    if-eqz v8, :cond_4

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    if-eqz v14, :cond_4

    iget-object v14, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 915
    iput-object v12, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    .line 916
    const/4 v4, 0x1

    .line 921
    .end local v8    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_5
    if-nez v4, :cond_6

    .line 922
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;-><init>()V

    .line 923
    .restart local v8    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    iput-object v6, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemName:Ljava/lang/String;

    .line 924
    iput-object v12, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;->itemValue:Ljava/lang/String;

    .line 925
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->extPropertyObjectList:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v8    # "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgExtPropertyObject;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 883
    .end local v4    # "found":Z
    .end local v5    # "i":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "l":I
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "value":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    iput-wide v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 884
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-nez v13, :cond_2

    .line 885
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 886
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v14, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    iput-wide v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    goto/16 :goto_1

    .line 898
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v13}, Lfnn;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)V

    goto/16 :goto_2

    .line 929
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_c

    .line 930
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    .line 934
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_11

    .line 935
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    const/4 v14, 0x1

    iput v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permissionType:I

    .line 937
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    .line 938
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    .line 939
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 940
    .local v10, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 941
    .local v9, "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v14, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 942
    new-instance v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v14}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    iput-object v14, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 943
    iget-object v14, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    .line 944
    iget-object v14, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v15, v10, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iput-object v15, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 945
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 932
    .end local v9    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .end local v10    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    goto/16 :goto_4

    .line 948
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_e

    .line 949
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 950
    .local v3, "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 951
    .restart local v9    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    sget-object v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v14, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 952
    iput-object v3, v9, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 953
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 957
    .end local v3    # "deptObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;
    .end local v9    # "object":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v13

    if-nez v13, :cond_f

    .line 958
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    invoke-interface {v13}, Lfnv$b;->e()V

    .line 964
    :cond_f
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v13

    if-nez v13, :cond_10

    .line 965
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    invoke-virtual {v14}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v14

    iput-boolean v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendFriendRequest:Z

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-boolean v13, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendFriendRequest:Z

    if-eqz v13, :cond_10

    .line 967
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Y:Ljava/lang/String;

    .line 7797
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 967
    :goto_8
    iput-object v13, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->friendRequestRemark:Ljava/lang/String;

    .line 971
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->L:Landroid/widget/ToggleButton;

    invoke-virtual {v14}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v14

    iput-boolean v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendActiveMessage:Z

    .line 972
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->O:Landroid/widget/ToggleButton;

    invoke-virtual {v14}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v14

    iput-boolean v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteChannel:Z

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-nez v13, :cond_13

    .line 975
    const-string/jumbo v13, "mPresenter is null"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 961
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    goto :goto_7

    .line 7800
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p()Ljava/lang/String;

    move-result-object v13

    goto :goto_8

    .line 979
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Z)Z

    move-result v13

    if-nez v13, :cond_14

    .line 980
    const-string/jumbo v13, "verifyFields failed"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    const-string/jumbo v13, "bh_external_add_error_illegal"

    invoke-static {v13}, Lfxo;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 985
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_16

    .line 986
    :cond_15
    const-string/jumbo v13, "no tag"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    sget v13, Lezg$l;->dt_external_contact_add_label_hint:I

    invoke-static {v13}, Lcms;->a(I)V

    .line 988
    const-string/jumbo v13, "bh_external_add_error_no_labels"

    invoke-static {v13}, Lfxo;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->showLoadingDialog()V

    .line 993
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v13

    if-nez v13, :cond_17

    .line 994
    const-string/jumbo v13, "start addContact"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v13, Lcom/alibaba/android/user/external/list/ManageExternalActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$10;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    const-class v16, Lcma;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v13, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcma;

    invoke-interface {v14, v15, v13}, Lezu;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V

    goto/16 :goto_0

    .line 1030
    :cond_17
    const-string/jumbo v13, "start updateContact"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    new-instance v13, Lcom/alibaba/android/user/external/list/ManageExternalActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$11;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    const-class v16, Lcma;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v13, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcma;

    invoke-interface {v14, v15, v13}, Lezu;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcma;)V

    goto/16 :goto_0
.end method

.method static synthetic r(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->l()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic w(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    return-wide v0
.end method

.method static synthetic y(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lfnr;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->V:Lfnr;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->dismissLoadingDialog()V

    .line 1462
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 1437
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V
    .locals 5
    .param p1, "contactFieldsObject"    # Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1410
    if-eqz p1, :cond_10

    .line 1411
    iget-object v0, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1412
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    .line 1413
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j()V

    .line 9644
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    instance-of v0, v0, Lfno;

    if-eqz v0, :cond_4

    .line 9648
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    check-cast v0, Lfno;

    .line 10049
    iget-object v1, v0, Lfno;->a:Lcom/alibaba/android/user/model/ExtContactFieldsObject;

    .line 9649
    if-eqz v1, :cond_4

    .line 9653
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_0

    .line 9654
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    .line 9655
    invoke-static {v0}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9654
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9656
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p:Landroid/widget/EditText;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_7

    sget v0, Lezg$l;->input_required:I

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 9658
    :cond_0
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_1

    .line 9659
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->y:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    .line 9660
    invoke-static {v0}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9659
    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9661
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q:Landroid/widget/EditText;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_9

    sget v0, Lezg$l;->input_required:I

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 9663
    :cond_1
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_2

    .line 9664
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->z:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    .line 9665
    invoke-static {v0}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9664
    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9666
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_b

    sget v0, Lezg$l;->input_required:I

    :goto_6
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string/jumbo v4, ", "

    aput-object v4, v3, v0

    const/4 v0, 0x2

    sget v4, Lezg$l;->dt_cntact_exContact_select_location:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9668
    :cond_2
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_3

    .line 9669
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->A:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    .line 9670
    invoke-static {v0}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9669
    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9671
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->v:Landroid/widget/EditText;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_d

    sget v0, Lezg$l;->input_required:I

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 9673
    :cond_3
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    if-eqz v0, :cond_4

    .line 9674
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->B:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    .line 9675
    invoke-static {v0}, Lfls;->c(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9674
    :goto_9
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9676
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->w:Landroid/widget/EditText;

    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-boolean v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->required:Z

    if-eqz v0, :cond_f

    sget v0, Lezg$l;->input_required:I

    :goto_a
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 1419
    :cond_4
    iget-boolean v0, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->showInviteChannel:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k:Z

    .line 1420
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n()V

    .line 1427
    :goto_b
    return-void

    .line 1415
    :cond_5
    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    .line 1416
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j()V

    goto/16 :goto_0

    .line 9655
    :cond_6
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->companyField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    goto/16 :goto_1

    .line 9656
    :cond_7
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_2

    .line 9660
    :cond_8
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->titleField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    goto/16 :goto_3

    .line 9661
    :cond_9
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_4

    .line 9665
    :cond_a
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->workstationField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    goto/16 :goto_5

    .line 9666
    :cond_b
    sget v0, Lezg$l;->input_optional:I

    goto/16 :goto_6

    .line 9670
    :cond_c
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->mailField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    goto :goto_7

    .line 9671
    :cond_d
    sget v0, Lezg$l;->input_optional:I

    goto :goto_8

    .line 9675
    :cond_e
    iget-object v0, v1, Lcom/alibaba/android/user/model/ExtContactFieldsObject;->remarkField:Lcom/alibaba/android/user/model/OrgExtFieldObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgExtFieldObject;->name:Ljava/lang/String;

    goto :goto_9

    .line 9676
    :cond_f
    sget v0, Lezg$l;->input_optional:I

    goto :goto_a

    .line 1422
    :cond_10
    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j:Ljava/util/List;

    .line 1423
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j()V

    .line 1424
    iput-boolean v4, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k:Z

    .line 1425
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n()V

    goto :goto_b
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 1442
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1466
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->showLoadingDialog()V

    .line 1457
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 1447
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1471
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    const-string/jumbo v0, "contact_exter_addpage_back_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 815
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 816
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->select_org_button:I

    if-ne v0, v1, :cond_2

    .line 5300
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_1

    .line 5304
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b()Ljava/util/List;

    move-result-object v1

    .line 5305
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_1

    .line 5306
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5308
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5310
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5311
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5312
    sget v4, Lezg$l;->choose_from_enterprise:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    const/4 v2, -0x1

    new-instance v5, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;

    invoke-direct {v5, p0, v1, v3}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v0, v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5341
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 603
    :cond_1
    :goto_1
    return-void

    .line 578
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->delete_button:I

    if-ne v0, v1, :cond_3

    .line 579
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_external_delete_contact_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$5;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$4;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 584
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_1

    .line 591
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->label_button:I

    if-ne v0, v1, :cond_5

    .line 5347
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 5348
    sget v0, Lezg$l;->select_org_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 5352
    :cond_4
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/label_select.html"

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$19;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$19;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 593
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->share_button:I

    if-ne v0, v1, :cond_8

    .line 5369
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5370
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5371
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5372
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5373
    const-string/jumbo v0, "key_need_change_dept"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5374
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5375
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5376
    const-string/jumbo v0, "activity_identify"

    sget-object v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5377
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 5378
    const-string/jumbo v0, "seleced_members"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5380
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 5381
    const-string/jumbo v0, "seleced_departments"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5383
    :cond_7
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/org_contact.html"

    new-instance v3, Lcom/alibaba/android/user/external/list/ManageExternalActivity$20;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$20;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Landroid/os/Bundle;)V

    .line 5384
    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 595
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->invite_to_focus_org_homepage_toggle:I

    if-ne v0, v1, :cond_9

    .line 596
    const-string/jumbo v0, "pref_key_last_invite_channel_toggle_setting"

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->O:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 597
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->send_sms_toggle:I

    if-eq v0, v1, :cond_1

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->toggle_save_to_local_contact:I

    if-ne v0, v1, :cond_a

    .line 599
    const-string/jumbo v0, "pref_key_save_to_local_contact_while_add_external"

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->R:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 600
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->toggle_send_friend_request:I

    if-ne v0, v1, :cond_1

    .line 601
    const-string/jumbo v0, "ext_send_friend_request"

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x21

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 171
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    sget v0, Lezg$j;->activity_manage_external:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->setContentView(I)V

    .line 2252
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2253
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2254
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->c:Ljava/lang/String;

    .line 2255
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    .line 2256
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_show_channel"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k:Z

    .line 2257
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "employee_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2259
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_3

    .line 2260
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2261
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->g:Ljava/util/ArrayList;

    .line 2263
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2265
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    if-eqz v3, :cond_1

    .line 2266
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2267
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2268
    :cond_2
    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2269
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v3, :cond_1

    .line 2270
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_3
    new-instance v0, Lfno;

    iget-wide v4, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-direct {v0, p0, v4, v5, p0}, Lfno;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/user/external/ExternalEditContract$c;)V

    .line 3239
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3241
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3285
    :goto_1
    sget v0, Lezg$h;->select_org_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->l:Landroid/view/View;

    .line 3286
    sget v0, Lezg$h;->select_org_button_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m:Landroid/widget/TextView;

    .line 3287
    sget v0, Lezg$h;->comp_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p:Landroid/widget/EditText;

    .line 3288
    new-instance v1, Lfnr;

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p:Landroid/widget/EditText;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    invoke-direct {v1, v0, p0}, Lfnr;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->V:Lfnr;

    .line 3289
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i()V

    .line 3291
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->k()V

    .line 3294
    sget v0, Lezg$h;->name_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3296
    sget v0, Lezg$h;->mobile_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3298
    sget v0, Lezg$h;->label_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3302
    sget v0, Lezg$h;->name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n:Landroid/widget/EditText;

    .line 3303
    sget v0, Lezg$h;->mobile:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 3304
    sget v0, Lezg$h;->post_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q:Landroid/widget/EditText;

    .line 3305
    sget v0, Lezg$h;->address_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r:Landroid/widget/TextView;

    .line 3306
    sget v0, Lezg$h;->address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    .line 3307
    sget v0, Lezg$h;->mail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->v:Landroid/widget/EditText;

    .line 3308
    sget v0, Lezg$h;->notes:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->w:Landroid/widget/EditText;

    .line 3310
    sget v0, Lezg$h;->name_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x:Landroid/widget/TextView;

    .line 3311
    sget v0, Lezg$h;->name_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->y:Landroid/widget/TextView;

    .line 3312
    sget v0, Lezg$h;->name_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->z:Landroid/widget/TextView;

    .line 3313
    sget v0, Lezg$h;->name_email:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->A:Landroid/widget/TextView;

    .line 3314
    sget v0, Lezg$h;->name_remarks:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->B:Landroid/widget/TextView;

    .line 3316
    sget v0, Lezg$h;->iv_add_staff_contact_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3317
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3318
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3330
    :goto_2
    sget v0, Lezg$h;->address_select_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3331
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3332
    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$23;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$23;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3340
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_b

    .line 3341
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3342
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3344
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3345
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 3347
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3348
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3349
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearAble(Z)V

    .line 3350
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelected(Z)V

    .line 3351
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$24;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$24;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3363
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3364
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3366
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3367
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3369
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3370
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3371
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgWorkAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3373
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-static {v0}, Lfnn;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;)[D

    move-result-object v0

    .line 3374
    if-eqz v0, :cond_9

    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 3375
    aget-wide v4, v0, v6

    iput-wide v4, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t:D

    .line 3376
    aget-wide v0, v0, v8

    iput-wide v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->u:D

    .line 3377
    invoke-direct {p0, v6}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Z)V

    .line 3379
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3380
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->v:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3382
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3383
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3388
    :cond_b
    sget v0, Lezg$h;->custom_field_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C:Landroid/view/ViewGroup;

    .line 3389
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->j()V

    .line 3392
    sget v0, Lezg$h;->label_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->D:Landroid/view/View;

    .line 3393
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->D:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3394
    sget v0, Lezg$h;->label_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->E:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 3395
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->l()V

    .line 3398
    sget v0, Lezg$h;->share_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->F:Landroid/view/View;

    .line 3399
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->F:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3402
    sget v0, Lezg$h;->ll_send_friend_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->H:Landroid/view/View;

    .line 3403
    sget v0, Lezg$h;->toggle_send_friend_request:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    .line 3404
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    const-string/jumbo v1, "ext_send_friend_request"

    invoke-static {v1, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3405
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3406
    sget v0, Lezg$h;->ll_send_friend_request_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->J:Landroid/widget/TextView;

    .line 3407
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lezg$l;->dt_contact_ext_friend_add_reason:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3408
    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$25;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$25;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 3413
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 3408
    invoke-virtual {v0, v1, v6, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3414
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 3415
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->J:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3416
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3417
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->H:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3418
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3422
    :cond_c
    sget v0, Lezg$h;->send_sms:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->K:Landroid/view/View;

    .line 3423
    sget v0, Lezg$h;->send_sms_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->L:Landroid/widget/ToggleButton;

    .line 3424
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->L:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3425
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->L:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3426
    sget v0, Lezg$h;->send_sms_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->M:Landroid/widget/TextView;

    .line 3427
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lezg$l;->dt_external_invite_remind_message_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3428
    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$26;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$26;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 3435
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 3428
    invoke-virtual {v0, v1, v6, v3, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3436
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 3437
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->M:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3440
    sget v0, Lezg$h;->invite_to_focus_org_homepage:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->N:Landroid/view/View;

    .line 3441
    sget v0, Lezg$h;->invite_to_focus_org_homepage_toggle:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->O:Landroid/widget/ToggleButton;

    .line 3442
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->O:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3443
    sget v0, Lezg$h;->invite_to_focus_org_homepage_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->P:Landroid/widget/TextView;

    .line 3444
    sget v0, Lezg$h;->tv_invite_to_focus_org_homepage_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Q:Landroid/widget/TextView;

    .line 3445
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->n()V

    .line 3448
    sget v0, Lezg$h;->toggle_save_to_local_contact:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->R:Landroid/widget/ToggleButton;

    .line 3449
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->R:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3450
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->R:Landroid/widget/ToggleButton;

    const-string/jumbo v1, "pref_key_save_to_local_contact_while_add_external"

    invoke-static {v1, v8}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 3453
    sget v0, Lezg$h;->name_card:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->S:Landroid/widget/ImageView;

    .line 3454
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_d

    .line 3455
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3457
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3459
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 3466
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3467
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->S:Landroid/widget/ImageView;

    invoke-interface {v0, v3, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 3469
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->S:Landroid/widget/ImageView;

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$27;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3481
    :cond_d
    sget v0, Lezg$h;->delete_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->T:Landroid/view/View;

    .line 3482
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->T:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3483
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 3485
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_e

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->mIsAdmin:Z

    if-nez v0, :cond_15

    .line 3486
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->T:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3492
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->V:Lfnr;

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lfnr;->a(J)V

    .line 4184
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Z:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_f

    .line 4185
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_key_select_labels"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4186
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4187
    const-string/jumbo v1, "com.workapp.action.poi_info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4188
    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$17;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Z:Landroid/content/BroadcastReceiver;

    .line 4267
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 180
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->o()V

    .line 182
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-nez v0, :cond_10

    .line 183
    const-string/jumbo v0, "contact_exter_addpage_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 4708
    :cond_10
    sget v0, Lezg$h;->share_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->G:Landroid/widget/TextView;

    .line 4709
    sget v0, Lezg$h;->select_share_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4710
    new-instance v1, Lfny;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->G:Landroid/widget/TextView;

    invoke-direct {v1, p0, v0, v2}, Lfny;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    .line 4711
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4713
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->m()V

    :goto_5
    return-void

    .line 3243
    :cond_11
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3244
    sget v0, Lezg$l;->dt_external_edit_contact_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 3246
    :cond_12
    sget v0, Lezg$l;->dt_external_add_contact_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 3320
    :cond_13
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3321
    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$22;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$22;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 3460
    :catch_0
    move-exception v0

    .line 3461
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v1, v2

    .line 3462
    goto/16 :goto_3

    .line 3464
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->bizCardMediaId:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_3

    .line 3488
    :cond_15
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->T:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 4715
    :cond_16
    new-instance v0, Lfnx;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    invoke-direct {v0, p0, v1}, Lfnx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfnv$b;)V

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lfnx;->a(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    .line 4716
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    invoke-interface {v0}, Lfnv$b;->a()V

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 820
    const/4 v1, 0x1

    sget v2, Lezg$l;->save:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 821
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 822
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 805
    .line 6272
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 6273
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 6275
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->U:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 6276
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->U:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->X:Lfnv$b;

    invoke-interface {v0}, Lfnv$b;->f()V

    .line 807
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 808
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 827
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    const-string/jumbo v0, "contact_exter_addpage_back_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 832
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 833
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 834
    const-string/jumbo v0, "contact_exter_addpage_save_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 836
    :cond_1
    const-string/jumbo v0, "click save menu"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6843
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->h()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ext_send_friend_request_tip_flag"

    invoke-static {v0, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->I:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6844
    const-string/jumbo v0, "ext_send_friend_request_tip_flag"

    invoke-static {v0, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 6845
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_contact_ext_add_friend_open:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$9;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$9;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->ok:I

    new-instance v2, Lcom/alibaba/android/user/external/list/ManageExternalActivity$8;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$8;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 6850
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 6856
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 839
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 6858
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->q()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onResume()V

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$1;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 202
    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 10451
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->W:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 96
    return-void
.end method
