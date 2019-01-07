.class public abstract Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "CMailBaseSearchFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field protected a:Ljava/lang/String;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

.field protected f:Landroid/widget/ListView;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/ProgressBar;

.field protected j:Landroid/widget/TextView;

.field protected k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

.field protected l:I

.field protected m:Ljava/lang/String;

.field protected n:Landroid/view/View$OnClickListener;

.field protected o:Z

.field protected final p:I

.field protected q:I

.field protected r:Z

.field protected s:Landroid/widget/TextView;

.field protected t:Landroid/view/View;

.field protected u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

.field protected v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

.field protected w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected x:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->h:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->i:Landroid/widget/ProgressBar;

    .line 107
    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->j:Landroid/widget/TextView;

    .line 117
    iput v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->l:I

    .line 137
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->p:I

    .line 138
    iput v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->q:I

    .line 167
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->x:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 199
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->A:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    .locals 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "searchType"    # I
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 221
    .local v3, "searchFragment":Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-object v3, v0

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "account_name"

    invoke-virtual {v1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v4, "mail_search_type"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {v3, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 232
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v3

    .line 226
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 228
    const-string/jumbo v4, "CMailBaseSearchFragment"

    invoke-static {v4, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 229
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V
    .locals 15
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    const/4 v14, -0x2

    const/4 v6, 0x0

    .line 38
    .line 2402
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->d()Ljava/util/List;

    move-result-object v7

    .line 2403
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildCount()I

    move-result v4

    .line 2404
    if-nez v7, :cond_0

    move v3, v6

    .line 2406
    :goto_0
    if-le v4, v3, :cond_1

    move v2, v3

    :goto_1
    move v5, v6

    .line 2407
    :goto_2
    if-ge v5, v2, :cond_2

    .line 2408
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;

    .line 2409
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 2411
    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V

    .line 2407
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 2404
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 2406
    goto :goto_1

    .line 2414
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$d;->cmail_dimen_12_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    .line 2415
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laxo$d;->cmail_dimen_16_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move v1, v2

    .line 2417
    :goto_3
    if-ge v1, v3, :cond_3

    .line 2418
    new-instance v9, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;-><init>(Landroid/content/Context;)V

    .line 2419
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    .line 2421
    invoke-direct {p0, v9, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V

    .line 2422
    new-instance v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;

    invoke-direct {v0, v14, v14}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;-><init>(II)V

    .line 2423
    div-int/lit8 v10, v5, 0x2

    div-int/lit8 v11, v8, 0x2

    div-int/lit8 v12, v5, 0x2

    div-int/lit8 v13, v8, 0x2

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout$LayoutParams;->setMargins(IIII)V

    .line 2424
    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->addView(Landroid/view/View;)V

    .line 2417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2428
    :cond_3
    add-int/lit8 v0, v4, -0x1

    :goto_4
    if-lt v0, v2, :cond_4

    .line 2429
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->removeViewAt(I)V

    .line 2428
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 2432
    :cond_4
    if-lez v3, :cond_5

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2433
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    .line 2435
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method private a(Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V
    .locals 5
    .param p1, "button"    # Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;
    .param p2, "historyModel"    # Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 440
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget v3, p2, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->type:I

    .line 445
    .local v3, "type":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setTag(Ljava/lang/Object;)V

    .line 446
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    .local v0, "des":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    sget v4, Laxo$i;->alm_cmail_recipeint_status_unknown:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_2
    iget-object v2, p2, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->searchKey:Ljava/lang/String;

    .line 451
    .local v2, "searchKey":Ljava/lang/String;
    iget-object v1, p2, Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;->extend:Ljava/lang/String;

    .line 452
    .local v1, "extend":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setLeftText(Ljava/lang/String;)V

    .line 453
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    :goto_1
    invoke-virtual {p1, v4}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setRightText(Ljava/lang/String;)V

    .line 455
    new-instance v4, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    move-object v4, v1

    .line 453
    goto :goto_1
.end method

.method private b(Ljava/lang/String;I)V
    .locals 5
    .param p1, "searchKey"    # Ljava/lang/String;
    .param p2, "offset"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v3}, Lss;->a(Landroid/view/View;Z)V

    .line 364
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    if-gtz p2, :cond_1

    .line 368
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->o:Z

    .line 369
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 370
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->q:I

    .line 375
    :goto_1
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->r:Z

    .line 376
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->g()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(I)V

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 372
    :cond_1
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->o:Z

    goto :goto_1
.end method


# virtual methods
.method public final F_()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method protected a(I)V
    .locals 3
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 509
    if-nez p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->n:Landroid/view/View$OnClickListener;

    .line 395
    return-void
.end method

.method protected abstract a(Landroid/view/View;)V
.end method

.method protected abstract a(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation
.end method

.method public final a(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;)V
    .locals 0
    .param p1, "searchCallback"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    .line 391
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchKey"    # Ljava/lang/String;

    .prologue
    .line 348
    .line 2352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->m:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2356
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->m:Ljava/lang/String;

    .line 2357
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->b(Ljava/lang/String;I)V

    .line 349
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/String;I)V
.end method

.method protected abstract c()Landroid/widget/ListAdapter;
.end method

.method protected abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract f()I
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 523
    sget v0, Laxo$i;->dt_cmail_not_found_des:I

    return v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x0

    return v0
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract l_()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1240
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1241
    const-string/jumbo v3, "account_name"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    .line 1242
    const-string/jumbo v3, "mail_search_type"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->l:I

    .line 1244
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 255
    :goto_0
    if-nez v0, :cond_2

    .line 256
    const-string/jumbo v0, "CMailBaseSearchFragment"

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "searchFragment init args fail, accountName: "

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 268
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1244
    goto :goto_0

    .line 261
    :cond_1
    const-string/jumbo v0, "CMailBaseSearchFragment"

    const-string/jumbo v3, "searchFragment getActivity() is null, can not finish"

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 1272
    sget v0, Laxo$f;->search_layout:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->b:Landroid/view/View;

    .line 1273
    sget v0, Laxo$f;->search_history:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->c:Landroid/view/View;

    .line 1274
    sget v0, Laxo$f;->clear_view:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->d:Landroid/view/View;

    .line 1275
    sget v0, Laxo$f;->history_layout:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    .line 1276
    sget v0, Laxo$f;->list:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    .line 1277
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    .line 1278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1279
    sget v0, Laxo$f;->empty_des:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->s:Landroid/widget/TextView;

    .line 1280
    sget v0, Laxo$f;->progressContainer:I

    invoke-static {v3, v0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->t:Landroid/view/View;

    .line 1281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-static {v0, v2}, Lss;->a(Landroid/view/View;Z)V

    .line 1282
    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Landroid/view/View;)V

    .line 1286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->A:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1287
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->d:Landroid/view/View;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->l_()V

    .line 1304
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1305
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1307
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setMaxLineNum(I)V

    .line 1308
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->e:Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/FlowLayout;->setIsExpend(Z)V

    .line 1310
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    .line 1311
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    const/4 v2, 0x5

    sget v3, Laxo$i;->dt_cmail_contacts:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1312
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    sget v2, Laxo$i;->dt_cmail_contacts:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1313
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    const/4 v2, 0x4

    sget v3, Laxo$i;->dt_cmail_contacts:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1314
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    sget v2, Laxo$i;->mail_topic:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1315
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    sget v2, Laxo$i;->dt_cmail_body:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1316
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    const/4 v1, 0x6

    sget v2, Laxo$i;->dt_mail_filter_attachment_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lpn;->b(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    .line 1319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->x:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 1320
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->load()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 491
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onDestroy()V

    .line 492
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->x:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->x:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 494
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->v:Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->release()V

    .line 495
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->x:Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 500
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->w:Landroid/util/SparseArray;

    .line 502
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 343
    iput p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->y:I

    .line 344
    iput p3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->z:I

    .line 345
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 330
    if-nez p2, :cond_0

    .line 331
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->y:I

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->z:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->k:Lcom/alibaba/alimei/mail/widget/MailListMoreView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/MailListMoreView;->a(I)V

    .line 1386
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->h()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 249
    sget v0, Laxo$g;->cmail_fragment_search:I

    return v0
.end method
