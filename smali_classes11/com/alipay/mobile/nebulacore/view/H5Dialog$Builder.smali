.class Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;
.super Ljava/lang/Object;
.source "H5Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/view/H5Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Builder"
.end annotation


# instance fields
.field private mAlertDialogWindow:Landroid/view/Window;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private mMessageView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 292
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$102(Lcom/alipay/mobile/nebulacore/view/H5Dialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 294
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 296
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x20008

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 298
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    .line 299
    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 301
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    .line 302
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$layout;->h5_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "contv":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 304
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 306
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_window:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 308
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mTitleView:Landroid/widget/TextView;

    .line 311
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_message:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mMessageView:Landroid/widget/TextView;

    .line 312
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 313
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_buttonLayout:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 314
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$300(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_contentView:I

    .line 316
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 317
    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 318
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$300(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 320
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$400(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$400(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setTitle(I)V

    .line 323
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 326
    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$400(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    if-nez v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mTitleView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$600(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$600(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setMessage(I)V

    .line 332
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$700(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 333
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$700(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 335
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$800(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 336
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$800(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$900(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 339
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_c

    .line 340
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$900(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 341
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 340
    invoke-virtual {v2, v3, v7, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 342
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$900(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 349
    :cond_7
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 350
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_material_background:I

    .line 351
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 352
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 354
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_8
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 355
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v3, Lcom/alipay/mobile/nebula/R$id;->h5_material_background:I

    .line 356
    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 357
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_9

    .line 358
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 362
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_9
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1300(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 363
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1300(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->setContentView(Landroid/view/View;)V

    .line 365
    :cond_a
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1400(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 366
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 367
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1500(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 369
    :cond_b
    return-void

    .line 345
    :cond_c
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v2

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$900(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$1000(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog;Lcom/alipay/mobile/nebulacore/view/H5Dialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog$1;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;)Landroid/view/Window;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    return-object v0
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 516
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_material_background:I

    .line 517
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 518
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 521
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 3
    .param p1, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 524
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_material_background:I

    .line 525
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 526
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 527
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "canceledOnTouchOutside"    # Z

    .prologue
    .line 531
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$100(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 532
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 7
    .param p1, "contentView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 491
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 494
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 496
    check-cast v4, Landroid/widget/ListView;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 498
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_message_content_view:I

    .line 499
    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 500
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_1

    .line 501
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 502
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 505
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/AutoCompleteTextView;

    if-eqz v4, :cond_2

    .line 507
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 508
    .local v0, "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 509
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 510
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 504
    .end local v0    # "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 513
    :cond_3
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x2

    const/4 v6, 0x0

    .line 416
    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 420
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_card:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 422
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const/16 v2, 0xde

    invoke-static {v2, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 424
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 425
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 426
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v6, v6, v2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 427
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 429
    const/16 v2, 0x14

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41100000    # 9.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 430
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, -0x2

    .line 393
    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 394
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 397
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    sget v2, Lcom/alipay/mobile/nebula/R$drawable;->h5_dialog_card:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 399
    const/16 v2, 0xff

    const/16 v3, 0x23

    const/16 v4, 0x9f

    const/16 v5, 0xf2

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setGravity(I)V

    .line 402
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 403
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 404
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->this$0:Lcom/alipay/mobile/nebulacore/view/H5Dialog;

    .line 405
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/view/H5Dialog;->access$200(Lcom/alipay/mobile/nebulacore/view/H5Dialog;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 403
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 406
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 439
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;->mAlertDialogWindow:Landroid/view/Window;

    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_contentView:I

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 440
    .local v3, "l":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 441
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 444
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    new-instance v6, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder$1;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder$1;-><init>(Lcom/alipay/mobile/nebulacore/view/H5Dialog$Builder;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 464
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    move-object v5, p1

    .line 468
    check-cast v5, Landroid/view/ViewGroup;

    .line 470
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 471
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 472
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 473
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 474
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 475
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 470
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 479
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/AutoCompleteTextView;

    if-eqz v6, :cond_2

    .line 481
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 482
    .local v0, "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 483
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 484
    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 478
    .end local v0    # "autoCompleteTextView":Landroid/widget/AutoCompleteTextView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 488
    .end local v2    # "i":I
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method
