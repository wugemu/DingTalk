.class public Lcom/im/av/view/WxAlertDialog;
.super Landroid/app/AlertDialog;
.source "WxAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/av/view/WxAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private a:Lcom/im/av/view/WxAlertController;

.field private b:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget v0, Ljou$f;->aliwx_My_Theme_Dialog_Alert:I

    invoke-direct {p0, p1, v0}, Lcom/im/av/view/WxAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 70
    new-instance v0, Lcom/im/av/view/WxAlertController;

    invoke-virtual {p0}, Lcom/im/av/view/WxAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/im/av/view/WxAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/im/av/view/WxAlertDialog;)Lcom/im/av/view/WxAlertController;
    .locals 1
    .param p0, "x0"    # Lcom/im/av/view/WxAlertDialog;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    return-object v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 817
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "LG-.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 818
    invoke-virtual {p0}, Lcom/im/av/view/WxAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    .line 821
    :cond_0
    invoke-virtual {p0, p1}, Lcom/im/av/view/WxAlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 823
    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 1340
    packed-switch p1, :pswitch_data_0

    .line 1348
    const/4 v0, 0x0

    .line 1346
    :goto_0
    return-object v0

    .line 1342
    :pswitch_0
    iget-object v0, v0, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    goto :goto_0

    .line 1344
    :pswitch_1
    iget-object v0, v0, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    goto :goto_0

    .line 1346
    :pswitch_2
    iget-object v0, v0, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    goto :goto_0

    .line 1340
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 2336
    iget-object v0, v0, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    .line 100
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    iget-object v6, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 4210
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/im/av/view/WxAlertController;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4211
    :cond_0
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    const/high16 v1, 0x20000

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 4214
    :cond_1
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    iget v1, v6, Lcom/im/av/view/WxAlertController;->I:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 4361
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v1, Ljou$c;->contentPanel:I

    .line 4362
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4481
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->scrollView:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    .line 4482
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 4485
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->message:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    .line 4486
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 4490
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->g:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 4491
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->g:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4512
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 4513
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->button1:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    .line 4514
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4516
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4517
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4524
    :goto_1
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->button2:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    .line 4525
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4527
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->s:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4528
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4536
    :goto_2
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->button3:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    .line 4537
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4539
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->v:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4540
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4552
    :goto_3
    const/4 v1, 0x1

    if-ne v2, v1, :cond_14

    .line 4553
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Lcom/im/av/view/WxAlertController;->a(Landroid/widget/Button;)V

    .line 4560
    :cond_3
    :goto_4
    if-eqz v2, :cond_16

    const/4 v1, 0x1

    move v4, v1

    .line 4365
    :goto_5
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->a:Landroid/view/View;

    .line 4366
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->pcenterPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/im/av/view/WxAlertController;->b:Landroid/view/View;

    .line 4367
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->topPanel:I

    .line 4368
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 5422
    const/4 v5, 0x1

    .line 5424
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->D:Landroid/view/View;

    if-eqz v2, :cond_17

    .line 5426
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v7, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5430
    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->D:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5433
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5434
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4378
    :cond_4
    :goto_6
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->buttonPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 4379
    if-nez v4, :cond_5

    .line 4380
    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4383
    :cond_5
    const/4 v2, 0x0

    .line 4384
    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->i:Landroid/view/View;

    if-eqz v3, :cond_1c

    .line 4385
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->customPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 4386
    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v8, Ljou$c;->custom:I

    .line 4387
    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 4388
    iget-object v8, v6, Lcom/im/av/view/WxAlertController;->i:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4389
    iget-boolean v8, v6, Lcom/im/av/view/WxAlertController;->n:Z

    if-eqz v8, :cond_6

    .line 4390
    iget v8, v6, Lcom/im/av/view/WxAlertController;->j:I

    iget v9, v6, Lcom/im/av/view/WxAlertController;->k:I

    iget v10, v6, Lcom/im/av/view/WxAlertController;->l:I

    iget v11, v6, Lcom/im/av/view/WxAlertController;->m:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 4393
    :cond_6
    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    if-eqz v3, :cond_7

    .line 4394
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4408
    :cond_7
    :goto_7
    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v8, Ljou$c;->titleDivider:I

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 4410
    if-eqz v5, :cond_1d

    .line 4411
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 5601
    :goto_8
    const/4 v3, 0x4

    new-array v8, v3, [Landroid/view/View;

    .line 5602
    const/4 v3, 0x4

    new-array v9, v3, [Z

    .line 5606
    const/4 v3, 0x0

    .line 5607
    if-eqz v5, :cond_1e

    .line 5608
    const/4 v3, 0x0

    aput-object v1, v8, v3

    .line 5609
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v9, v1

    .line 5610
    const/4 v1, 0x1

    .line 5619
    :goto_9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_8

    const/4 v0, 0x0

    :cond_8
    aput-object v0, v8, v1

    .line 5621
    const/4 v0, 0x1

    aput-boolean v0, v9, v1

    .line 5622
    add-int/lit8 v0, v1, 0x1

    .line 5623
    if-eqz v2, :cond_9

    .line 5624
    aput-object v2, v8, v0

    .line 5625
    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 5626
    add-int/lit8 v0, v0, 0x1

    .line 5628
    :cond_9
    if-eqz v4, :cond_a

    .line 5629
    aput-object v7, v8, v0

    .line 5630
    const/4 v1, 0x1

    aput-boolean v1, v9, v0

    .line 5693
    :cond_a
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_b

    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->F:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 5694
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->F:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5695
    iget v0, v6, Lcom/im/av/view/WxAlertController;->G:I

    if-ltz v0, :cond_b

    .line 5696
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    iget v1, v6, Lcom/im/av/view/WxAlertController;->G:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 5697
    iget-object v0, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    iget v1, v6, Lcom/im/av/view/WxAlertController;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5834
    :cond_b
    iget-boolean v0, p0, Lcom/im/av/view/WxAlertDialog;->b:Z

    if-eqz v0, :cond_e

    .line 5835
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 5963
    iget-object v1, v0, Lcom/im/av/view/WxAlertController;->a:Landroid/view/View;

    if-nez v1, :cond_c

    .line 5964
    iget-object v1, v0, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    iget v2, v0, Lcom/im/av/view/WxAlertController;->I:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 5965
    iget-object v1, v0, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/im/av/view/WxAlertController;->a:Landroid/view/View;

    .line 5967
    :cond_c
    iget-object v0, v0, Lcom/im/av/view/WxAlertController;->a:Landroid/view/View;

    .line 5836
    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 5971
    iget-object v2, v1, Lcom/im/av/view/WxAlertController;->b:Landroid/view/View;

    if-nez v2, :cond_d

    .line 5972
    iget-object v2, v1, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    iget v3, v1, Lcom/im/av/view/WxAlertController;->I:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(I)V

    .line 5973
    iget-object v2, v1, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->contentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/im/av/view/WxAlertController;->b:Landroid/view/View;

    .line 5975
    :cond_d
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->b:Landroid/view/View;

    .line 5837
    new-instance v2, Lcom/im/av/view/WxAlertDialog$1;

    invoke-direct {v2, p0, v1}, Lcom/im/av/view/WxAlertDialog$1;-><init>(Lcom/im/av/view/WxAlertDialog;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    :cond_e
    return-void

    .line 4493
    :cond_f
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4494
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 4496
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    .line 4497
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v2, Ljou$c;->scrollView:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4498
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->h:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4500
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 4503
    :cond_10
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 4519
    :cond_11
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4520
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 4521
    const/4 v1, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 4530
    :cond_12
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->s:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4531
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4533
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 4542
    :cond_13
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->v:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4543
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 4545
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_3

    .line 4554
    :cond_14
    const/4 v1, 0x2

    if-ne v2, v1, :cond_15

    .line 4555
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Lcom/im/av/view/WxAlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_4

    .line 4556
    :cond_15
    const/4 v1, 0x4

    if-ne v2, v1, :cond_3

    .line 4557
    iget-object v1, v6, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Lcom/im/av/view/WxAlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_4

    .line 4560
    :cond_16
    const/4 v1, 0x0

    move v4, v1

    goto/16 :goto_5

    .line 5436
    :cond_17
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->f:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x1

    move v3, v2

    .line 5438
    :goto_a
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v7, Ljou$c;->icon:I

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    .line 5439
    if-eqz v3, :cond_1b

    .line 5442
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->alertTitle:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v6, Lcom/im/av/view/WxAlertController;->B:Landroid/widget/TextView;

    .line 5444
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->B:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5452
    iget v2, v6, Lcom/im/av/view/WxAlertController;->y:I

    if-lez v2, :cond_19

    .line 5453
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    iget v3, v6, Lcom/im/av/view/WxAlertController;->y:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 5436
    :cond_18
    const/4 v2, 0x0

    move v3, v2

    goto :goto_a

    .line 5454
    :cond_19
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->z:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1a

    .line 5455
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->z:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 5456
    :cond_1a
    iget v2, v6, Lcom/im/av/view/WxAlertController;->y:I

    if-nez v2, :cond_4

    .line 5462
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->B:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v7, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    .line 5463
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    iget-object v8, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    .line 5464
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    .line 5465
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    .line 5462
    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5466
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 5471
    :cond_1b
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v3, Ljou$c;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5472
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5473
    iget-object v2, v6, Lcom/im/av/view/WxAlertController;->A:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5474
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_6

    .line 4397
    :cond_1c
    iget-object v3, v6, Lcom/im/av/view/WxAlertController;->e:Landroid/view/Window;

    sget v8, Ljou$c;->customPanel:I

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 4413
    :cond_1d
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_1e
    move v1, v3

    goto/16 :goto_9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 263
    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 6353
    iget-object v2, v1, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 263
    :goto_0
    if-eqz v1, :cond_1

    .line 264
    :goto_1
    return v0

    .line 6353
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 264
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-object v1, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 6357
    iget-object v2, v1, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->x:Landroid/widget/ScrollView;

    invoke-virtual {v1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 269
    :goto_0
    if-eqz v1, :cond_1

    .line 270
    :goto_1
    return v0

    .line 6357
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 270
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 167
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/im/av/view/WxAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 168
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/im/av/view/WxAlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 154
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/im/av/view/WxAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 209
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/im/av/view/WxAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 177
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/im/av/view/WxAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 222
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/im/av/view/WxAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/im/av/view/WxAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 235
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/im/av/view/WxAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 195
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 829
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 830
    iput-boolean p1, p0, Lcom/im/av/view/WxAlertDialog;->b:Z

    .line 831
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 3229
    iput-object p1, v0, Lcom/im/av/view/WxAlertController;->D:Landroid/view/View;

    .line 114
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    invoke-virtual {v0, p1}, Lcom/im/av/view/WxAlertController;->a(I)V

    .line 244
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    invoke-virtual {v0, p1}, Lcom/im/av/view/WxAlertController;->a(Landroid/graphics/drawable/Drawable;)V

    .line 248
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    invoke-virtual {v0, p1}, Lcom/im/av/view/WxAlertController;->a(Z)V

    .line 252
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    invoke-virtual {v0, p1}, Lcom/im/av/view/WxAlertController;->b(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    invoke-virtual {v0, p1}, Lcom/im/av/view/WxAlertController;->a(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    invoke-virtual {v0, p1}, Lcom/im/av/view/WxAlertController;->b(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    iget-object v0, p0, Lcom/im/av/view/WxAlertDialog;->a:Lcom/im/av/view/WxAlertController;

    .line 3253
    iput-object p1, v0, Lcom/im/av/view/WxAlertController;->i:Landroid/view/View;

    .line 3254
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/im/av/view/WxAlertController;->n:Z

    .line 3255
    iput p2, v0, Lcom/im/av/view/WxAlertController;->j:I

    .line 3256
    iput p3, v0, Lcom/im/av/view/WxAlertController;->k:I

    .line 3257
    iput p4, v0, Lcom/im/av/view/WxAlertController;->l:I

    .line 3258
    iput p5, v0, Lcom/im/av/view/WxAlertController;->m:I

    .line 140
    return-void
.end method
