.class public Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "ScanLiveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:I

.field private p:Landroid/animation/ObjectAnimator;

.field private q:Ljjx;

.field private r:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->s:I

    .line 378
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->s:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;)Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->r:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;Ljjx;)Ljjx;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
    .param p1, "x1"    # Ljjx;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "stringId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 355
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 357
    sget v1, Lbtp$g;->sure:I

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 364
    sget v1, Lbtp$g;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;IIZ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 44
    .line 9450
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 9451
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 9452
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->j:Landroid/view/View;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    return-void

    .line 9452
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->s:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Ljjx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->r:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    .line 6369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->n:Z

    .line 6370
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    if-eqz v0, :cond_0

    .line 6371
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    const-string/jumbo v1, "9527"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljjx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->o:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    .line 7340
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7343
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l:Landroid/widget/TextView;

    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->s:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    sget v0, Lbtp$g;->dt_lv_live_code_level_high:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 44
    :cond_0
    return-void

    .line 7343
    :cond_1
    sget v0, Lbtp$g;->dt_lv_live_code_level_standard:I

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    .line 8331
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    invoke-virtual {v0}, Ljjx;->f()Z

    move-result v0

    .line 9104
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    if-eqz v1, :cond_0

    .line 9105
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    invoke-virtual {v1}, Ljjx;->c()V

    .line 9106
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->r:Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$a;

    invoke-virtual {v1, v2}, Ljjx;->b(Ljjx$b;)V

    .line 9108
    :cond_0
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    invoke-virtual {v1}, Lbtq;->e()V

    .line 8333
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a()V

    .line 8334
    if-nez v0, :cond_1

    .line 8335
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    invoke-virtual {v0}, Ljjx;->e()V

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    .line 9375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->n:Z

    .line 44
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA",
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    invoke-static {p0, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 135
    return-void
.end method

.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 280
    sget v0, Lbtp$g;->dt_lv_stream_exit_alert_title:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(I)V

    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 286
    .local v0, "id":I
    sget v1, Lbtp$e;->btn_push_start:I

    if-ne v0, v1, :cond_1

    .line 5225
    iput v8, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->o:I

    .line 5226
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5227
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->o:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5229
    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 5230
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 5231
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    .line 5232
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5233
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5235
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5248
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 5263
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 5264
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5265
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5266
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5267
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->m:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    sget v1, Lbtp$e;->tv_back:I

    if-ne v0, v1, :cond_2

    .line 290
    sget v1, Lbtp$g;->dt_lv_stream_exit_alert_title:I

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(I)V

    goto :goto_0

    .line 291
    :cond_2
    sget v1, Lbtp$e;->tv_stop:I

    if-ne v0, v1, :cond_3

    .line 292
    sget v1, Lbtp$g;->dt_lv_confirm_stop_push_stream:I

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a(I)V

    goto :goto_0

    .line 293
    :cond_3
    sget v1, Lbtp$e;->tv_camera:I

    if-ne v0, v1, :cond_4

    .line 5349
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    if-eqz v1, :cond_0

    .line 5350
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    invoke-virtual {v1}, Ljjx;->e()V

    goto :goto_0

    .line 295
    :cond_4
    sget v1, Lbtp$e;->tv_close:I

    if-ne v0, v1, :cond_5

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->finish()V

    goto :goto_0

    .line 297
    :cond_5
    sget v1, Lbtp$e;->tv_clarity:I

    if-ne v0, v1, :cond_0

    .line 6303
    new-array v1, v4, [Ljava/lang/String;

    sget v2, Lbtp$g;->dt_lv_live_code_level_standard:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lbtp$g;->dt_lv_live_code_level_high:I

    .line 6304
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 6305
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    .line 6306
    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 6327
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 5229
    .line 5230
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 84
    :cond_0
    sget v0, Lbtp$f;->activity_scanlive:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->setContentView(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    :cond_1
    const-string/jumbo v0, "Finish when get intent data is empty"

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->finish()V

    .line 4170
    :goto_0
    sget v0, Lbtp$e;->btn_push_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->d:Landroid/widget/Button;

    .line 4171
    sget v0, Lbtp$e;->tv_anim_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    .line 4172
    sget v0, Lbtp$e;->tv_duration:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->h:Landroid/widget/TextView;

    .line 4173
    sget v0, Lbtp$e;->tv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->g:Landroid/widget/TextView;

    .line 4174
    sget v0, Lbtp$e;->tv_camera:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->i:Landroid/widget/TextView;

    .line 4175
    sget v0, Lbtp$e;->tv_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->e:Landroid/widget/TextView;

    .line 4176
    sget v0, Lbtp$e;->tv_stop:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->f:Landroid/widget/TextView;

    .line 4177
    sget v0, Lbtp$e;->view_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->j:Landroid/view/View;

    .line 4178
    sget v0, Lbtp$e;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k:Landroid/widget/TextView;

    .line 4179
    sget v0, Lbtp$e;->tv_clarity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l:Landroid/widget/TextView;

    .line 4180
    sget v0, Lbtp$e;->layout_liveinfo:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->m:Landroid/view/View;

    .line 4182
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeepScreenOn(Z)V

    .line 4188
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4189
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4190
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4191
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4192
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-static {p0}, Lbxz;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    .line 88
    return-void

    .line 1204
    :cond_2
    const-string/jumbo v1, "pushUrl"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a:Ljava/lang/String;

    .line 1205
    const-string/jumbo v1, "title"

    invoke-static {v0, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b:Ljava/lang/String;

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1208
    :cond_3
    const-string/jumbo v0, "Finish when get url param is empty"

    .line 3013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->finish()V

    goto/16 :goto_0

    .line 1213
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a:Ljava/lang/String;

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    const-string/jumbo v0, "Finish when push url decode error"

    .line 4013
    const-string/jumbo v1, "live"

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->finish()V

    goto/16 :goto_0

    .line 1220
    :cond_5
    sget v0, Lbtp$e;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1221
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 99
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->e()V

    .line 100
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 457
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 458
    invoke-static {p0, p1, p3}, Lbxz;->a(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;I[I)V

    .line 459
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 141
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;)V

    invoke-static {p0, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 157
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->q:Ljjx;

    invoke-virtual {v0}, Ljjx;->c()V

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->n:Z

    if-nez v0, :cond_3

    .line 4252
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 4253
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 4254
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 4255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->p:Landroid/animation/ObjectAnimator;

    .line 4257
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 4258
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4271
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4272
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4274
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4275
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/scanlive/ScanLiveActivity;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    :cond_3
    return-void
.end method
