.class public Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CreateLiveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljjx;

.field private v:I

.field private w:Landroid/graphics/Rect;

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->v:I

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->w:Landroid/graphics/Rect;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->x:Landroid/os/Handler;

    .line 556
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->v:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;Ljjx;)Ljjx;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
    .param p1, "x1"    # Ljjx;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    return-object p1
.end method

.method private a(Lbyi$a;)V
    .locals 1
    .param p1, "callback"    # Lbyi$a;

    .prologue
    .line 582
    new-instance v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$7;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;Lbyi$a;)V

    invoke-static {p0, v0}, Lbyi;->a(Landroid/app/Activity;Lcjn$a;)V

    .line 611
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 412
    invoke-static {}, Lbyj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 422
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v0, Lbtp$g;->dt_lv_start_live_save_enabled:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget v0, Lbtp$g;->dt_lv_start_live_save_disabled:I

    goto :goto_1
.end method

.method private a(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "isSelected"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 397
    if-nez p1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 399
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 408
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    sget v0, Lbtp$g;->dt_lv_linkmic_on:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget v0, Lbtp$g;->dt_lv_linkmic_off:I

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->v:I

    return v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->i:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->i:Landroid/widget/TextView;

    iget v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->v:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    sget v0, Lbtp$g;->dt_lv_live_code_level_high:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget v0, Lbtp$g;->dt_lv_live_code_level_standard:I

    goto :goto_1
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 447
    const/4 v0, 0x1

    .line 448
    .local v0, "isBeautyEnabled":Z
    invoke-static {}, Lbyj;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    iget v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->v:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 454
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->s:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lbyj;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    :cond_0
    const/4 v0, 0x0

    .line 459
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v2, :cond_2

    .line 462
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v2}, Ljjx;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 463
    .local v1, "isFacebeautyEnable":Z
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 464
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v2, v1}, Ljjx;->b(Z)V

    .line 466
    .end local v1    # "isFacebeautyEnable":Z
    :cond_2
    return-void

    .line 459
    :cond_3
    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    move v1, v3

    .line 462
    goto :goto_1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Ljjx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->r:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->s:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->c()V

    return-void
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA",
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 280
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->o:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$3;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v0}, Ljjx;->c()V

    .line 310
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v0}, Ljjx;->g()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->x:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$4;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA",
            "android.permission.RECORD_AUDIO"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lbyi$a;)V

    .line 620
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d()V

    .line 621
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v0}, Ljjx;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 493
    .local v1, "id":I
    sget v2, Lbtp$e;->view_root:I

    if-ne v1, v2, :cond_1

    .line 494
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h:Landroid/widget/EditText;

    invoke-static {p0, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    sget v2, Lbtp$e;->tv_clarity:I

    if-ne v1, v2, :cond_2

    .line 6369
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    sget v5, Lbtp$g;->dt_lv_live_code_level_standard:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    sget v4, Lbtp$g;->dt_lv_live_code_level_high:I

    .line 6370
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6371
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$6;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    .line 6372
    invoke-virtual {v3, v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 6384
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 497
    :cond_2
    sget v2, Lbtp$e;->tv_service:I

    if-ne v1, v2, :cond_3

    .line 7325
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7326
    const-string/jumbo v3, "url"

    const-string/jumbo v4, "https://reservation.dingtalk.com/aliXiaomi?from=dingtalk_live"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7327
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 499
    :cond_3
    sget v2, Lbtp$e;->tv_orientation:I

    if-ne v1, v2, :cond_7

    .line 7331
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->p:Z

    if-nez v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->p:Z

    .line 7332
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->p:Z

    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->setRequestedOrientation(I)V

    .line 7343
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v2, :cond_6

    .line 7344
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v2}, Ljjx;->f()Z

    move-result v2

    .line 7345
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v3}, Ljjx;->a()Z

    move-result v4

    .line 7346
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v3}, Ljjx;->c()V

    .line 7347
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v3}, Ljjx;->g()V

    .line 7348
    iput-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    .line 7354
    :goto_2
    new-instance v3, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;

    invoke-direct {v3, p0, v2, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$5;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;ZZ)V

    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Lbyi$a;)V

    .line 7336
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d()V

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 7331
    goto :goto_1

    :cond_6
    move v2, v4

    .line 7351
    goto :goto_2

    .line 501
    :cond_7
    sget v2, Lbtp$e;->tv_camera:I

    if-ne v1, v2, :cond_8

    .line 502
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v2}, Ljjx;->e()V

    goto/16 :goto_0

    .line 505
    :cond_8
    sget v2, Lbtp$e;->tv_close:I

    if-ne v1, v2, :cond_9

    .line 506
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->finish()V

    goto/16 :goto_0

    .line 507
    :cond_9
    sget v2, Lbtp$e;->btn_start:I

    if-ne v1, v2, :cond_c

    .line 8257
    const-string/jumbo v2, "live_stream_start_click"

    invoke-static {v2}, Lcps;->a(Ljava/lang/String;)V

    .line 8258
    invoke-static {p0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 8259
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 8260
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8261
    sget v3, Lbtp$g;->dt_lv_live_no_wifi_warning:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8262
    sget v3, Lbtp$g;->cancel:I

    invoke-virtual {v2, v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8263
    sget v3, Lbtp$g;->sure:I

    new-instance v4, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$2;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 8269
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 8271
    :cond_a
    invoke-static {p0}, Lbxp;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    goto/16 :goto_0

    .line 8274
    :cond_b
    sget v2, Lbtp$g;->dt_lv_live_error_network:I

    invoke-static {v2}, Lcms;->a(I)V

    goto/16 :goto_0

    .line 509
    :cond_c
    sget v2, Lbtp$e;->tv_linkmic:I

    if-eq v1, v2, :cond_d

    sget v2, Lbtp$e;->tv_icon_linkmic:I

    if-ne v1, v2, :cond_f

    .line 510
    :cond_d
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_e

    move v4, v3

    :cond_e
    invoke-direct {p0, v3, v4}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(ZZ)V

    goto/16 :goto_0

    .line 511
    :cond_f
    sget v2, Lbtp$e;->tv_save:I

    if-eq v1, v2, :cond_10

    sget v2, Lbtp$e;->tv_icon_save:I

    if-ne v1, v2, :cond_12

    .line 512
    :cond_10
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_11

    :goto_3
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Z)V

    goto/16 :goto_0

    :cond_11
    move v3, v4

    goto :goto_3

    .line 513
    :cond_12
    sget v2, Lbtp$e;->tv_beauty:I

    if-ne v1, v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v2, :cond_0

    .line 516
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v2}, Ljjx;->a()Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v3

    .line 517
    .local v0, "beautyEnabled":Z
    :goto_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 518
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v2, v0}, Ljjx;->b(Z)V

    goto/16 :goto_0

    .end local v0    # "beautyEnabled":Z
    :cond_13
    move v0, v4

    .line 516
    goto :goto_4
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5426
    if-eqz p1, :cond_1

    .line 5429
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 5430
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 5431
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5432
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v1, :cond_3

    sget v3, Lbtp$c;->live_edit_title_margin_top_landscape:I

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 5434
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v1, :cond_4

    sget v3, Lbtp$c;->live_edit_title_margin_left_landscape:I

    :goto_2
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 5436
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v1, :cond_5

    sget v1, Lbtp$c;->live_edit_title_margin_right_landscape:I

    :goto_3
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5438
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v5, v4, :cond_0

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v5, v3, :cond_0

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v5, v1, :cond_1

    .line 5440
    :cond_0
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5441
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d()V

    .line 125
    return-void

    :cond_2
    move v1, v2

    .line 5429
    goto :goto_0

    .line 5432
    :cond_3
    sget v3, Lbtp$c;->live_edit_title_margin_top:I

    goto :goto_1

    .line 5434
    :cond_4
    sget v3, Lbtp$c;->live_edit_title_margin_left:I

    goto :goto_2

    .line 5436
    :cond_5
    sget v1, Lbtp$c;->live_edit_title_margin_right:I

    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 105
    :cond_0
    sget v0, Lbtp$f;->activity_create_live:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->setContentView(I)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v4, Lbtp$g;->dt_lv_create_live:I

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "cid"

    invoke-static {v0, v4}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->o:Ljava/lang/String;

    .line 1150
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_is_enable_hd"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->q:Z

    .line 1151
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_is_enable_hw_code"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->r:Z

    .line 1152
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_is_enable_hd_beauty"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->s:Z

    .line 1153
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_extra_linkmic_on"

    invoke-static {v0, v4, v1}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->t:Z

    .line 1154
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 111
    :goto_0
    if-nez v0, :cond_3

    .line 112
    const-string/jumbo v0, "Create live failed, invalid argument"

    .line 2013
    const-string/jumbo v1, "live"

    invoke-static {v1, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget v0, Lbtp$g;->and_wukong_error_param_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->finish()V

    .line 118
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1154
    goto :goto_0

    .line 2160
    :cond_3
    sget v0, Lbtp$e;->tv_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2161
    invoke-static {}, Lcms;->c()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcms;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2162
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2168
    :goto_2
    sget v0, Lbtp$e;->divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->g:Landroid/view/View;

    .line 2169
    sget v0, Lbtp$e;->layout_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a:Landroid/view/View;

    .line 2170
    sget v0, Lbtp$e;->layout_linkmic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->b:Landroid/view/View;

    .line 2171
    sget v0, Lbtp$e;->layout_operate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->c:Landroid/view/View;

    .line 2172
    sget v0, Lbtp$e;->layout_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d:Landroid/view/View;

    .line 2173
    sget v0, Lbtp$e;->layout_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    .line 2174
    sget v0, Lbtp$e;->btn_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->f:Landroid/view/View;

    .line 2175
    sget v0, Lbtp$e;->tv_clarity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->i:Landroid/widget/TextView;

    .line 2176
    sget v0, Lbtp$e;->tv_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->k:Landroid/widget/TextView;

    .line 2177
    sget v0, Lbtp$e;->tv_linkmic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->j:Landroid/widget/TextView;

    .line 2178
    sget v0, Lbtp$e;->tv_icon_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->m:Landroid/widget/TextView;

    .line 2179
    sget v0, Lbtp$e;->tv_icon_linkmic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->l:Landroid/widget/TextView;

    .line 2180
    sget v0, Lbtp$e;->edit_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h:Landroid/widget/EditText;

    .line 2181
    sget v0, Lbtp$e;->tv_beauty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->n:Landroid/widget/TextView;

    .line 2183
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h:Landroid/widget/EditText;

    new-array v4, v1, [Landroid/text/InputFilter;

    new-instance v5, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$a;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$a;-><init>()V

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->h:Landroid/widget/EditText;

    sget v4, Lbtp$g;->dt_lv_default_title_AT:I

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 2185
    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2184
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2186
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2188
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->q:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lbyj;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2189
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3219
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->t:Z

    if-eqz v0, :cond_a

    .line 4212
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v4, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v4, :cond_5

    .line 4213
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "im_link_mic_enable_new"

    invoke-virtual {v0, v4, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4215
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "im_link_mic_anchor_enable_v2"

    invoke-virtual {v0, v4, v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    move v0, v1

    .line 3219
    :goto_4
    if-eqz v0, :cond_a

    move v0, v1

    .line 3220
    :goto_5
    invoke-direct {p0, v0, v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(ZZ)V

    .line 3221
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->a(Z)V

    .line 4225
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v4, "dt_lv_agreement_enabled"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 4227
    sget v0, Lbtp$e;->tv_agreement:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4228
    if-eqz v4, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4230
    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbtp$g;->dt_lv_start_live_acquiescence_compliance_with:I

    .line 4231
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v2, " "

    aput-object v2, v3, v1

    .line 4230
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4232
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbtp$g;->dt_lv_live_management_regulations:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4233
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4234
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 4235
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 4236
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v5, Lbtp$b;->ui_common_theme_text_color:I

    invoke-static {p0, v5}, Ldp;->c(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4238
    new-instance v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity$1;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4253
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2198
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->c()V

    .line 2199
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->d()V

    .line 5204
    sget v0, Lbtp$e;->view_root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5205
    sget v0, Lbtp$e;->tv_clarity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5206
    sget v0, Lbtp$e;->tv_service:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5207
    sget v0, Lbtp$e;->tv_orientation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5208
    sget v0, Lbtp$e;->tv_camera:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5209
    sget v0, Lbtp$e;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5210
    sget v0, Lbtp$e;->btn_start:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5211
    sget v0, Lbtp$e;->tv_linkmic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5212
    sget v0, Lbtp$e;->tv_icon_linkmic:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5213
    sget v0, Lbtp$e;->tv_icon_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5214
    sget v0, Lbtp$e;->tv_save:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5215
    sget v0, Lbtp$e;->tv_beauty:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 2165
    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2191
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2192
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v4, "hide select clarity button, mIsEnableHD="

    aput-object v4, v0, v2

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->q:Z

    .line 2193
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string/jumbo v4, ", model="

    aput-object v4, v0, v8

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", SDK_INT="

    aput-object v5, v0, v4

    const/4 v4, 0x5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 2192
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3013
    const-string/jumbo v4, "live"

    invoke-static {v4, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 4215
    goto/16 :goto_4

    :cond_a
    move v0, v2

    .line 3219
    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 481
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v0}, Ljjx;->g()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    .line 488
    :cond_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 526
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    if-nez v8, :cond_0

    .line 554
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lbtp$c;->live_layout_start_margin_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 531
    .local v0, "bottomMargin":I
    iget-boolean v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->p:Z

    if-nez v8, :cond_1

    .line 532
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 534
    .local v4, "rootView":Landroid/view/View;
    :try_start_0
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->w:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 541
    .local v5, "totalHeight":I
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->w:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->w:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v3, v8, v9

    .line 542
    .local v3, "nowHeight":I
    sub-int v8, v5, v3

    div-int/lit8 v9, v5, 0x5

    if-le v8, v9, :cond_1

    .line 544
    sub-int v8, v5, v3

    iget-object v9, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->w:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {p0, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    add-int v0, v8, v9

    .line 547
    .end local v3    # "nowHeight":I
    .end local v4    # "rootView":Landroid/view/View;
    .end local v5    # "totalHeight":I
    :cond_1
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    .line 548
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 549
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_2

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v8, v0, :cond_2

    .line 550
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 551
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->e:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 9471
    :cond_2
    invoke-static {p0}, Lbyf;->c(Landroid/app/Activity;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 9472
    invoke-static {}, Lcoj;->a()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 9473
    :goto_1
    if-eqz v6, :cond_4

    invoke-static {p0}, Lbyf;->a(Landroid/content/Context;)I

    move-result v6

    .line 9474
    :goto_2
    iget-object v8, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->c:Landroid/view/View;

    invoke-virtual {v8, v7, v6, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 535
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4    # "rootView":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "getWindowVisibleDisplayFrame failed, error="

    aput-object v9, v8, v7

    .line 537
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 536
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9013
    const-string/jumbo v7, "live"

    const/4 v8, 0x0

    invoke-static {v7, v8, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move v6, v7

    .line 9472
    goto :goto_1

    :cond_4
    move v6, v7

    .line 9473
    goto :goto_2
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
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 145
    invoke-static {p0, p1, p3}, Lbxp;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;I[I)V

    .line 146
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 130
    invoke-static {p0}, Lbxp;->b(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    .line 131
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;->u:Ljjx;

    invoke-virtual {v0}, Ljjx;->c()V

    .line 139
    :cond_0
    return-void
.end method
