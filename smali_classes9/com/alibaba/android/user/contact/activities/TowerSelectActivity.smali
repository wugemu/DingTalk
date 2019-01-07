.class public Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "TowerSelectActivity.java"

# interfaces
.implements Lfhw;


# static fields
.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private A:I

.field private final B:I

.field a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field b:Lfgw;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Lfhx;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private o:Landroid/view/View;

.field private p:Landroid/widget/CheckBox;

.field private q:Z

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/Runnable;

.field private final u:F

.field private final v:F

.field private w:Lcjo$a;

.field private x:Z

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    const-string/jumbo v0, "[a-zA-z]+[\\^]+[a-zA-z\\^]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->z:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->d:Landroid/os/Handler;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    .line 115
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->q:Z

    .line 123
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->u:F

    .line 125
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->v:F

    .line 129
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->x:Z

    .line 581
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->B:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pinyin"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 484
    sget-object v3, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->z:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    const-string/jumbo v3, "\\^"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "stringArraySplits":[Ljava/lang/String;
    array-length v3, v2

    if-le v3, v4, :cond_1

    .line 489
    aget-object v0, v2, v5

    .line 490
    .local v0, "s1":Ljava/lang/String;
    aget-object v1, v2, v4

    .line 492
    .local v1, "s2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 493
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 496
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_1

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    .end local v0    # "s1":Ljava/lang/String;
    .end local v1    # "s2":Ljava/lang/String;
    .end local v2    # "stringArraySplits":[Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    .line 6381
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->q:Z

    .line 6382
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    .line 7050
    iget-object v2, v2, Lfgf;->b:Ljava/util/List;

    .line 6383
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->q:Z

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    if-le v3, v4, :cond_1

    .line 6384
    sget v2, Lezg$l;->can_choose_people:I

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 6385
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->q:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6386
    :goto_0
    return-void

    .line 6389
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 6390
    if-eqz v0, :cond_2

    .line 6393
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 6394
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v3, v0}, Lfhx;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6397
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v3, v0}, Lfhx;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6400
    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->q:Z

    if-eqz v3, :cond_3

    .line 6401
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v3, v0}, Lfhx;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6403
    :cond_3
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v3, v0, v1}, Lfhx;->a(Ljava/lang/Object;Z)Z

    goto :goto_1

    .line 6406
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    invoke-virtual {v0}, Lfgw;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->x:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 410
    .line 5509
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5510
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5511
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5512
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 411
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    const-string/jumbo v0, "EVENTBUTLER"

    .line 412
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 411
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 451
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lezg$g;->icon_clear:I

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 647
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-ne v6, v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 667
    :goto_0
    return-void

    .line 649
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-ne v5, v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 653
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    if-nez v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    const-string/jumbo v1, "%s(%d)"

    new-array v2, v6, [Ljava/lang/Object;

    sget v3, Lezg$l;->sure:I

    .line 655
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :goto_1
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    if-nez v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    const-string/jumbo v1, "%s(%d/%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lezg$l;->sure:I

    .line 658
    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    .line 659
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 658
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfhx;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    return-object v0
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 737
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 738
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Lezg$l;->cancel_create_conversation_tips:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->sure:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$7;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$7;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    .line 739
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lezg$l;->cancel:I

    new-instance v3, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$6;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$6;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    .line 747
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 751
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 752
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c()V

    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lfgw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    return v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    .line 7519
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 7520
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    const/16 v2, 0x8

    .line 73
    .line 7528
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7529
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 7530
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7531
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7537
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    return-void
.end method

.method static synthetic r(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    return v0
.end method

.method static synthetic t(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    return v0
.end method

.method static synthetic u(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;

    .prologue
    .line 73
    .line 7698
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->finish()V

    .line 73
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 671
    iget v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    if-lt v2, v3, :cond_0

    .line 672
    sget v2, Lezg$l;->create_conversation_choose_limit:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 678
    :goto_0
    return v0

    .line 675
    :cond_0
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    .line 676
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->d()V

    .line 677
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iget-object v2, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Ljava/lang/Object;)V

    move v0, v1

    .line 678
    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/user/contact/org/model/SelectModel;)Z
    .locals 2
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 683
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    if-lez v0, :cond_0

    .line 684
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->d()V

    .line 687
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iget-object v1, p1, Lcom/alibaba/android/user/contact/org/model/SelectModel;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->b(Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lcom/alibaba/android/user/contact/org/model/SelectModel;)V
    .locals 0
    .param p1, "model"    # Lcom/alibaba/android/user/contact/org/model/SelectModel;

    .prologue
    .line 694
    .line 5698
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->finish()V

    .line 695
    return-void
.end method

.method public finish()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.choose.people.from.new.contact"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "choose_user_ids"

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    .line 705
    invoke-interface {v3}, Lfhx;->b()[J

    move-result-object v3

    .line 704
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 706
    iget-boolean v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->x:Z

    if-nez v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v2}, Lfhx;->a()Ljava/util/List;

    move-result-object v1

    .line 708
    .local v1, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v2, "choose_user_identities"

    check-cast v1, Ljava/util/ArrayList;

    .end local v1    # "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 710
    const-string/jumbo v2, "choose_mode"

    iget v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    :cond_0
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 713
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->finish()V

    .line 714
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 721
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-eq v0, v1, :cond_1

    .line 722
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    if-lez v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g()V

    .line 731
    :goto_0
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->x:Z

    .line 729
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    sget v0, Lezg$j;->common_list_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->setContentView(I)V

    .line 137
    new-instance v0, Lfie;

    invoke-direct {v0, p0}, Lfie;-><init>(Lfhw;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    .line 1145
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1146
    const-string/jumbo v0, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    .line 1148
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "display_enterprise_oid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->n:J

    .line 1149
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "uid_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1151
    if-eqz v2, :cond_1

    .line 1152
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1153
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1154
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    aget-wide v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1158
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 1159
    const-string/jumbo v0, "count_limit"

    const/4 v2, 0x0

    .line 1160
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->r:I

    .line 1163
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "KEY_SELECTED_UIDS"

    .line 1164
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 1165
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "KEY_DISABLED_UIDS"

    .line 1166
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v3

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "intent_key_name_map"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->y:Ljava/util/HashMap;

    .line 1169
    if-eqz v2, :cond_5

    array-length v0, v2

    if-lez v0, :cond_5

    .line 1170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    array-length v5, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_4

    aget-wide v6, v2, v0

    .line 1172
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 1173
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1174
    iput-wide v6, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1175
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    iget-object v8, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1177
    iget-object v8, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1181
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v0, v4}, Lfhx;->a(Ljava/util/List;)V

    .line 1184
    :cond_5
    if-eqz v3, :cond_8

    array-length v0, v3

    if-lez v0, :cond_8

    .line 1185
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    array-length v4, v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_7

    aget-wide v6, v3, v0

    .line 1187
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 1188
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1189
    iput-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1190
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1192
    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->l:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1196
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    invoke-interface {v0, v2}, Lfhx;->b(Ljava/util/List;)V

    .line 1199
    :cond_8
    const-string/jumbo v0, "title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1201
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1209
    :goto_3
    sget v0, Lezg$h;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 1210
    sget v0, Lezg$h;->list_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 1211
    sget v0, Lezg$h;->rl_progress:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g:Landroid/widget/RelativeLayout;

    .line 1212
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-nez v0, :cond_9

    .line 1213
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->header_org_all_check:I

    const/4 v2, 0x0

    .line 1214
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o:Landroid/view/View;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o:Landroid/view/View;

    sget v1, Lezg$h;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p:Landroid/widget/CheckBox;

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->p:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$8;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    :cond_9
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-eq v0, v1, :cond_c

    .line 1238
    const/4 v0, 0x1

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-ne v0, v1, :cond_b

    .line 1613
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->j:Landroid/view/View;

    .line 1614
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->j:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    .line 1615
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    sget v1, Lezg$l;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1616
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$4;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    :goto_4
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    sget v0, Lezg$h;->edt_search:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    sget v1, Lezg$l;->search:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setHint(I)V

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$9;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$10;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1279
    new-instance v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$11;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->t:Ljava/lang/Runnable;

    .line 1286
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$12;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1304
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->c()V

    .line 1306
    sget v0, Lezg$h;->horizontal_scroller:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .line 1307
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x43200000    # 160.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1308
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setMaxWidth(I)V

    .line 1309
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .line 1310
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 1309
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setItemWidth(I)V

    .line 1312
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$13;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setOnItemRemovedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;)V

    .line 1325
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$14;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->setAvatarDataGenerator(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;)V

    .line 1338
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->supportInvalidateOptionsMenu()V

    .line 2345
    :goto_5
    new-instance v0, Lfgw;

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    invoke-direct {v0, p0, v1}, Lfgw;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    .line 2346
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->n:J

    .line 3195
    iput-wide v2, v0, Lfgw;->e:J

    .line 2347
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    .line 4185
    iput-object v1, v0, Lfgw;->d:Lfhx;

    .line 2348
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->y:Ljava/util/HashMap;

    .line 5052
    iput-object v1, v0, Lfgw;->f:Ljava/util/Map;

    .line 2350
    new-instance v0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$15;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$15;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->w:Lcjo$a;

    .line 2360
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->w:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcjo$a;)V

    .line 2363
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b()V

    .line 142
    return-void

    .line 1203
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->select_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto/16 :goto_3

    .line 1627
    :cond_b
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->actbar_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->j:Landroid/view/View;

    .line 1628
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->j:Landroid/view/View;

    sget v1, Lezg$h;->btn_ok:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    .line 1629
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->k:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity$5;-><init>(Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1340
    :cond_c
    sget v0, Lezg$h;->ll_choose_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 585
    iget v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-eq v4, v1, :cond_0

    .line 586
    const/4 v1, 0x1

    sget v2, Lezg$l;->sure:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 587
    .local v0, "menuItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->j:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 588
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 589
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->d()V

    .line 591
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->w:Lcjo$a;

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->w:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcjo$a;)V

    .line 371
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->w:Lcjo$a;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->b:Lfgw;

    .line 5185
    iput-object v2, v0, Lfgw;->d:Lfhx;

    .line 375
    iput-object v2, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->e:Lfhx;

    .line 377
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 378
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 596
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    .line 597
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->m:I

    if-eq v0, v1, :cond_1

    .line 598
    iget v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->A:I

    if-lez v0, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->g()V

    .line 607
    :goto_0
    const/4 v0, 0x0

    .line 609
    :goto_1
    return v0

    .line 601
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->x:Z

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/TowerSelectActivity;->finish()V

    goto :goto_0

    .line 609
    :cond_2
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method
