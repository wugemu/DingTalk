.class public Lcom/alibaba/android/user/label/LabelSelectActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "LabelSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private c:Landroid/widget/LinearLayout;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfqx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

.field private u:Landroid/widget/Button;

.field private v:Ldq;

.field private w:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/alibaba/android/user/label/LabelSelectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/label/LabelSelectActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->b:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/alibaba/android/user/label/LabelSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/label/LabelSelectActivity$1;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->w:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/label/LabelSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/label/LabelSelectActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/label/LabelSelectActivity;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 72
    .line 3378
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 3380
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    if-nez v0, :cond_2

    .line 3381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    .line 3385
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 3390
    add-int/lit8 v3, v1, 0x1

    .line 3391
    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3395
    :cond_0
    sget v1, Lezg$j;->item_label_selector:I

    iget-object v6, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3398
    sget v1, Lezg$h;->iv_label_group_icon:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3399
    iget v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    invoke-static {v7}, Lfnn;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3402
    sget v1, Lezg$h;->tv_customer_group:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3403
    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3404
    iget v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->color:I

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3407
    sget v1, Lezg$h;->bottom_divider:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 3408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v3, v1, :cond_3

    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3411
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3412
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    .line 3413
    if-eqz v0, :cond_1

    .line 3416
    new-instance v8, Lcom/alibaba/android/user/label/LabelExtensionObject;

    invoke-direct {v8, v0}, Lcom/alibaba/android/user/label/LabelExtensionObject;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)V

    .line 3417
    iget-object v9, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->r:Ljava/util/List;

    invoke-static {v9, v0}, Lfnn;->a(Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/alibaba/android/user/label/LabelExtensionObject;->setIsChecked(Z)V

    .line 3418
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3383
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 3408
    goto :goto_2

    .line 3422
    :cond_4
    sget v0, Lezg$h;->customer_grid_view:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 3423
    new-instance v8, Lfqx;

    iget-boolean v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->m:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_4
    invoke-direct {v8, p0, v1}, Lfqx;-><init>(Landroid/app/Activity;Z)V

    .line 3424
    invoke-virtual {v8, v7}, Lfqx;->a(Ljava/util/List;)V

    .line 3425
    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3426
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3427
    new-instance v0, Lcom/alibaba/android/user/label/LabelSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/label/LabelSelectActivity$4;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity;)V

    .line 4147
    iput-object v0, v8, Lfqx;->a:Lfqy;

    .line 3435
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3436
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3437
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    .line 3438
    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 3423
    goto :goto_4

    .line 3440
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->i()V

    .line 72
    return-void

    :cond_7
    move v1, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/label/LabelSelectActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->q:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/android/user/label/LabelSelectActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/label/LabelSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/label/LabelSelectActivity;)Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 320
    sget-object v1, Lcom/alibaba/android/user/label/LabelSelectActivity;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 321
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lcom/alibaba/android/user/label/LabelSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/label/LabelSelectActivity$3;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 473
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqx;

    .line 475
    .local v0, "adapter":Lfqx;
    invoke-virtual {v0}, Lfqx;->a()V

    goto :goto_0

    .line 478
    .end local v0    # "adapter":Lfqx;
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/label/LabelSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->i()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/user/label/LabelSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/label/LabelSelectActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/label/LabelSelectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/label/LabelSelectActivity;

    .prologue
    .line 72
    iget v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->g:I

    return v0
.end method

.method private g()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 506
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v1, "labelObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    if-nez v2, :cond_1

    .line 519
    :cond_0
    return-object v1

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfqx;

    .line 513
    .local v0, "adapter":Lfqx;
    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {v0}, Lfqx;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 524
    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 525
    :cond_0
    sget v2, Lezg$l;->dt_external_contact_label_setting_select_title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/label/LabelSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 537
    :goto_0
    return-object v2

    .line 528
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 529
    .local v0, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 531
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 534
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 537
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 542
    iget-boolean v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->m:Z

    if-nez v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 547
    .local v0, "labelObjectList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->u:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->u:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_ok:I

    if-ne v0, v1, :cond_2

    .line 2459
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_key_select_labels"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2460
    const-string/jumbo v1, "org_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2461
    const-string/jumbo v1, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2462
    const-string/jumbo v1, "intent_key_label_list"

    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2463
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2464
    const-string/jumbo v1, "choose_user_identities"

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2467
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 2468
    invoke-virtual {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->finish()V

    .line 455
    :cond_1
    :goto_0
    return-void

    .line 448
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->btn_reset:I

    if-ne v0, v1, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->d()V

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tc_person_filter:I

    if-ne v0, v1, :cond_6

    .line 2482
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2483
    const-string/jumbo v0, "choose_mode"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2484
    const-string/jumbo v0, "choose_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->f:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2485
    const-string/jumbo v0, "display_enterprise_oid"

    iget-wide v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->f:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2486
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    if-eqz v0, :cond_4

    .line 2487
    const-string/jumbo v0, "intent_key_filter_model"

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2489
    :cond_4
    const-string/jumbo v0, "activity_identify"

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 2491
    const-string/jumbo v0, "seleced_members"

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2493
    :cond_5
    const-string/jumbo v0, "can_choose_current_user"

    iget-boolean v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->j:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2494
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/org_contact.html"

    new-instance v3, Lcom/alibaba/android/user/label/LabelSelectActivity$5;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/user/label/LabelSelectActivity$5;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity;Landroid/os/Bundle;)V

    .line 2495
    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 452
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->tv_admin_link:I

    if-ne v0, v1, :cond_1

    .line 453
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    const-string/jumbo v1, "https://tms.dingtalk.com/markets/dingtalk/biaoqianzu"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 149
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    sget v0, Lezg$j;->activity_label_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->setContentView(I)V

    .line 1205
    invoke-virtual {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1210
    const-string/jumbo v0, "activity_identify"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->h:Ljava/lang/String;

    .line 1215
    const-string/jumbo v0, "org_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->f:J

    .line 1220
    const-string/jumbo v0, "intent_key_label_data_type"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->g:I

    .line 1225
    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->e:Ljava/lang/String;

    .line 1230
    const-string/jumbo v0, "intent_key_is_show_label_customize_guide"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->o:Z

    .line 1235
    const-string/jumbo v0, "intent_key_can_choose_people"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->i:Z

    .line 1240
    const-string/jumbo v0, "can_choose_current_user"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->j:Z

    .line 1245
    const-string/jumbo v0, "intent_key_choose_people_title"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->k:Ljava/lang/String;

    .line 1250
    const-string/jumbo v0, "intent_key_filter_model"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->l:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .line 1255
    const-string/jumbo v0, "intent_key_is_single_choose"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->m:Z

    .line 1260
    const-string/jumbo v0, "intent_key_is_show_reset"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->n:Z

    .line 1265
    const-string/jumbo v0, "intent_key_is_show_label_manage"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->p:Z

    .line 1270
    const-string/jumbo v0, "intent_key_label_list"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->r:Ljava/util/List;

    .line 1275
    const-string/jumbo v0, "choose_user_identities"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->s:Ljava/util/ArrayList;

    .line 1280
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lezg$l;->dt_user_external_contact_label_select_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1282
    sget v0, Lezg$h;->ll_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->c:Landroid/widget/LinearLayout;

    .line 1285
    sget v0, Lezg$h;->tc_person_filter:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1287
    iget-object v3, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-boolean v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    iget-object v3, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setTitle(Ljava/lang/String;)V

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->t:Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;

    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/uidic/cells/C1T1TextCell;->setContent(Ljava/lang/String;)V

    .line 1294
    sget v0, Lezg$h;->btn_reset:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1295
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    iget-boolean v3, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->n:Z

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1299
    sget v0, Lezg$h;->btn_ok:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->u:Landroid/widget/Button;

    .line 1300
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1303
    sget v0, Lezg$h;->tv_admin_link:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1304
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    iget-boolean v3, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->o:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1310
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1311
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1312
    const-string/jumbo v1, "action_key_save_label_group"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1313
    const-string/jumbo v1, "action_key_delete_label_group"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1314
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->v:Ldq;

    .line 1315
    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->v:Ldq;

    iget-object v2, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    invoke-direct {p0}, Lcom/alibaba/android/user/label/LabelSelectActivity;->c()V

    .line 156
    return-void

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1287
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1296
    goto :goto_2

    :cond_4
    move v1, v2

    .line 1305
    goto :goto_3
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

    .line 169
    iget-boolean v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->p:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->q:Z

    if-eqz v1, :cond_0

    .line 170
    sget v1, Lezg$l;->dt_external_contact_label_setting:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    .local v0, "menuItemSent":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 172
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    .end local v0    # "menuItemSent":Landroid/view/MenuItem;
    :cond_0
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
    .line 160
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->v:Ldq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->w:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->v:Ldq;

    iget-object v1, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 2189
    :pswitch_0
    iget-wide v0, p0, Lcom/alibaba/android/user/label/LabelSelectActivity;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2193
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/external/label_settings.html"

    new-instance v2, Lcom/alibaba/android/user/label/LabelSelectActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/label/LabelSelectActivity$2;-><init>(Lcom/alibaba/android/user/label/LabelSelectActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
