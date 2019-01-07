.class public Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "AppsFileFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$b;,
        Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lgdb;

.field b:Lgdc;

.field c:I

.field d:Ljava/lang/String;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lgdc;

.field private o:Landroid/content/Context;

.field private p:[Ljava/lang/String;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->j:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->k:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->l:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->m:Ljava/util/HashSet;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->n:Ljava/util/HashSet;

    .line 50
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->k:Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "/storage/emulated/0/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "DingTalk"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->l:Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "/storage/emulated/0/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "tencent/MicroMsg/Download"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->l:Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "/storage/emulated/0/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "tencent/MicroMsg/WeiXin"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->m:Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "/storage/emulated/0/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "tencent/QQ_Images"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->m:Ljava/util/HashSet;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "/storage/emulated/0/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "tencent/QQfile_recv"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->n:Ljava/util/HashSet;

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->k:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 56
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->n:Ljava/util/HashSet;

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->l:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 57
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->n:Ljava/util/HashSet;

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->m:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 63
    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->c:I

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->d:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->q:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/HashSet;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    .locals 6
    .param p1, "appLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 95
    .local p2, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 123
    :cond_1
    :goto_0
    return-object v0

    .line 97
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v3, "pathAppLabelMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lhcs;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    sget-object v5, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 104
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    :cond_4
    sget-object v5, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v5, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .line 114
    .local v0, "fragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 115
    new-instance v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .end local v0    # "fragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;-><init>()V

    .line 116
    .restart local v0    # "fragment":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    invoke-virtual {v0, v3, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 117
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->c:I

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(ILjava/lang/String;)V

    .line 118
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a:Lgdb;

    .line 2125
    iput-object v4, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 119
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->b:Lgdc;

    .line 3117
    iput-object v4, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->j:Lgdc;

    .line 3269
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->i:Lgdc;

    if-nez v4, :cond_6

    .line 3270
    new-instance v4, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)V

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->i:Lgdc;

    .line 3293
    :cond_6
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->i:Lgdc;

    .line 3655
    iput-object v4, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->k:Lgdc;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method private a(ILcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "fragment"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 128
    if-ltz p1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 301
    monitor-enter p0

    .line 4242
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 4244
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 4245
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4246
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 302
    .local v0, "fp":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    :goto_0
    if-nez v0, :cond_1

    .line 303
    const/4 v1, 0x0

    .line 305
    :goto_1
    monitor-exit p0

    return v1

    .line 4248
    .end local v0    # "fp":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    .restart local v0    # "fp":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 301
    .end local v0    # "fp":Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 82
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1137
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfzs$b;->filepicker_filter_app_tabs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    .line 1149
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->k:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Ljava/lang/String;Ljava/util/HashSet;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(ILcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V

    .line 1150
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->l:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Ljava/lang/String;Ljava/util/HashSet;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(ILcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->m:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Ljava/lang/String;Ljava/util/HashSet;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(ILcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V

    .line 1152
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->p:[Ljava/lang/String;

    aget-object v0, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->n:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(Ljava/lang/String;Ljava/util/HashSet;)Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->a(ILcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V

    .line 1154
    iput v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->q:I

    .line 1156
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

    if-nez v0, :cond_0

    .line 1157
    new-instance v0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->getChildFragmentManager()Lcn;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;Lcn;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

    .line 1158
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 1159
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1160
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 1161
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfzs$e;->default_divider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1162
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1164
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 1165
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v1, Lfzs$c;->alm_cmail_color_c2:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 1166
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    sget v1, Lfzs$c;->alm_cmail_color_c2:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 1167
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$b;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$b;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 1168
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iget v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->q:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    goto/16 :goto_0

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    sget v1, Lfzs$g;->alm_fragment_filepicker_apps_tab:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->o:Landroid/content/Context;

    .line 1090
    sget v1, Lfzs$f;->view_pager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    .line 1091
    sget v1, Lfzs$f;->indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 77
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->e:Landroid/support/v4/view/ViewPager;

    .line 175
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->g:Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    .line 176
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment;->f:Lcom/alibaba/dingtalk/cspace/filepicker/AppsFileFilterFragment$a;

    .line 177
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onDestroy()V

    .line 178
    return-void
.end method
