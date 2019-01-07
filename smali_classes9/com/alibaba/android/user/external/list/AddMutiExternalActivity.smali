.class public Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/android/user/external/ExternalEditContract$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;,
        Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$JumpFromUserContactLogic;,
        Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/content/BroadcastReceiver;

.field private C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

.field private D:Lfnv$b;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/external/ExternalEditContract$a;",
            ">;"
        }
    .end annotation
.end field

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

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/user/model/OrgExtFieldObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/BaseAdapter;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ToggleButton;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/ToggleButton;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->b:I

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    .line 881
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
    .param p1, "x1"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    .line 9391
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lfnv$b;->a(Ljava/util/List;Ljava/util/List;)V

    .line 77
    return-void
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    return-object v0
.end method

.method private i()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    .line 364
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->removeAllViews()V

    .line 365
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 367
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

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

    .line 368
    .local v0, "lo":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v3, v7, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 371
    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 372
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 378
    .end local v0    # "lo":Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 380
    :cond_2
    return-void
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 395
    iget-boolean v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->x:Landroid/widget/ToggleButton;

    const-string/jumbo v1, "pref_key_last_invite_channel_toggle_setting"

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lfnv$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a()V

    .line 409
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j()V

    return-void
.end method

.method private l()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 625
    const/4 v0, 0x1

    .line 626
    .local v0, "verified":Z
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->a(Ljava/util/List;)Z

    move-result v0

    .line 628
    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->A:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->supportInvalidateOptionsMenu()V

    .line 636
    return v0

    .line 628
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k()V

    return-void
.end method

.method static synthetic o(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    const/4 v0, 0x1

    .line 77
    .line 9759
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 9760
    if-eqz v1, :cond_1

    .line 9763
    iget v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    if-eq v2, v0, :cond_0

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->role:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9764
    :cond_0
    :goto_0
    return v0

    .line 9766
    :cond_1
    const/4 v0, 0x0

    .line 77
    goto :goto_0
.end method

.method static synthetic p(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->dismissLoadingDialog()V

    .line 821
    return-void
.end method

.method public final a(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 796
    return-void
.end method

.method public final a(Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;)V
    .locals 2
    .param p1, "contactFieldsObject"    # Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 771
    if-eqz p1, :cond_1

    .line 772
    iget-object v0, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->customFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j:Ljava/util/ArrayList;

    .line 777
    :goto_0
    iget-boolean v0, p1, Lcom/alibaba/android/user/external/ExternalEditContract$ContactFieldsObjectData;->showInviteChannel:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k:Z

    .line 778
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j()V

    .line 785
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l()Z

    .line 786
    return-void

    .line 775
    :cond_0
    iput-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j:Ljava/util/ArrayList;

    goto :goto_0

    .line 780
    :cond_1
    iput-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j:Ljava/util/ArrayList;

    .line 781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k:Z

    .line 782
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j()V

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 801
    return-void
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->showLoadingDialog()V

    .line 816
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/model/OrgExtFieldObject;)V
    .locals 0
    .param p1, "fieldObject"    # Lcom/alibaba/android/user/model/OrgExtFieldObject;

    .prologue
    .line 806
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 830
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    const-string/jumbo v0, "Contacts_Add_ExtMember_Batch"

    return-object v0
.end method

.method protected getPageSpmCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    const-string/jumbo v0, "a2o5v.12314432"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_0

    .line 192
    const-string/jumbo v3, "employee_info"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 193
    .local v1, "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    .line 194
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 196
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    .line 197
    .local v2, "objectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    if-eqz v2, :cond_1

    .line 200
    iget-object v3, v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    new-instance v4, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    invoke-direct {v4, v1}, Lcom/alibaba/android/user/external/ExternalEditContract$a;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 204
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l()Z

    .line 211
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v2    # "objectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    :cond_0
    return-void

    .line 195
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .restart local v2    # "objectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 146
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onAttachedToWindow()V

    .line 147
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5156
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_1

    .line 5159
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b()Ljava/util/List;

    move-result-object v0

    .line 5160
    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5161
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->external_manage_no_org_tip:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->sure:I

    new-instance v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$3;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->cancel:I

    new-instance v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$1;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 5166
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5171
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 414
    const-string/jumbo v0, "exter_list_add_mobile_lotscontact_cancel"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 415
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

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->select_org_button:I

    if-ne v0, v1, :cond_3

    .line 5664
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_2

    .line 5668
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b()Ljava/util/List;

    move-result-object v1

    .line 5669
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 5670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5671
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 5672
    if-eqz v0, :cond_0

    .line 5673
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5676
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5677
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5678
    sget v4, Lezg$l;->choose_from_enterprise:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    const/4 v2, -0x1

    new-instance v5, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;

    invoke-direct {v5, p0, v1, v3}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$9;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v4, v0, v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5706
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 323
    :cond_2
    :goto_1
    return-void

    .line 313
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->add_external:I

    if-ne v0, v1, :cond_4

    .line 6326
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_contact.html"

    new-instance v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$6;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 315
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->label_button:I

    if-ne v0, v1, :cond_6

    .line 6712
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    .line 6713
    sget v0, Lezg$l;->dt_external_selected_org_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_1

    .line 6717
    :cond_5
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/label_select.html"

    new-instance v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$10;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$10;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1

    .line 317
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->share_button:I

    if-ne v0, v1, :cond_9

    .line 6734
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6735
    const-string/jumbo v0, "choose_mode"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6736
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6737
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6738
    const-string/jumbo v0, "key_need_change_dept"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6739
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6740
    const-string/jumbo v0, "hide_org_external"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6741
    const-string/jumbo v0, "activity_identify"

    sget-object v2, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6742
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 6743
    const-string/jumbo v0, "seleced_members"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6745
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 6746
    const-string/jumbo v0, "seleced_departments"

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6748
    :cond_8
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/org_contact.html"

    new-instance v3, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$2;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;Landroid/os/Bundle;)V

    .line 6749
    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_1

    .line 319
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->invite_to_focus_org_homepage_toggle:I

    if-ne v0, v1, :cond_a

    .line 320
    const-string/jumbo v0, "pref_key_last_invite_channel_toggle_setting"

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->x:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 321
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/16 v10, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    sget v0, Lezg$j;->activity_add_muti_external:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->setContentView(I)V

    .line 1176
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1177
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1179
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->c:Ljava/lang/String;

    .line 1180
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "org_id"

    invoke-virtual {v0, v3, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    .line 1181
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "employee_info"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1182
    if-eqz v0, :cond_0

    .line 1183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    .line 1184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1185
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    new-instance v5, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    invoke-direct {v5, v0}, Lcom/alibaba/android/user/external/ExternalEditContract$a;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lfno;

    iget-wide v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    invoke-direct {v0, p0, v4, v5, p0}, Lfno;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;JLcom/alibaba/android/user/external/ExternalEditContract$c;)V

    .line 2214
    sget v0, Lezg$h;->ll_header_banner_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->A:Landroid/view/View;

    .line 2215
    sget v0, Lezg$h;->tv_tips_content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2216
    sget v3, Lezg$l;->and_external_required_field_missing_tip_prefix:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2217
    sget v4, Lezg$l;->and_external_required_field_missing_tip_suffix:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2218
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v2

    const-string/jumbo v3, " "

    aput-object v3, v5, v1

    const/4 v3, 0x2

    aput-object v4, v5, v3

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2219
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2220
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lezg$g;->icon_edit_red:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2221
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v6, v2, v2, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2222
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2223
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, v6, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v6, v3, -0x1

    const/16 v7, 0x11

    invoke-virtual {v5, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2225
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l:Landroid/widget/ListView;

    .line 1232
    sget v0, Lezg$j;->activity_add_muti_external_header:I

    invoke-static {p0, v0, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1233
    sget v3, Lezg$j;->activity_add_muti_external_footer:I

    invoke-static {p0, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1234
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1235
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1236
    new-instance v4, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$a;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;B)V

    iput-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m:Landroid/widget/BaseAdapter;

    .line 1237
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->m:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1239
    sget v4, Lezg$h;->select_org_button:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->n:Landroid/view/View;

    .line 1240
    sget v4, Lezg$h;->select_org_button_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->o:Landroid/widget/TextView;

    .line 1242
    iget-wide v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    cmp-long v0, v4, v12

    if-lez v0, :cond_3

    .line 1243
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h()V

    .line 1254
    sget v0, Lezg$h;->add_external:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1255
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1258
    sget v0, Lezg$h;->label_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "<font color=\"#ff4141\">*</font>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    sget v0, Lezg$h;->label_button:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->p:Landroid/view/View;

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    sget v0, Lezg$h;->label_layout:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->q:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 1265
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i()V

    .line 1268
    sget v0, Lezg$h;->share_button:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->r:Landroid/view/View;

    .line 1269
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    sget v0, Lezg$h;->send_sms:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->t:Landroid/view/View;

    .line 1273
    sget v0, Lezg$h;->send_sms_toggle:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->u:Landroid/widget/ToggleButton;

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    sget v0, Lezg$h;->send_sms_tip:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->v:Landroid/widget/TextView;

    .line 1277
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lezg$l;->dt_external_invite_remind_message_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1278
    new-instance v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$4;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 1285
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    .line 1278
    invoke-virtual {v0, v1, v2, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1286
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->v:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1290
    sget v0, Lezg$h;->invite_to_focus_org_homepage:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->w:Landroid/view/View;

    .line 1291
    sget v0, Lezg$h;->invite_to_focus_org_homepage_toggle:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->x:Landroid/widget/ToggleButton;

    .line 1292
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->x:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1293
    sget v0, Lezg$h;->invite_to_focus_org_homepage_title:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->y:Landroid/widget/TextView;

    .line 1294
    sget v0, Lezg$h;->invite_to_focus_org_homepage_tip:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->z:Landroid/widget/TextView;

    .line 1295
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->y:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_external_invite_to_focus_main_page:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->z:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_external_invite_to_focus_main_page_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1297
    new-instance v0, Landroid/text/SpannableString;

    sget v1, Lezg$l;->guide_more:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1298
    new-instance v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$5;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    .line 1303
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 1298
    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1304
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->z:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1306
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->j()V

    .line 3561
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->B:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 3562
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_key_select_labels"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3563
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3564
    new-instance v1, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$8;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->B:Landroid/content/BroadcastReceiver;

    .line 3620
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 138
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->k()V

    .line 4383
    sget v0, Lezg$h;->share_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->s:Landroid/widget/TextView;

    .line 4384
    sget v0, Lezg$h;->select_share_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4385
    new-instance v1, Lfny;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->s:Landroid/widget/TextView;

    invoke-direct {v1, p0, v0, v2}, Lfny;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    .line 4386
    new-instance v0, Lfnx;

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    invoke-direct {v0, p0, v1}, Lfnx;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lfnv$b;)V

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3}, Lfnx;->a(Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V

    .line 4387
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    invoke-interface {v0}, Lfnv$b;->a()V

    .line 141
    const-string/jumbo v0, "exter_list_add_mobile_lotscontact_view"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 142
    return-void

    .line 2647
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    if-eqz v0, :cond_4

    .line 2651
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    invoke-interface {v0}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b()Ljava/util/List;

    move-result-object v0

    .line 2652
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 2653
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2654
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->f:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    .line 2655
    iput-object v9, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    .line 2656
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2657
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 1246
    :goto_2
    if-nez v0, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 2660
    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    sget v1, Lezg$l;->save:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 427
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 428
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 429
    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 433
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 431
    :cond_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 419
    .line 7640
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->B:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 7641
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    invoke-interface {v0}, Lfnv$b;->f()V

    .line 421
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 422
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 438
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 439
    const-string/jumbo v0, "exter_list_add_mobile_lotscontact_save"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 8448
    iget-wide v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 8449
    sget v0, Lezg$l;->dt_external_selected_org_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 442
    :cond_0
    :goto_0
    const-string/jumbo v0, "Save"

    const-string/jumbo v1, "a2o5v.12314432.1.Save"

    invoke-static {v10, v0, v10, v1}, Lcom/alibaba/doraemon/impl/statistics/ut/DoraemonUT;->uploadClickProps(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 444
    :cond_1
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 8452
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 8457
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 8458
    if-nez v1, :cond_3

    .line 8459
    const-string/jumbo v0, "current OrgEmployeeExtension is null"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8463
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8464
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    .line 8465
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v4, :cond_4

    .line 8466
    iget-object v4, v0, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8467
    iget-wide v6, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 8468
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 8469
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    iput-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgStaffId:Ljava/lang/String;

    .line 8470
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->follower:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v6, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    iput-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 8471
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 8472
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    .line 8476
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 8477
    :cond_6
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;-><init>()V

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    .line 8478
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iput v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permissionType:I

    .line 8479
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    .line 8480
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 8481
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 8482
    if-eqz v0, :cond_7

    .line 8483
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 8484
    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->EMPLOYEE:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 8485
    new-instance v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;-><init>()V

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 8486
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iput-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    .line 8487
    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iput-object v0, v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    .line 8488
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 8474
    :cond_8
    iput-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->labels:Ljava/util/List;

    goto :goto_2

    .line 8492
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 8493
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 8494
    if-eqz v0, :cond_a

    .line 8495
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 8496
    sget-object v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 8497
    iput-object v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 8498
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmpPermissionObject;->permits:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 8503
    :cond_b
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->D:Lfnv$b;

    invoke-interface {v0}, Lfnv$b;->e()V

    .line 8505
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->u:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->sendActiveMessage:Z

    .line 8506
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->x:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->inviteChannel:Z

    .line 8508
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 8512
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8513
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 8514
    :cond_e
    sget v0, Lezg$l;->dt_external_contact_add_label_hint:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 8518
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->showLoadingDialog()V

    .line 8519
    invoke-static {}, Lfao;->a()Lezu;

    move-result-object v1

    iget-wide v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->d:J

    new-instance v0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$7;-><init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v1, v4, v5, v2, v0}, Lezu;->a(JLjava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 8556
    :cond_10
    sget v0, Lezg$l;->dt_external_required_field_missing_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 8810
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->C:Lcom/alibaba/android/user/external/ExternalEditContract$b;

    .line 77
    return-void
.end method
