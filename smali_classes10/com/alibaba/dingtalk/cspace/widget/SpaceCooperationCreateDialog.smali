.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog;
.source "SpaceCooperationCreateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/EditText;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/content/Context;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lgit;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field private q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private t:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

.field private u:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 60
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->q:Ljava/lang/String;

    .line 70
    const-class v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->r:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->u:Landroid/widget/PopupWindow;

    .line 83
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 86
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    sget v1, Lfzs$h;->dt_cspace_co_folder_org_picker_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->q:Ljava/lang/String;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    .line 1295
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

    if-nez v0, :cond_0

    .line 1298
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->o:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

    .line 1299
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1312
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->k:Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListViewHasMaxHeight;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->p:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 44
    .line 1399
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1442
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v0, :cond_0

    .line 1443
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1444
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_mail_please_wait:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1404
    :cond_1
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V

    const-class v5, Lcma;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->h:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v3, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 1435
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lgop;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZLcma;)V

    .line 44
    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->t:Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog$a;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    .line 1452
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->s:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;)Lcma;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceCooperationCreateDialog;->n:Lcma;

    return-object v0
.end method
