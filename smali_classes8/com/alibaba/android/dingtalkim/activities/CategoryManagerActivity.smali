.class public Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CategoryManagerActivity.java"

# interfaces
.implements Ldda$b;


# instance fields
.field private A:F

.field private B:Landroid/view/View$OnClickListener;

.field private final a:I

.field private final b:I

.field private c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field private d:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/MenuItem;

.field private n:Landroid/view/MenuItem;

.field private o:Ldda$a;

.field private p:Lcub;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/category/CategoryObject;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/alibaba/wukong/im/Conversation;

.field private s:J

.field private t:J

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a:I

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Lcub;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    return-object v0
.end method

.method private a(F)V
    .locals 5
    .param p1, "hour"    # F

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 333
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->A:F

    .line 335
    invoke-static {p1}, Ldza;->a(F)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "contentDesc":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->j:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_im_category_fold_chats_immediately_desc:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->j:Landroid/widget/TextView;

    sget v2, Lctk$i;->dt_im_category_fold_chats_desc_AT:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;
    .param p1, "x1"    # F

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;J)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;
    .param p1, "x1"    # J

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    .line 6170
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    .line 6171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v0, :cond_0

    .line 6172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    .line 7048
    iput-wide p1, v0, Lcub;->f:J

    .line 6173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v0}, Lcub;->notifyDataSetChanged()V

    .line 6175
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 6176
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->k:Landroid/widget/ImageView;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->t:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6178
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 6179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->l:Landroid/widget/ImageView;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->u:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 6176
    goto :goto_0

    :cond_4
    move v1, v2

    .line 6179
    goto :goto_1
.end method

.method private b(Z)V
    .locals 5
    .param p1, "edit"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 406
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    .line 407
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_4

    sget v0, Lctk$f;->img_sort:I

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDragHandleViewId(I)V

    .line 2473
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    invoke-virtual {v0, v3}, Lcub;->a(Z)V

    .line 2475
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v0}, Lcub;->notifyDataSetChanged()V

    .line 2477
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e()V

    .line 2478
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-nez v0, :cond_1

    .line 2479
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_5

    sget v0, Lctk$c;->color_category_disabled:I

    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2481
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2482
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2484
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 2485
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2487
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->supportInvalidateOptionsMenu()V

    .line 409
    return-void

    .line 407
    :cond_4
    sget v0, Lctk$f;->drag_hide:I

    goto :goto_0

    .line 2479
    :cond_5
    sget v0, Lctk$c;->ui_common_level1_text_color:I

    goto :goto_1

    :cond_6
    move v0, v2

    .line 2482
    goto :goto_2

    :cond_7
    move v2, v1

    .line 2485
    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->u:J

    return-wide v0
.end method

.method private e()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 125
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v0, Lctk$i;->dt_im_category_move:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_2

    sget v0, Lctk$i;->dt_im_category_change_sort:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v0, Lctk$i;->dt_im_category_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 50
    .line 7268
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7269
    sget v1, Lctk$i;->dt_im_category_fold_chats_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7271
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 7272
    sget v2, Lctk$i;->dt_im_category_fold_chats_now:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 7273
    sget v2, Lctk$i;->dt_im_category_fold_chats_after_minutes_AT:I

    new-array v3, v6, [Ljava/lang/Object;

    const-string/jumbo v4, "30"

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 7274
    const/4 v2, 0x2

    sget v3, Lctk$i;->dt_im_category_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "1"

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7275
    const/4 v2, 0x3

    sget v3, Lctk$i;->dt_im_category_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "3"

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7276
    const/4 v2, 0x4

    sget v3, Lctk$i;->dt_im_category_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "6"

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7277
    const/4 v2, 0x5

    sget v3, Lctk$i;->dt_im_category_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "12"

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7278
    const/4 v2, 0x6

    sget v3, Lctk$i;->dt_im_category_fold_chats_after_AT:I

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "24"

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 7279
    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7317
    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 7319
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7322
    :goto_0
    return-void

    .line 7320
    :catch_0
    move-exception v0

    .line 7321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v0}, Lcub;->notifyDataSetChanged()V

    .line 568
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 50
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)Ldda$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    return-object v0
.end method


# virtual methods
.method public final H_()V
    .locals 0

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->dismissLoadingDialog()V

    .line 617
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 572
    sget v0, Lctk$i;->dt_im_category_sort_success:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 573
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->x:Z

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->finish()V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 12
    .param p1, "categoryTop"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    if-eqz v0, :cond_6

    .line 493
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    invoke-interface {v0}, Ldda$a;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->q:Ljava/util/List;

    .line 494
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 495
    new-instance v0, Lcub;

    invoke-direct {v0, p0}, Lcub;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    .line 496
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    invoke-virtual {v0, v1}, Lcub;->a(Z)V

    .line 497
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    .line 4044
    iput-boolean v1, v0, Lcub;->d:Z

    .line 498
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    .line 4048
    iput-wide v6, v0, Lcub;->f:J

    .line 4184
    if-eqz p1, :cond_2

    .line 4185
    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->t:J

    .line 4186
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-eqz v0, :cond_7

    sget v0, Lctk$g;->layout_category_move_header:I

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 4187
    sget v0, Lctk$f;->tv_name:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e:Landroid/widget/TextView;

    .line 4188
    sget v0, Lctk$f;->tv_sort_tip:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f:Landroid/widget/TextView;

    .line 4189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, ""

    :goto_1
    iget-wide v8, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    invoke-static {v0, v8, v9}, Ldde;->a(Ljava/lang/String;J)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4190
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-eqz v0, :cond_f

    .line 4191
    sget v0, Lctk$f;->rl_header:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4198
    iget-wide v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    const-wide/16 v8, 0x1

    cmp-long v0, v0, v8

    if-nez v0, :cond_0

    .line 4199
    sget v0, Lctk$f;->rl_default_category:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 4200
    sget v1, Lctk$f;->tv_default_name:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4201
    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->u:J

    .line 4235
    const-wide/16 v10, 0x3

    cmp-long v2, v8, v10

    if-nez v2, :cond_9

    .line 4236
    sget v2, Lctk$i;->dt_im_efficient_group:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4202
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4203
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4226
    :cond_0
    :goto_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-eqz v0, :cond_1

    .line 4227
    sget v0, Lctk$f;->img_select:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->k:Landroid/widget/ImageView;

    .line 4228
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->k:Landroid/widget/ImageView;

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    invoke-static {v8, v9}, Liap;->a(J)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4230
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    invoke-virtual {v0, v6}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->addHeaderView(Landroid/view/View;)V

    .line 4250
    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->layout_category_manager_footer:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    .line 4251
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    sget v1, Lctk$f;->rl_category_add:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->h:Landroid/widget/RelativeLayout;

    .line 4252
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->h:Landroid/widget/RelativeLayout;

    .line 4436
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->B:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_11

    .line 4437
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->B:Landroid/view/View$OnClickListener;

    .line 4252
    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    sget v1, Lctk$f;->setting_smart_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 4254
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_12

    :cond_3
    move v0, v5

    :goto_6
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 4255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->i:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4261
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    sget v1, Lctk$f;->tv_smart_time_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->j:Landroid/widget/TextView;

    .line 4262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->j:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v1, :cond_5

    :cond_4
    move v4, v5

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4263
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->z:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->a(F)V

    .line 4264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->addFooterView(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcub;->b(Ljava/util/List;)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_13

    .line 504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Z)V

    .line 511
    :cond_6
    :goto_7
    return-void

    .line 4186
    :cond_7
    sget v0, Lctk$g;->layout_category_manager_header:I

    goto/16 :goto_0

    .line 4189
    :cond_8
    iget-object v0, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 4237
    :cond_9
    const-wide/16 v10, 0x2

    cmp-long v2, v8, v10

    if-nez v2, :cond_a

    .line 4238
    sget v2, Lctk$i;->dt_im_efficient_chat:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 4239
    :cond_a
    const-wide/16 v10, 0x6

    cmp-long v2, v8, v10

    if-nez v2, :cond_b

    .line 4240
    sget v2, Lctk$i;->dt_im_category_not_disturb_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 4241
    :cond_b
    const-wide/16 v10, 0x4

    cmp-long v2, v8, v10

    if-nez v2, :cond_c

    .line 4242
    sget v2, Lctk$i;->dt_menu_work_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 4243
    :cond_c
    const-wide/16 v10, 0x5

    cmp-long v2, v8, v10

    if-nez v2, :cond_d

    .line 4244
    sget v2, Lctk$i;->dt_im_efficient_function:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_d
    move-object v2, v3

    .line 4246
    goto/16 :goto_2

    .line 4205
    :cond_e
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4206
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4207
    sget v1, Lctk$f;->img_default_select:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->l:Landroid/widget/ImageView;

    .line 4208
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 4217
    :cond_f
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;Lcom/alibaba/wukong/im/category/CategoryObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_10
    move v0, v5

    .line 4228
    goto/16 :goto_4

    .line 4439
    :cond_11
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->B:Landroid/view/View$OnClickListener;

    .line 4469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->B:Landroid/view/View$OnClickListener;

    goto/16 :goto_5

    :cond_12
    move v0, v4

    .line 4254
    goto/16 :goto_6

    .line 506
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_7
.end method

.method public final a(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 597
    if-eqz p1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->finish()V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    sget v0, Lctk$i;->dt_category_move_fail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->showLoadingDialog()V

    .line 612
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 6
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 515
    if-nez p1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 520
    .local v0, "item":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    .line 523
    iget-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 524
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 528
    .end local v0    # "item":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 592
    .line 4621
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public final c(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 6
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 534
    if-nez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 539
    .local v0, "item":Lcom/alibaba/wukong/im/category/CategoryObject;
    if-eqz v0, :cond_2

    .line 542
    iget-wide v2, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    iget-wide v4, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 543
    iget-object v1, p1, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/category/CategoryObject;->title:Ljava/lang/String;

    .line 547
    .end local v0    # "item":Lcom/alibaba/wukong/im/category/CategoryObject;
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f()V

    goto :goto_0
.end method

.method public final d(Lcom/alibaba/wukong/im/category/CategoryObject;)V
    .locals 2
    .param p1, "categoryObject"    # Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 553
    if-nez p1, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v0}, Lcub;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v0}, Lcub;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->f()V

    .line 559
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 626
    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->x:Z

    if-nez v0, :cond_0

    .line 415
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Z)V

    .line 432
    :goto_0
    return-void

    .line 418
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->z:F

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->A:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 419
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->A:F

    .line 3326
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3327
    const-string/jumbo v2, "intent_action_efficient_smart_time"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3328
    const-string/jumbo v2, "intent_key_efficient_smart_HOUR"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 3329
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 420
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->A:F

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->z:F

    .line 421
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 431
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget v0, Lctk$g;->layout_category_manager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->setContentView(I)V

    .line 97
    sget v0, Lctk$f;->list_emotion_drag_sort:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_default_smart_hour"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->y:F

    .line 101
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_key_category_edit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->x:Z

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->r:Lcom/alibaba/wukong/im/Conversation;

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->r:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v3, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->r:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getCategoryId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->r:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0, v3}, Ldza;->a(Lcom/alibaba/wukong/im/Conversation;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->u:J

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->e()V

    .line 112
    new-instance v0, Lddb;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->r:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v0, p0, p0, v1}, Lddb;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldda$b;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1134
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->d:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    .line 1142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->d:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDropListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;)V

    .line 1144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->c:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    invoke-interface {v0}, Ldda$a;->a()V

    .line 119
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->y:F

    .line 2056
    const-string/jumbo v1, "intent_key_efficient_smart_HOUR"

    invoke-static {v1, v0}, Lcpk;->a(Ljava/lang/String;F)F

    move-result v0

    .line 119
    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->z:F

    .line 120
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->z:F

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->A:F

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 347
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 348
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 361
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-eqz v0, :cond_3

    .line 352
    :cond_2
    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->n:Landroid/view/MenuItem;

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->n:Landroid/view/MenuItem;

    sget v1, Lctk$i;->sure:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 354
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->n:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 361
    :goto_1
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0

    .line 356
    :cond_3
    const/4 v0, 0x1

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->m:Landroid/view/MenuItem;

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->m:Landroid/view/MenuItem;

    sget v1, Lctk$i;->dt_im_emotion_sort:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 358
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->m:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    invoke-interface {v0}, Ldda$a;->i()V

    .line 634
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 635
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 402
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 369
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Z)V

    goto :goto_0

    .line 372
    :sswitch_1
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    .line 2065
    invoke-virtual {v1}, Lcub;->a()Ljava/lang/String;

    move-result-object v2

    .line 2066
    iget-object v1, v1, Lcub;->e:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 373
    if-eqz v1, :cond_1

    .line 374
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Z)V

    .line 375
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v1}, Lcub;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->p:Lcub;

    invoke-virtual {v2}, Lcub;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ldda$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->w:Z

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    if-eqz v1, :cond_0

    .line 382
    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->u:J

    invoke-static {v2, v3}, Liap;->a(J)Z

    move-result v0

    .line 383
    .local v0, "systemCategory":Z
    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->t:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    :cond_3
    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->u:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 385
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->finish()V

    goto/16 :goto_0

    .line 387
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->r:Lcom/alibaba/wukong/im/Conversation;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->s:J

    invoke-interface {v1, v2, v4, v5}, Ldda$a;->a(Lcom/alibaba/wukong/im/Conversation;J)V

    goto/16 :goto_0

    .line 393
    .end local v0    # "systemCategory":Z
    :sswitch_2
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->v:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->x:Z

    if-nez v2, :cond_6

    .line 394
    invoke-direct {p0, v3}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->b(Z)V

    goto/16 :goto_1

    .line 397
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic setPresenter(Lcjd;)V
    .locals 0

    .prologue
    .line 50
    check-cast p1, Ldda$a;

    .line 5606
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/CategoryManagerActivity;->o:Ldda$a;

    .line 50
    return-void
.end method
