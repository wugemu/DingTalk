.class public Lcom/alibaba/android/ding/fragment/DingMembersFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/fragment/DingMembersFragment$a;,
        Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/util/regex/Pattern;


# instance fields
.field private A:Lbhp;

.field private B:Landroid/content/BroadcastReceiver;

.field public a:Landroid/widget/CheckBox;

.field public b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Layc;

.field public f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

.field private final g:I

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/view/View;

.field private p:Landroid/os/Handler;

.field private q:Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:[Ljava/lang/String;

.field private v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "[a-zA-z]+[\\^]+[a-zA-z\\^]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 53
    const/16 v0, 0x2ee

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->g:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->v:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->x:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->z:Ljava/util/Collection;

    .line 612
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->y:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pinyin"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 546
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 547
    .local v0, "result":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_1

    sget-object v3, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->h:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "\\^"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "stringArraySplits":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 550
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v2, v3

    .line 551
    .local v1, "stringArraySplit":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 552
    const/4 v6, 0x1

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 550
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "stringArraySplit":Ljava/lang/String;
    .end local v2    # "stringArraySplits":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->x:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    if-eq v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 537
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    sget-object v0, Lbbn;->d:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 574
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    return-object p1
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .param p1, "header"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 540
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 543
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 431
    .local p1, "uidLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 432
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    iget v3, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->y:I

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 433
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    new-instance v3, Lcom/alibaba/android/ding/fragment/DingMembersFragment$7;

    invoke-direct {v3, p0, v1, p1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$7;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;ILjava/util/List;)V

    const-class v4, Lcma;

    .line 500
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 434
    invoke-static {v3, v4, v5}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 501
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(ZLjava/util/List;Lcma;)V

    .line 503
    .end local v0    # "apiEventListener":Lcma;
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Layc;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    .line 7413
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 7415
    const/16 v0, 0x2ee

    if-le v2, v0, :cond_2

    .line 7416
    rem-int/lit16 v0, v2, 0x2ee

    if-nez v0, :cond_0

    div-int/lit16 v0, v2, 0x2ee

    .line 7417
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 7418
    mul-int/lit16 v5, v3, 0x2ee

    .line 7419
    add-int/lit16 v1, v5, 0x2ee

    if-le v1, v2, :cond_1

    move v1, v2

    .line 7420
    :goto_2
    invoke-interface {p1, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 7421
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7417
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 7416
    :cond_0
    div-int/lit16 v0, v2, 0x2ee

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7419
    :cond_1
    add-int/lit16 v1, v5, 0x2ee

    goto :goto_2

    .line 7424
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7426
    :cond_3
    invoke-direct {p0, v4}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b(Ljava/util/List;)V

    .line 50
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    .line 8573
    sget-object v0, Lbbn;->d:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Lcom/alibaba/android/ding/activity/DingMembersActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/ding/fragment/DingMembersFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private f()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 379
    .line 2582
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2583
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$8;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2589
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    sget v1, Laxp$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2590
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->j:Landroid/widget/TextView;

    sget v1, Laxp$i;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->A:Lbhp;

    if-nez v0, :cond_0

    .line 381
    new-instance v1, Lbhp;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->r:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$6;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    const-class v3, Lbhp$a;

    .line 407
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 381
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhp$a;

    invoke-direct {v1, v2, v0}, Lbhp;-><init>(Ljava/lang/String;Lbhp$a;)V

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->A:Lbhp;

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->A:Lbhp;

    .line 3053
    iput-boolean v5, v0, Lbhp;->a:Z

    .line 3054
    iget-object v1, v0, Lbhp;->b:Ljava/lang/String;

    .line 3109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3054
    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3055
    iget-object v1, v0, Lbhp;->c:Lbhp$a;

    if-eqz v1, :cond_1

    .line 3056
    iget-object v0, v0, Lbhp;->c:Lbhp$a;

    invoke-interface {v0}, Lbhp$a;->a()V

    .line 3058
    :cond_1
    :goto_0
    return-void

    .line 3060
    :cond_2
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, v0, Lbhp;->b:Ljava/lang/String;

    new-instance v3, Lbhp$1;

    invoke-direct {v3, v0}, Lbhp$1;-><init>(Lbhp;)V

    invoke-virtual {v1, v2, v3}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 50
    move v1, v2

    .line 3334
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3335
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 3336
    iget-object v3, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    .line 4137
    iget-object v3, v3, Layc;->c:Ljava/util/HashMap;

    .line 3336
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3338
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    if-eqz v0, :cond_2

    .line 3339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3340
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->a(Ljava/util/List;)V

    .line 3356
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->x:Ljava/util/List;

    .line 6133
    iput-object v1, v0, Layc;->d:Ljava/util/List;

    .line 3357
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    invoke-virtual {v0}, Layc;->notifyDataSetChanged()V

    .line 50
    return-void

    .line 3341
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    if-eqz v0, :cond_1

    .line 3342
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 3343
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 3344
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3348
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    .line 5137
    iget-object v1, v1, Layc;->c:Ljava/util/HashMap;

    .line 3348
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->x:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3353
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    const/16 v3, 0x3e9

    invoke-virtual {v1, v3, v0}, Lcif;->a(ILjava/lang/Object;)V

    .line 3342
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    .line 6361
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    if-eqz v0, :cond_1

    .line 6362
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->a()V

    .line 6373
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    .line 7137
    iget-object v0, v0, Layc;->c:Ljava/util/HashMap;

    .line 6373
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6374
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    invoke-virtual {v0}, Layc;->notifyDataSetChanged()V

    .line 50
    return-void

    .line 6363
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    if-eqz v0, :cond_0

    .line 6364
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6365
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 6366
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 6370
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v0}, Lcif;->a(ILjava/lang/Object;)V

    .line 6364
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->z:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->y:I

    return v0
.end method

.method static synthetic l(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    .line 7577
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 7578
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->x:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    const/16 v8, 0x23

    const/4 v2, 0x0

    .line 50
    .line 9506
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 9507
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->u:[Ljava/lang/String;

    .line 9508
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 9509
    :goto_0
    if-ge v1, v3, :cond_2

    .line 9510
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v5

    .line 9511
    add-int/lit8 v0, v1, -0x2

    if-ltz v0, :cond_1

    .line 9512
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 9514
    :goto_1
    if-eq v0, v5, :cond_0

    .line 9515
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v5, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v0

    .line 9516
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9517
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->v:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9518
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->u:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 9509
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 9512
    :cond_1
    const/16 v0, 0x20

    goto :goto_1

    .line 9521
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9522
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9524
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 9525
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9526
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 9527
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 9528
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9529
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9530
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 50
    return-void
.end method

.method static synthetic s(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d()V

    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f()V

    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->v:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->u:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->q:Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingMembersFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->p:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcif;)V
    .locals 2
    .param p1, "binder"    # Lcif;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->a(Lcif;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    .line 2109
    iput-object v1, v0, Layc;->i:Lcif;

    .line 185
    :cond_0
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/CharSequence;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    sget v1, Laxp$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$9;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;->b()I

    move-result v0

    .line 190
    .local v0, "chooseSize":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    .end local v0    # "chooseSize":I
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a(Landroid/view/View;)V

    .line 570
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final n_()Lcif$a;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, -0x2

    .line 113
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->c:Ljava/util/ArrayList;

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    .line 1256
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->p:Landroid/os/Handler;

    .line 1257
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;

    invoke-direct {v0, p0, v9}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;B)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->q:Lcom/alibaba/android/ding/fragment/DingMembersFragment$b;

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1263
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 1264
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1265
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1266
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b(Landroid/view/View;)V

    .line 1268
    new-instance v0, Layc;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->d:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    iget-object v4, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->w:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->s:I

    iget v6, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->t:I

    iget-object v7, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    iget-object v8, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->K:Lcif;

    invoke-direct/range {v0 .. v8}, Layc;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;ILjava/util/List;IILcom/alibaba/android/ding/activity/DingMembersActivity$a;Lcif;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    .line 1269
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->e:Layc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1270
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->f()V

    .line 1274
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment$a;

    invoke-direct {v1, p0, v9}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$a;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 1275
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$2;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1285
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$3;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingMembersFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$4;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1308
    new-instance v0, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment$5;-><init>(Lcom/alibaba/android/ding/fragment/DingMembersFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->B:Landroid/content/BroadcastReceiver;

    .line 1328
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1329
    const-string/jumbo v1, "com.workapp.alias_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 117
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "ding_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->r:Ljava/lang/String;

    .line 1238
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "choose_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->b:I

    .line 1239
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->s:I

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "count_limit_tips"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->t:I

    .line 102
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 1244
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->k:Landroid/widget/ListView;

    .line 1245
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->letter_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->m:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 1246
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->tv_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->l:Landroid/widget/TextView;

    .line 1247
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->I:Landroid/view/View;

    sget v1, Laxp$f;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->i:Landroid/view/View;

    sget v1, Laxp$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->j:Landroid/widget/TextView;

    .line 1249
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxp$g;->ding_header_check:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->o:Landroid/view/View;

    sget v1, Laxp$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->a:Landroid/widget/CheckBox;

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->B:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->B:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->A:Lbhp;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingMembersFragment;->A:Lbhp;

    .line 2088
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhp;->a:Z

    .line 161
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 162
    return-void
.end method

.method public final r_()I
    .locals 1

    .prologue
    .line 95
    sget v0, Laxp$g;->ding_fragment_ding_members:I

    return v0
.end method
