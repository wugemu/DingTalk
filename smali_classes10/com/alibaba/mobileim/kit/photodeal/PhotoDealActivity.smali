.class public Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PhotoDealActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;
.implements Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;
.implements Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;


# instance fields
.field private A:Lhsh;

.field private B:Z

.field private a:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

.field private b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

.field private c:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

.field private d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

.field private e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

.field private f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

.field private g:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/Button;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/widget/FrameLayout;

.field private w:Landroid/widget/TextView;

.field private x:Z

.field private y:Landroid/graphics/Matrix;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->x:Z

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->y:Landroid/graphics/Matrix;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->z:I

    .line 71
    new-instance v0, Lhsh;

    invoke-direct {v0}, Lhsh;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->A:Lhsh;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "customMenu"    # Z

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_pic_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "intent_key_photo_deal_compete_custom"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    .line 20477
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_edit_picture_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20478
    const-string/jumbo v1, "intent_key_original_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20479
    const-string/jumbo v1, "intent_key_repath_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20480
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 48
    return-void
.end method

.method static synthetic b(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    .line 20155
    invoke-static {}, Lhsr;->a()Lhsr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    new-instance v3, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$2;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lhsr;->a(Ljava/lang/String;Landroid/widget/ImageView;Lhsr$b;)V

    .line 48
    return-void
.end method

.method static synthetic c(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    return-object v0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 295
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getActionsCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->finish()V

    .line 308
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 300
    .local v2, "mFragTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialogFragment"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 301
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 305
    :cond_1
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;

    invoke-direct {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;-><init>()V

    .line 306
    .local v0, "dialogFragment":Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;
    const-string/jumbo v3, "dialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 16087
    iput-object p0, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 16886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 335
    if-nez v0, :cond_0

    .line 343
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g()V

    .line 337
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setCropIng(Z)V

    .line 338
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 339
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->n:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_brush:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 346
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 17886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 346
    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g()V

    .line 349
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    .line 18327
    iput-boolean v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 350
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 351
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setCropIng(Z)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->n:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_cut:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getRealCurrentRotateRectF()Landroid/graphics/RectF;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;F)V

    .line 356
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v2, 0x8

    .line 485
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->i:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_done:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 487
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 488
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 489
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 490
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 498
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->a()V

    .line 499
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setVisibility(I)V

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 18413
    iput-object v3, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->d:Lhsu;

    .line 18414
    iput-object v3, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->a:Lhsu;

    .line 18416
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 18417
    iget-object v0, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 18418
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsu;

    .line 18420
    iget-boolean v5, v0, Lhsu;->a:Z

    if-nez v5, :cond_1

    .line 18421
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 18508
    iget-object v0, v0, Lhsu;->r:Lhsn;

    .line 18422
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18425
    :cond_2
    iget-object v0, v1, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 18426
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18427
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsu;

    .line 18428
    iget-boolean v4, v0, Lhsu;->a:Z

    if-nez v4, :cond_3

    .line 18429
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 19508
    iget-object v0, v0, Lhsu;->r:Lhsn;

    .line 18430
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19907
    :cond_4
    iget-object v0, v2, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->removeFromList(Ljava/util/Set;)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v6}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 503
    return-void
.end method

.method static synthetic g(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->B:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getActionsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->w:Landroid/widget/TextView;

    sget v1, Liff$c;->aliwx_photo_deal_back_btn_press:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->w:Landroid/widget/TextView;

    sget v1, Liff$c;->aliwx_photo_deal_back_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isSave"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->finish()V

    .line 526
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    .line 525
    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$6;->start()V

    goto :goto_0
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "newBase"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v1

    invoke-virtual {v1}, Lgzo;->c()Lgzl;

    move-result-object v1

    invoke-interface {v1, p1}, Lgzl;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 570
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getActionsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->w:Landroid/widget/TextView;

    sget v1, Liff$c;->aliwx_photo_deal_back_btn_press:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 575
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->w:Landroid/widget/TextView;

    sget v1, Liff$c;->aliwx_photo_deal_back_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 555
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->i:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_cut:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 557
    return-void
.end method

.method public finish()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setComplete(Z)V

    .line 547
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d()V

    .line 292
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    .line 259
    .local v11, "id":I
    sget v0, Liff$d;->deal_pen:I

    if-ne v11, v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    sget v0, Liff$d;->deal_pix:I

    if-ne v11, v0, :cond_2

    .line 4324
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 4886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 4324
    if-eqz v0, :cond_0

    .line 4325
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g()V

    .line 4326
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setCropIng(Z)V

    .line 4327
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->k:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 4328
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->n:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_mosaic:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4329
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->setVisibility(I)V

    .line 4330
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 4331
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    goto :goto_0

    .line 263
    :cond_2
    sget v0, Liff$d;->deal_crop:I

    if-ne v11, v0, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f()V

    goto :goto_0

    .line 265
    :cond_3
    sget v0, Liff$d;->deal_text:I

    if-ne v11, v0, :cond_4

    .line 5311
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 5886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 5311
    if-eqz v0, :cond_0

    .line 5312
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g()V

    .line 5313
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setCropIng(Z)V

    .line 5314
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->l:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 5315
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->n:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5316
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 5317
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setVisibility(I)V

    .line 5318
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->setVisibility(I)V

    .line 5319
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setEnabled(Z)V

    .line 5320
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->invalidate()V

    goto/16 :goto_0

    .line 267
    :cond_4
    sget v0, Liff$d;->rotate_clockwise:I

    if-ne v11, v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    .line 6362
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 6886
    iget-boolean v3, v3, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 6362
    if-eqz v3, :cond_0

    .line 6363
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 6364
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(FLhsm$a;Lhsy;)V

    .line 6365
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$3;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 269
    :cond_5
    sget v0, Liff$d;->rotate_anticlockwise:I

    if-ne v11, v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    const/high16 v1, 0x43870000    # 270.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    .line 7374
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 7886
    iget-boolean v3, v3, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 7374
    if-eqz v3, :cond_0

    .line 7375
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 7376
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(FLhsm$a;Lhsy;)V

    .line 7377
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$4;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 271
    :cond_6
    sget v0, Liff$d;->send_button:I

    if-ne v11, v0, :cond_8

    .line 8386
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 12440
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g()V

    .line 12441
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setCropIng(Z)V

    .line 12442
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->t:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12444
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->A:Lhsh;

    .line 13016
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lhsh;->a:Ljava/util/concurrent/CountDownLatch;

    .line 12445
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 12446
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->postInvalidate()V

    .line 13451
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$5;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 8400
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 8886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 8400
    if-eqz v0, :cond_0

    .line 8401
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    .line 9331
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 8401
    if-eqz v0, :cond_0

    .line 8403
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    .line 10327
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 8404
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->getCropRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 10429
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->y:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 10431
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->y:Landroid/graphics/Matrix;

    const v1, 0x3f8e1bca

    const v2, 0x3f8e1bca

    iget-object v4, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget v4, v4, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget v5, v5, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 10432
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->y:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8407
    iget-object v12, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 10614
    new-instance v0, Lhsj;

    iget v1, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v4, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->j:Landroid/graphics/Bitmap;

    iget-object v5, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->i:Landroid/graphics/Bitmap;

    iget-object v6, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->b:Landroid/graphics/Canvas;

    iget-object v7, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->g:Landroid/graphics/Bitmap;

    iget-object v8, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->f:Landroid/graphics/Bitmap;

    iget-object v9, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->c:Landroid/graphics/Canvas;

    iget v10, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    invoke-direct/range {v0 .. v10}, Lhsj;-><init>(FFLandroid/graphics/RectF;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;F)V

    iput-object v0, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    .line 10616
    iget-object v0, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    iget-object v1, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a:Lhsi;

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->add(Ljava/lang/Object;)Z

    .line 10618
    iget-object v0, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->q:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$a;->a(Lhsj;)V

    .line 10619
    invoke-virtual {v12}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->postInvalidate()V

    .line 10620
    iget-object v0, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsx;

    .line 10621
    iget v2, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->m:F

    iget v4, v12, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->n:F

    invoke-interface {v0, v2, v4}, Lhsx;->a(FF)V

    goto :goto_1

    .line 8408
    :cond_7
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setMode(I)V

    .line 8409
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->setVisibility(I)V

    .line 8410
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->i:Landroid/widget/TextView;

    sget v1, Liff$f;->dt_photo_done:I

    invoke-virtual {p0, v1}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8411
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f()V

    .line 8412
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g()V

    .line 8414
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    .line 11327
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a:Z

    .line 8415
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->m:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 8417
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 11794
    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->a(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 11795
    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 11796
    iget-object v2, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    const v3, 0x3f669595

    const v4, 0x3f669595

    iget v5, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->k:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->l:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 11797
    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8418
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->a(Landroid/graphics/RectF;F)V

    .line 8419
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->setVisibility(I)V

    .line 8420
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 273
    :cond_8
    sget v0, Liff$d;->cancel_button:I

    if-ne v11, v0, :cond_9

    .line 274
    invoke-direct {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d()V

    goto/16 :goto_0

    .line 275
    :cond_9
    sget v0, Liff$d;->back_btn:I

    if-ne v11, v0, :cond_0

    .line 14281
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 14886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 14281
    if-eqz v0, :cond_0

    .line 14283
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 15553
    iget-object v0, v1, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 14284
    :goto_2
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->getVisibility()I

    goto/16 :goto_0

    .line 15554
    :cond_a
    iget-object v0, v1, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->d:Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsi;

    .line 15555
    new-instance v2, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;Lhsi;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 8386
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p0, v2}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->requestWindowFeature(I)Z

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v0, Liff$e;->aliwx_photo_deal_activity:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->setContentView(I)V

    .line 1181
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_pic_path"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    .line 1182
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->p:Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->finish()V

    move v0, v1

    .line 93
    :goto_0
    if-nez v0, :cond_1

    .line 110
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1187
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "intent_key_photo_deal_compete_custom"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->B:Z

    .line 1191
    sget v0, Liff$d;->text_color_pick_box:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    .line 1192
    sget v0, Liff$d;->no_pic_part_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->u:Landroid/widget/RelativeLayout;

    .line 1193
    sget v0, Liff$d;->work_space:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->v:Landroid/widget/FrameLayout;

    .line 1194
    sget v0, Liff$d;->color_pick_box:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    .line 1195
    sget v0, Liff$d;->crop:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    .line 1196
    sget v0, Liff$d;->main_image:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 1197
    sget v0, Liff$d;->edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    .line 1198
    sget v0, Liff$d;->stick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    .line 1199
    sget v0, Liff$d;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->h:Landroid/widget/TextView;

    .line 1200
    sget v0, Liff$d;->send_button:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->i:Landroid/widget/TextView;

    .line 1201
    sget v0, Liff$d;->deal_pen:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->j:Landroid/widget/Button;

    .line 1202
    sget v0, Liff$d;->deal_pix:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->k:Landroid/widget/Button;

    .line 1203
    sget v0, Liff$d;->deal_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->l:Landroid/widget/Button;

    .line 1204
    sget v0, Liff$d;->deal_crop:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->m:Landroid/widget/Button;

    .line 1205
    sget v0, Liff$d;->title_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->n:Landroid/widget/TextView;

    .line 1206
    sget v0, Liff$d;->masic_size_pick_box:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

    .line 1207
    sget v0, Liff$d;->rotate_angle_pick_box:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->q:Landroid/widget/LinearLayout;

    .line 1208
    sget v0, Liff$d;->rotate_anticlockwise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->r:Landroid/widget/ImageButton;

    .line 1209
    sget v0, Liff$d;->rotate_clockwise:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->s:Landroid/widget/ImageButton;

    .line 1210
    sget v0, Liff$d;->progress_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->t:Landroid/widget/RelativeLayout;

    .line 1211
    sget v0, Liff$d;->back_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->w:Landroid/widget/TextView;

    .line 1239
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->A:Lhsh;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setFinishWatcher(Lhsh;)V

    .line 1240
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setmBackTextActionListener(Lhsv;)V

    .line 1241
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setmTextsControlListener(Lhta;)V

    .line 1242
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setmBeginAddTextListener(Lhsw;)V

    .line 1243
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;->setmStopAddTextListener(Lhsz;)V

    .line 1244
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setmCropActionListener(Lhsx;)V

    .line 1245
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setmCropActionListener(Lhsx;)V

    .line 1246
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setmTextActionCacheQuery(Lhtc;)V

    .line 1247
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;->setmCurrentRotateRectQuery(Lhtb;)V

    .line 1248
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;)V

    .line 1249
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->f:Lcom/alibaba/mobileim/kit/photodeal/widget/StickerView;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;)V

    .line 1250
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->g:Lcom/alibaba/mobileim/kit/photodeal/widget/EditTextActionLayout;

    invoke-virtual {v0, v3}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox$b;)V

    .line 1251
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 2193
    iget-object v0, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->d:Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView;->setmCropActiveListener(Lcom/alibaba/mobileim/kit/photodeal/widget/CropImageView$a;)V

    .line 1253
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setLinkedListOperateListner(Lcom/alibaba/mobileim/kit/photodeal/NotifyLinkedList$a;)V

    .line 2215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2216
    const-string/jumbo v3, "#ffffff"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2217
    const-string/jumbo v3, "#141110"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2218
    const-string/jumbo v3, "#c8c22e"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2219
    const-string/jumbo v3, "#d08827"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2220
    const-string/jumbo v3, "#E5322C"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2221
    const-string/jumbo v3, "#c73c7d"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    const-string/jumbo v3, "#842ec5"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2223
    const-string/jumbo v3, "#2f3cc8"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2224
    const-string/jumbo v3, "#2eabc7"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2225
    const-string/jumbo v3, "#2ac83e"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2226
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    invoke-virtual {v3, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(Ljava/util/ArrayList;)V

    .line 2227
    iget-object v3, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->b:Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;

    invoke-virtual {v3, v0}, Lcom/alibaba/mobileim/kit/photodeal/widget/ColorPickBox;->a(Ljava/util/ArrayList;)V

    .line 2231
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->c:Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    const/16 v4, 0x4b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 3056
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3062
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->d:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3063
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3064
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->e:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3065
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3066
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 3058
    iget-object v1, v0, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/mobileim/kit/photodeal/widget/MasicSizePickBox;->a(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 530
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setComplete(Z)V

    .line 531
    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->B:Z

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 540
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 541
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    .line 3886
    iget-boolean v0, v0, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->e:Z

    .line 121
    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->x:Z

    if-eqz v0, :cond_0

    .line 4133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->x:Z

    .line 4134
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4135
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Liff$b;->aliwx_photo_deal_no_pic_part_layout_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 4136
    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    .line 4137
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4138
    iget-object v2, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4139
    iget-object v0, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4140
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4141
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;->e:Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;

    invoke-virtual {v1, v0}, Lcom/alibaba/mobileim/kit/photodeal/ActionImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4145
    new-instance v0, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;-><init>(Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity;)V

    .line 4151
    invoke-virtual {v0}, Lcom/alibaba/mobileim/kit/photodeal/PhotoDealActivity$1;->start()V

    .line 126
    :cond_0
    return-void
.end method
