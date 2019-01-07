.class public Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SelectorCityActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:[Ljava/lang/String;

.field private k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private s:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    sput-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u4e2d\u56fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u4e2d\u56fd\u9999\u6e2f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u5370\u5ea6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u5370\u5ea6\u5c3c\u897f\u4e9a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u9a6c\u6765\u897f\u4e9a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u83f2\u5f8b\u5bbe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u4e2d\u56fd\u53f0\u6e7e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u6cf0\u56fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "\u7f8e\u56fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->b:I

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->d:I

    .line 105
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    .line 109
    iput-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->x:Z

    .line 494
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->y:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method private a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;IZ)V
    .locals 4
    .param p1, "item"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .param p2, "position"    # I
    .param p3, "isClickHeader"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 306
    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c()V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->j:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, p2, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 313
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 315
    .local v1, "region":Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->j:[Ljava/lang/String;

    aget-object v2, v2, p2

    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v2, :cond_4

    .line 317
    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 325
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->h:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v2, :cond_5

    .line 319
    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    goto :goto_1

    .line 320
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v2, :cond_6

    .line 321
    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    goto :goto_1

    .line 322
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v2, :cond_3

    .line 323
    iput-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .param p2, "x2"    # Z

    .prologue
    const/16 v1, 0x8

    .line 60
    .line 2273
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v0, :cond_7

    .line 2437
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2440
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2441
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2275
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 2276
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v0, :cond_2

    .line 2277
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;IZ)V

    .line 2293
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 3337
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_6

    .line 3338
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 3339
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3341
    :goto_2
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3342
    :goto_3
    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3343
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3345
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 3346
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3347
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3349
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 3350
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    :goto_5
    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3351
    :goto_6
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3352
    :goto_7
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3353
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3354
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3356
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    .line 3360
    :cond_4
    :goto_8
    const-string/jumbo v3, ""

    .line 3361
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v4, :cond_11

    .line 3362
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->code:Ljava/lang/String;

    .line 3370
    :cond_5
    :goto_9
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iput-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iput-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iput-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 3380
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "selector_region"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3381
    const-string/jumbo v5, "region_key"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3382
    const-string/jumbo v2, "tempCode"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3383
    const-string/jumbo v2, "regionName"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    const-string/jumbo v1, "regionFullName"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3385
    const-string/jumbo v0, "activity_identify"

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->z:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3386
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v4}, Ldq;->a(Landroid/content/Intent;)Z

    .line 3373
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->finish()V

    .line 2294
    :goto_a
    return-void

    .line 2279
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v0, :cond_8

    .line 2280
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 2281
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v0, :cond_2

    .line 2282
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;IZ)V

    goto/16 :goto_0

    .line 2284
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v0, :cond_9

    .line 2285
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 2286
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v0, :cond_2

    .line 2287
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;IZ)V

    goto/16 :goto_0

    .line 2289
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v0, :cond_2

    .line 2290
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->o:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    goto/16 :goto_0

    .line 3339
    :cond_a
    const-string/jumbo v0, ""

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, ""

    goto/16 :goto_2

    .line 3341
    :cond_c
    const-string/jumbo v0, ""

    goto/16 :goto_3

    .line 3346
    :cond_d
    const-string/jumbo v0, ""

    goto/16 :goto_4

    .line 3350
    :cond_e
    const-string/jumbo v0, ""

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v0, ""

    goto/16 :goto_6

    .line 3351
    :cond_10
    const-string/jumbo v0, ""

    goto/16 :goto_7

    .line 3363
    :cond_11
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v4, :cond_12

    .line 3364
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->code:Ljava/lang/String;

    goto/16 :goto_9

    .line 3365
    :cond_12
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v4, :cond_13

    .line 3366
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->code:Ljava/lang/String;

    goto/16 :goto_9

    .line 3367
    :cond_13
    iget-object v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v4, :cond_5

    .line 3368
    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->code:Ljava/lang/String;

    goto/16 :goto_9

    .line 2296
    :cond_14
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    .line 2297
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->notifyDataSetChanged()V

    .line 2298
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->f:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_a

    :cond_15
    move-object v0, v2

    goto/16 :goto_8
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->j:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->u:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 479
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 60
    .line 2216
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->layout_city_item:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    .line 2217
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    sget v1, Lezg$h;->rl_selected_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2219
    iget-boolean v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v1, :cond_0

    .line 2220
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2221
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    sget v1, Lezg$h;->tv_city:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->h:Landroid/widget/TextView;

    .line 2222
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$2;-><init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2236
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2240
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    sget v1, Lezg$h;->tv_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i:Landroid/widget/TextView;

    .line 2241
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    sget v1, Lezg$h;->ll_hot_city:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e:Landroid/widget/LinearLayout;

    .line 2248
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 2249
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lezg$j;->layout_text_item:I

    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2250
    sget v1, Lezg$h;->tv_city:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2251
    sget v2, Lezg$h;->iv_arrow:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2252
    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2254
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2258
    :goto_2
    new-instance v1, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$3;-><init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2264
    sget v0, Lezg$g;->layout_border:I

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2265
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 2238
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2256
    :cond_1
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 2244
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_2

    .line 392
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c()V

    .line 394
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->addSubsidiary(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V

    .line 396
    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->s:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 397
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    .line 401
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->notifyDataSetChanged()V

    .line 402
    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->n:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_4

    .line 404
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v0, :cond_3

    .line 405
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c()V

    .line 406
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_3

    .line 407
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->addSubsidiary(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V

    .line 408
    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->r:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 409
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Ljava/lang/String;)V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->notifyDataSetChanged()V

    .line 414
    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->m:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    goto :goto_0

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->x:Z

    if-nez v0, :cond_7

    .line 416
    iget-boolean v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->v:Z

    if-eqz v0, :cond_5

    .line 417
    invoke-direct {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->c()V

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->addSubsidiary(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)V

    .line 420
    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 421
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->p:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->displayName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->a(Ljava/lang/String;)V

    .line 424
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->notifyDataSetChanged()V

    .line 426
    iput-object v2, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 1449
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 1450
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1452
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 429
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v0, Lezg$j;->activity_selector_city:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->setContentView(I)V

    .line 118
    sget v0, Lezg$h;->lv_city:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->f:Landroid/widget/ListView;

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->selected_city_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "region_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->u:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "region_level"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->y:I

    .line 125
    :cond_0
    new-instance v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;-><init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->w:Ljava/util/List;

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "activity_identify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->z:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "region_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v0, :cond_1

    .line 1151
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->showLoadingDialogDelay(J)V

    .line 1152
    const-class v0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$1;-><init>(Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;)V

    .line 1153
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 145
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iput-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->l:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .line 138
    iput-boolean v4, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->x:Z

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->t:Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->k:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity$a;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 483
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 485
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/profile/v2/SelectorCityActivity;->onBackPressed()V

    goto :goto_0

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
