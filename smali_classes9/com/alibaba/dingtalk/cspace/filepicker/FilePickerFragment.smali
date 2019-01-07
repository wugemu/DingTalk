.class public Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
.super Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;
.source "FilePickerFragment.java"


# static fields
.field static n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lgcy;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/util/HashMap;
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

.field final a:Ljava/util/HashMap;
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

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgcy;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/io/File;

.field g:Ljava/io/File;

.field h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

.field i:Z

.field j:Lgdc;

.field k:Lgdc;

.field l:Lgdb;

.field m:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgcy;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Ljava/io/File;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->o:Ljava/lang/String;

    .line 614
    new-instance v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$4;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$4;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->n:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->r:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b:Ljava/util/ArrayList;

    .line 60
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->v:Z

    .line 61
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    .line 62
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->x:Z

    .line 64
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->y:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->f:Ljava/io/File;

    .line 71
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->g:Ljava/io/File;

    .line 75
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->i:Z

    .line 80
    const v0, 0x7fffffff

    iput v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->B:I

    .line 81
    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->C:Ljava/lang/String;

    .line 83
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    .line 199
    iput-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->m:Z

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;Lgcy;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;
    .param p1, "x1"    # Lgcy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    .line 1479
    if-eqz p1, :cond_0

    .line 1483
    iget v0, p1, Lgcy;->d:I

    packed-switch v0, :pswitch_data_0

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1486
    :pswitch_0
    iget-object v0, p1, Lgcy;->g:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1489
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    if-nez v0, :cond_1

    .line 1490
    new-instance v0, Lgdb;

    invoke-direct {v0}, Lgdb;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 1492
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 2098
    if-nez p1, :cond_4

    move v3, v2

    .line 1493
    :goto_1
    if-eqz v3, :cond_5

    .line 1494
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 3085
    if-eqz p1, :cond_2

    .line 3088
    iget-wide v4, v0, Lgdb;->b:J

    iget-wide v6, p1, Lgcy;->e:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lgdb;->b:J

    .line 3089
    iget-object v0, v0, Lgdb;->a:Ljava/util/Hashtable;

    iget-object v4, p1, Lgcy;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    if-nez v3, :cond_7

    move v0, v1

    :goto_3
    iget-object v6, p1, Lgcy;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->a(Landroid/widget/ListView;ZLjava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->j:Lgdc;

    if-eqz v0, :cond_3

    .line 1505
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->j:Lgdc;

    if-nez v3, :cond_8

    move v0, v1

    :goto_4
    iget-object v5, p1, Lgcy;->b:Ljava/lang/String;

    iget-object v6, p1, Lgcy;->g:Landroid/net/Uri;

    invoke-virtual {v4, p0, v0, v5, v6}, Lgdc;->a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 1508
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->k:Lgdc;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->k:Lgdc;

    if-nez v3, :cond_9

    :goto_5
    iget-object v2, p1, Lgcy;->b:Ljava/lang/String;

    iget-object v3, p1, Lgcy;->g:Landroid/net/Uri;

    invoke-virtual {v0, p0, v1, v2, v3}, Lgdc;->a(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;ZLjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 2101
    :cond_4
    iget-object v0, v0, Lgdb;->a:Ljava/util/Hashtable;

    iget-object v3, p1, Lgcy;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    goto :goto_1

    .line 1497
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->B:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->B:I

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 4052
    iget-object v4, v4, Lgdb;->a:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    .line 1497
    if-gt v0, v4, :cond_6

    .line 1498
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->C:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_6
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->l:Lgdb;

    .line 4069
    if-eqz p1, :cond_2

    .line 4072
    iget-object v4, v0, Lgdb;->a:Ljava/util/Hashtable;

    iget-object v5, p1, Lgcy;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4075
    iget-wide v4, v0, Lgdb;->b:J

    iget-wide v6, p1, Lgcy;->e:J

    add-long/2addr v4, v6

    iput-wide v4, v0, Lgdb;->b:J

    .line 4076
    iget-object v0, v0, Lgdb;->a:Ljava/util/Hashtable;

    iget-object v4, p1, Lgcy;->b:Ljava/lang/String;

    iget-object v5, p1, Lgcy;->g:Landroid/net/Uri;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move v0, v2

    .line 1503
    goto :goto_3

    :cond_8
    move v0, v2

    .line 1505
    goto :goto_4

    :cond_9
    move v1, v2

    .line 1509
    goto :goto_5

    .line 1514
    :pswitch_1
    iget-object v0, p1, Lgcy;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetFolder"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->o:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$1;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->E:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final E_()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->notifyDataSetChanged()V

    .line 593
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "maxsize"    # I
    .param p2, "maxSizeErrorTip"    # Ljava/lang/String;

    .prologue
    .line 134
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->B:I

    .line 135
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->C:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 529
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 544
    :goto_0
    return-void

    .line 531
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->a(Ljava/util/List;)V

    .line 535
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "targetFolder"    # Ljava/lang/String;
    .param p2, "fileOwner"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 226
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->m:Z

    if-eqz v4, :cond_0

    .line 259
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->i:Z

    if-eqz v4, :cond_3

    .line 232
    move-object v2, p1

    .line 234
    .local v2, "mTempCurrentPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 235
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->g:Ljava/io/File;

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->f:Ljava/io/File;

    .line 238
    iput-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    .line 241
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 242
    .local v3, "tempFile":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 243
    const-string/jumbo v4, "//ALLSDCARD//"

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    :cond_1
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->m:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    .end local v3    # "tempFile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 243
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    .restart local v3    # "tempFile":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 256
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    .end local v2    # "mTempCurrentPath":Ljava/lang/String;
    .end local v3    # "tempFile":Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p2, "rootPathName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "dirOwnerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 95
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "key":Ljava/lang/String;
    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    .line 101
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 102
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    .line 107
    :goto_0
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->E:Ljava/util/HashMap;

    .line 108
    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d:Ljava/lang/String;

    .line 109
    return-void

    .line 104
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2
    .param p1, "isSelected"    # Z
    .param p2, "filePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    if-nez v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->a(Landroid/widget/ListView;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 189
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgcy;

    .line 190
    .local v0, "dataItem":Lgcy;
    if-eqz v0, :cond_0

    iget v2, v0, Lgcy;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 194
    iget-object v1, v0, Lgcy;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    const/4 v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "dataItem":Lgcy;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "fileOwner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lgcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 312
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v20, "TargetPath cannot be empty!"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 315
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v7, "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    const-string/jumbo v19, "//ALLSDCARD//"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 319
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->g:Ljava/io/File;

    .line 320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->x:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 322
    :try_start_0
    const-string/jumbo v19, "SECONDARY_STORAGE"

    invoke-static/range {v19 .. v19}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 323
    .local v16, "rawSecondaryStorage":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 324
    const-string/jumbo v19, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v17, v20, v19

    .line 325
    .local v17, "secondaryPath":Ljava/lang/String;
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    .line 324
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 331
    .end local v17    # "secondaryPath":Ljava/lang/String;
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->x:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v16    # "rawSecondaryStorage":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 342
    const-string/jumbo v19, "mounted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lex;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 343
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    .line 344
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->w:Ljava/io/File;

    .line 349
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 350
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .restart local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    new-instance v13, Lgcy;

    invoke-direct {v13}, Lgcy;-><init>()V

    .line 353
    .local v13, "item1":Lgcy;
    sget v19, Lfzs$h;->common_filepicker_sdcard_internal:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lgcy;->a:Ljava/lang/String;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v13, Lgcy;->b:Ljava/lang/String;

    .line 355
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v13, Lgcy;->d:I

    .line 356
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v12, Lgcy;

    invoke-direct {v12}, Lgcy;-><init>()V

    .line 360
    .local v12, "item":Lgcy;
    sget v19, Lfzs$h;->common_filepicker_sdcard_internal2:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v12, Lgcy;->a:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v12, Lgcy;->b:Ljava/lang/String;

    .line 362
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v12, Lgcy;->d:I

    .line 363
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->v:Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v12, Lgcy;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v12, Lgcy;->a:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v13, Lgcy;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v13, Lgcy;->a:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .end local v12    # "item":Lgcy;
    .end local v13    # "item1":Lgcy;
    :cond_5
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_8

    move-object v8, v7

    .line 471
    .end local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    .local v8, "dataItems":Ljava/lang/Object;, "Ljava/util/ArrayList<Lgcy;>;"
    :goto_4
    return-object v8

    .line 332
    .end local v8    # "dataItems":Ljava/lang/Object;, "Ljava/util/ArrayList<Lgcy;>;"
    .restart local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    :catch_0
    move-exception v18

    .line 334
    .local v18, "tr":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 339
    .end local v18    # "tr":Ljava/lang/Throwable;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 368
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 382
    :cond_8
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .local v9, "dirFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 384
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "TargetPath cannot be a file path:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 387
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 388
    .local v14, "listFiles":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    if-nez v14, :cond_b

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .restart local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    if-eqz v14, :cond_f

    .line 390
    array-length v0, v14

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_f

    aget-object v10, v14, v19

    .line 397
    .local v10, "file":Ljava/io/File;
    new-instance v12, Lgcy;

    invoke-direct {v12}, Lgcy;-><init>()V

    .line 398
    .restart local v12    # "item":Lgcy;
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lgcy;->a:Ljava/lang/String;

    .line 399
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lgcy;->b:Ljava/lang/String;

    .line 400
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    .line 401
    .local v11, "isDirectory":Z
    if-eqz v11, :cond_d

    .line 402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 403
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v12, Lgcy;->d:I

    .line 404
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_a
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 388
    .end local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "isDirectory":Z
    .end local v12    # "item":Lgcy;
    :cond_b
    array-length v0, v14

    move/from16 v19, v0

    if-nez v19, :cond_c

    const/16 v19, 0x1

    goto :goto_5

    :cond_c
    array-length v0, v14

    move/from16 v19, v0

    goto :goto_5

    .line 406
    .restart local v7    # "dataItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgcy;>;"
    .restart local v10    # "file":Ljava/io/File;
    .restart local v11    # "isDirectory":Z
    .restart local v12    # "item":Lgcy;
    :cond_d
    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v12, Lgcy;->d:I

    .line 407
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lgcy;->e:J

    .line 408
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v12, Lgcy;->f:J

    .line 412
    :try_start_1
    iget-object v0, v12, Lgcy;->b:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v12, Lgcy;->g:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :goto_8
    iget-object v0, v12, Lgcy;->g:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    iget-wide v0, v12, Lgcy;->e:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_e

    .line 417
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_e
    move-object/from16 v0, p2

    iput-object v0, v12, Lgcy;->c:Ljava/lang/String;

    goto :goto_7

    .line 413
    :catch_1
    move-exception v18

    .line 414
    .restart local v18    # "tr":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 425
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "isDirectory":Z
    .end local v12    # "item":Lgcy;
    .end local v18    # "tr":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    .line 426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 427
    sget-object v19, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->n:Ljava/util/Comparator;

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 434
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->D:Z

    move/from16 v19, v0

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    const-string/jumbo v19, "//ALLSDCARD//"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 435
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 436
    .local v15, "parentDir":Ljava/io/File;
    if-eqz v15, :cond_15

    .line 437
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, "backDirPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->a:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 441
    .local v4, "backDirName":Ljava/lang/String;
    const-string/jumbo v19, "//ALLSDCARD//"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->v:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->q:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 443
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d:Ljava/lang/String;

    .line 444
    const-string/jumbo v5, "//ALLSDCARD//"

    .line 448
    :cond_12
    if-nez v4, :cond_13

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->d:Ljava/lang/String;

    .line 456
    :cond_13
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->y:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 457
    sget v19, Lfzs$h;->alm_filepicker_back:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->y:Ljava/lang/String;

    .line 460
    :cond_14
    new-instance v6, Lgcy;

    invoke-direct {v6}, Lgcy;-><init>()V

    .line 461
    .local v6, "backItem":Lgcy;
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v6, Lgcy;->d:I

    .line 462
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->y:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v6, Lgcy;->a:Ljava/lang/String;

    .line 463
    iput-object v5, v6, Lgcy;->b:Ljava/lang/String;

    .line 465
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 470
    .end local v4    # "backDirName":Ljava/lang/String;
    .end local v5    # "backDirPath":Ljava/lang/String;
    .end local v6    # "backItem":Lgcy;
    .end local v15    # "parentDir":Ljava/io/File;
    :cond_15
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->g:Ljava/io/File;

    move-object v8, v7

    .line 471
    .restart local v8    # "dataItems":Ljava/lang/Object;, "Ljava/util/ArrayList<Lgcy;>;"
    goto/16 :goto_4

    .line 452
    .end local v8    # "dataItems":Ljava/lang/Object;, "Ljava/util/ArrayList<Lgcy;>;"
    .restart local v4    # "backDirName":Ljava/lang/String;
    .restart local v5    # "backDirPath":Ljava/lang/String;
    .restart local v15    # "parentDir":Ljava/io/File;
    :cond_16
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_9
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 548
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->i:Z

    .line 551
    if-eqz p1, :cond_0

    .line 552
    const-string/jumbo v0, "rootPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    .line 553
    const-string/jumbo v0, "currentPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    .line 556
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    .line 558
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->h:Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 559
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$e;->alm_cspace_empty_icon:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 560
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lfzs$h;->alm_cspace_no_files:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 562
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$2;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 575
    sget-object v0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->o:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment$3;-><init>(Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 588
    return-void
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
    .line 597
    sget v1, Lfzs$g;->alm_cspace_fragment_file_picker:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 598
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->z:Landroid/widget/ListView;

    .line 599
    sget v1, Lfzs$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->A:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 600
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 522
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 523
    const-string/jumbo v0, "rootPath"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v0, "currentPath"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/filepicker/FilePickerFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 525
    return-void
.end method
