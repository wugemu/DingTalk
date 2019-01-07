.class public Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectorDepartmentActivity.java"


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

.field private h:Lfgj;

.field private i:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcoi;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/Button;

.field private t:Z

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/BroadcastReceiver;

.field private y:Lffq;

.field private final z:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 66
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    .line 67
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b:J

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    .line 87
    iput v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->p:Ljava/util/List;

    .line 225
    new-instance v0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->x:Landroid/content/BroadcastReceiver;

    .line 443
    new-instance v0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->y:Lffq;

    .line 512
    iput v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->z:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->e:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lfgj;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->h:Lfgj;

    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V
    .locals 4
    .param p1, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p2, "orgName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 338
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->bread_crumb_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 339
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 340
    if-eqz p1, :cond_0

    .line 341
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 342
    invoke-static {p1}, Lfxe;->c(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_0
    new-instance v1, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b()V

    .line 369
    return-void

    .line 344
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lezg$l;->foot_dept_txt:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 347
    :cond_1
    sget v1, Lezg$h;->tv_dept_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;II)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
    .param p2, "x2"    # I

    .prologue
    const/4 v6, 0x1

    .line 64
    .line 5410
    :goto_0
    if-le p1, p2, :cond_0

    .line 5411
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5412
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->k:Lcoi;

    invoke-virtual {v1, v0}, Lcoi;->a(Ljava/lang/String;)V

    .line 5414
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5415
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5410
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 5418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5419
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 5420
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->k:Lcoi;

    .line 6155
    iget-object v2, v2, Lcoi;->a:Ljava/util/HashMap;

    .line 5420
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 5421
    if-nez v2, :cond_1

    .line 5422
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5423
    const-string/jumbo v2, "choose_mode"

    iget v4, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5424
    const-string/jumbo v2, "display_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5425
    const-string/jumbo v2, "display_department_oid"

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 5426
    const-string/jumbo v1, "count_limit"

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->u:I

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5427
    const-string/jumbo v1, "count_limit_str"

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->v:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5428
    new-instance v2, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-direct {v2}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;-><init>()V

    .line 5429
    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5431
    :cond_1
    instance-of v1, v2, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 5432
    check-cast v1, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .line 5433
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->y:Lffq;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lffq;)V

    .line 5434
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-virtual {v1, v3, v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Ljava/util/List;Z)V

    .line 5435
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->p:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Ljava/util/List;)V

    .line 5437
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->k:Lcoi;

    invoke-virtual {v1, v0, v2, v6}, Lcoi;->b(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .prologue
    .line 64
    .line 4467
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4468
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 4469
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 4470
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4471
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;
    .param p1, "x1"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 376
    .local v0, "breadCrumbCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 377
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 378
    .local v2, "view":Landroid/view/View;
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_1

    .line 379
    sget v3, Lezg$h;->tv_dept_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->text_color_bread_gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 382
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42200000    # 40.0f

    .line 383
    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 382
    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    :goto_1
    if-nez v1, :cond_0

    if-le v0, v7, :cond_0

    .line 392
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 393
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 394
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 396
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 397
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_1
    sget v3, Lezg$h;->tv_dept_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->text_color_blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 387
    sget v3, Lezg$h;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {v2, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    .line 399
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    return-object v0
.end method

.method private c()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 526
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    const-string/jumbo v1, "%s(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lezg$l;->sure:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->i:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b()V

    return-void
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->u:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->w:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "isFirst"    # Z
    .param p2, "node"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "isFootStart"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 246
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "choose_mode"

    iget v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string/jumbo v6, "display_enterprise_oid"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 249
    const-string/jumbo v6, "display_department_oid"

    iget-wide v8, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->b:J

    invoke-virtual {v2, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 250
    const-string/jumbo v6, "bread_node_name"

    invoke-virtual {v2, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string/jumbo v6, "node"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 252
    const-string/jumbo v6, "count_limit"

    iget v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->u:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string/jumbo v6, "count_limit_str"

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->v:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v3, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-direct {v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;-><init>()V

    .line 255
    .local v3, "fragment":Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    invoke-virtual {v3, v2}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 256
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->y:Lffq;

    invoke-virtual {v3, v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Lffq;)V

    .line 258
    const/4 v4, 0x0

    .line 259
    .local v4, "key":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 260
    sget v6, Lezg$l;->foot_dept_txt:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    const/4 v6, 0x0

    invoke-direct {p0, v6, v4}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 320
    :goto_0
    if-eqz v3, :cond_0

    .line 321
    iput-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .line 322
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->p:Ljava/util/List;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Ljava/util/List;)V

    .line 323
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->f:Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    iget-object v8, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    if-nez p1, :cond_a

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v8, v6}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Ljava/util/List;Z)V

    .line 324
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->k:Lcoi;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v3, v7}, Lcoi;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;Z)V

    .line 326
    :cond_0
    return-void

    .line 264
    :cond_1
    if-eqz p2, :cond_7

    .line 266
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    .line 267
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget v7, Lezg$l;->foot_dept_txt:I

    invoke-virtual {p0, v7}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 268
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const/4 v6, 0x0

    invoke-direct {p0, v6, p3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 272
    :cond_3
    iget-object v6, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 273
    iget-object v6, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->masterNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 274
    .local v5, "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    invoke-static {v5}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 275
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v7, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4329
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    .end local v5    # "orgNodeItemObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    :cond_4
    if-eqz p1, :cond_6

    .line 280
    invoke-static {p2}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 281
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 294
    :cond_5
    :goto_3
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-static {p0, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 295
    .local v0, "MEAN_WIDTH":I
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->i:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    const-string/jumbo v7, "scrollX"

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    .line 296
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    mul-int/2addr v10, v0

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 297
    .local v1, "animator":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit16 v6, v6, 0xfa

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 298
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 285
    .end local v0    # "MEAN_WIDTH":I
    .end local v1    # "animator":Landroid/animation/ObjectAnimator;
    :cond_6
    invoke-static {p2}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 286
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v6, 0x0

    invoke-direct {p0, p2, v6}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    goto :goto_3

    .line 301
    :cond_7
    invoke-static {p2}, Lfxe;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 303
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 304
    sget v6, Lezg$l;->foot_dept_txt:I

    invoke-virtual {p0, v6}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 309
    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->l:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;)V

    .line 312
    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->i:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    new-instance v7, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$3;

    invoke-direct {v7, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    invoke-virtual {v6, v7}, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 306
    :cond_9
    move-object v4, p3

    goto :goto_4

    .line 323
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 104
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    sget v0, Lezg$j;->activity_select_department:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->setContentView(I)V

    .line 106
    new-instance v0, Lcoi;

    sget v1, Lezg$h;->ll_fragment_container:I

    invoke-direct {v0, p0, v1}, Lcoi;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->k:Lcoi;

    .line 1159
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1160
    const-string/jumbo v0, "display_enterprise_oid"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    .line 1161
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c:Ljava/lang/String;

    .line 1162
    const-string/jumbo v0, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    .line 1163
    const-string/jumbo v0, "node"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 1164
    const-string/jumbo v0, "org_name"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->d:Ljava/lang/String;

    .line 1165
    const-string/jumbo v0, "select_deparment_from_root"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->t:Z

    .line 1166
    const-string/jumbo v0, "count_limit"

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->u:I

    .line 1167
    const-string/jumbo v0, "count_limit_str"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->v:Ljava/lang/String;

    .line 1168
    const-string/jumbo v0, "uncheck_department_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1169
    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->w:Ljava/lang/String;

    .line 1170
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1171
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1172
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1175
    :cond_0
    const-string/jumbo v0, "checked_department_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1177
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 1178
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1182
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_2

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->q:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->orgId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    .line 1188
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 1189
    sget v0, Lezg$l;->org_get_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1190
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->finish()V

    .line 1193
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1194
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1195
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1196
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1198
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1199
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->d:Ljava/lang/String;

    .line 2118
    :cond_5
    sget v0, Lezg$h;->horizontal_scroller_bread_crumbs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->i:Lcom/alibaba/android/user/widget/LimitedSizeHorizontalScrollView;

    .line 2119
    sget v0, Lezg$h;->ll_bread_crumbs:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->j:Landroid/widget/LinearLayout;

    .line 2120
    sget v0, Lezg$h;->horizontal_scroller:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .line 2121
    new-instance v0, Lfgj;

    invoke-direct {v0, p0}, Lfgj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->h:Lfgj;

    .line 2122
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->h:Lfgj;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2123
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2137
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2140
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;-><init>()V

    .line 2141
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    .line 2142
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;->DEPT:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->nodeType:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject$NodeType;

    .line 2143
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2145
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->h:Lfgj;

    .line 3045
    iput-object v1, v0, Lfgj;->b:Ljava/util/List;

    .line 3046
    invoke-virtual {v0}, Lfgj;->notifyDataSetChanged()V

    .line 2147
    :cond_7
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    if-ne v0, v6, :cond_8

    .line 2148
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3487
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->r:Landroid/view/View;

    .line 3488
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->r:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    .line 3489
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->s:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4212
    const-string/jumbo v1, "com.workapp.add.new.editor.fragment"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4213
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4218
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->selected_dept_txt:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->t:Z

    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->a(ZLcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;Z)V

    .line 112
    return-void

    .line 2150
    :cond_8
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 4221
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 516
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->n:I

    if-nez v1, :cond_0

    .line 517
    sget v1, Lezg$l;->sure:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 518
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->r:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 519
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 520
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->c()V

    .line 522
    .end local v0    # "menuItem":Landroid/view/MenuItem;
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
    .line 479
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 480
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/SelectorDepartmentActivity;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 481
    return-void
.end method
