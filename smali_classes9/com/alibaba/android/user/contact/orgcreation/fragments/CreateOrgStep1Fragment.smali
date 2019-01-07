.class public Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
.super Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;
.source "CreateOrgStep1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/doraemon/image/ImageMagician;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/alibaba/android/user/contact/view/TextEdit;

.field private f:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

.field private g:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

.field private o:Lcom/alibaba/android/user/contact/view/IconTextView;

.field private p:Ljava/lang/String;

.field private q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

.field private r:Lcom/alibaba/android/user/contact/view/TextEdit;

.field private s:Ljava/lang/String;

.field private t:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->l:Z

    .line 112
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->t:Landroid/content/BroadcastReceiver;

    .line 161
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;)Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    return-object p1
.end method

.method public static a(JZ)Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .locals 4
    .param p0, "templateId"    # J
    .param p2, "createWithLastData"    # Z

    .prologue
    .line 151
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-direct {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;-><init>()V

    .line 152
    .local v1, "fragment":Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "template_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    const-string/jumbo v2, "create_with_last_data"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 156
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;)Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Lcom/alibaba/android/user/contact/view/CheckBoxEditText;)Lcom/alibaba/android/user/contact/view/CheckBoxEditText;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->f:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    .line 5468
    iput-boolean v5, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->l:Z

    .line 5469
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h()V

    .line 5471
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5472
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->k:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 5474
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 5475
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 5476
    if-eqz v0, :cond_0

    .line 5480
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 5481
    if-gez v2, :cond_1

    .line 5482
    invoke-interface {p1, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 5484
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5487
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5491
    :goto_1
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "merge r/l data %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5499
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    if-eqz v0, :cond_4

    .line 5500
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->notifyDataSetChanged()V

    .line 75
    :cond_4
    return-void

    .line 5489
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 5493
    :cond_6
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 5494
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5495
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "merge r data %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Lcom/alibaba/android/user/contact/view/TextEdit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e:Lcom/alibaba/android/user/contact/view/TextEdit;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Lcom/alibaba/android/user/contact/view/TextEdit;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->r:Lcom/alibaba/android/user/contact/view/TextEdit;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/lang/String;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 75
    .line 4506
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    .line 4507
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    const/16 v2, 0x280

    const/16 v3, 0x17c

    invoke-virtual {v0, v1, v2, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    .line 4508
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 4509
    const-string/jumbo v1, "cre_org_v2"

    const-string/jumbo v2, "set banner %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4510
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 4511
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4515
    :cond_0
    :goto_0
    return-void

    .line 4513
    :catch_0
    move-exception v0

    .line 4514
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->j:J

    return-wide v0
.end method

.method private g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 364
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    if-nez v1, :cond_0

    .line 4378
    const-string/jumbo v1, "CreateOrgStep1Fragment"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$5;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 374
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->q:Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->p:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/RegionUtils;->a(Lcom/alibaba/android/dingtalkbase/utils/RegionUtils$Region;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "region":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->o:Lcom/alibaba/android/user/contact/view/IconTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightTextColor(I)V

    .line 369
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->o:Lcom/alibaba/android/user/contact/view/IconTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightText(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v0    # "region":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->o:Lcom/alibaba/android/user/contact/view/IconTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->hint_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightTextColor(I)V

    .line 372
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->o:Lcom/alibaba/android/user/contact/view/IconTextView;

    sget v2, Lezg$l;->input_optional:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->setRightText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 527
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 528
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 530
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 9
    .param p1, "creation"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "dataChanged":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "depts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 251
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 253
    .local v3, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 257
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    .end local v3    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    if-eqz v4, :cond_3

    .line 262
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;->notifyDataSetChanged()V

    .line 265
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setOrgName(Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->p:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setRegion(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->s:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setInviteCode(Ljava/lang/String;)V

    .line 268
    iget-object v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setTemplateIconUrl(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setOrgDeptList(Ljava/util/List;)V

    .line 270
    const-string/jumbo v4, "cre_org_v2"

    const-string/jumbo v5, "cos1 save data:%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public final b(Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;)V
    .locals 5
    .param p1, "creation"    # Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getTemplateIconUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    .line 279
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->k:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e:Lcom/alibaba/android/user/contact/view/TextEdit;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->setEditContent(Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->k:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->p:Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g()V

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getInviteCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->s:Ljava/lang/String;

    .line 291
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->k:Z

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->r:Lcom/alibaba/android/user/contact/view/TextEdit;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->setEditContent(Ljava/lang/String;)V

    .line 295
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getOrgDeptList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    if-nez v0, :cond_3

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    .line 299
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->getCurrentStep()I

    move-result v0

    if-gez v0, :cond_4

    .line 300
    invoke-virtual {p1, v4}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setCurrentStep(I)V

    .line 302
    :cond_4
    const-string/jumbo v0, "cre_org_v2"

    const-string/jumbo v1, "cos1 restore data:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public final f()Z
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d()V

    .line 310
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e:Lcom/alibaba/android/user/contact/view/TextEdit;

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/view/TextEdit;->getEditContent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    .line 311
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 312
    :cond_0
    sget v7, Lezg$l;->add_org_hint:I

    invoke-static {v7}, Lcms;->a(I)V

    move v0, v6

    .line 344
    :goto_0
    return v0

    .line 316
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->f:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    if-eqz v7, :cond_3

    .line 317
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->f:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    invoke-virtual {v7}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getEditContent()Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 319
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 321
    :cond_2
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    if-eqz v7, :cond_3

    .line 322
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g:Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    invoke-virtual {v7, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->setDeptName(Ljava/lang/String;)V

    .line 327
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 328
    .local v0, "canNext":Z
    const/4 v5, 0x0

    .line 329
    .local v5, "topDeptCount":I
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 330
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_5

    .line 331
    iget-object v7, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;

    .line 332
    .local v2, "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;->getDeptName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 333
    const/4 v0, 0x1

    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 330
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v2    # "model":Lcom/alibaba/android/user/contact/orgcreation/models/OrgDeptViewModel;
    :cond_5
    if-nez v0, :cond_6

    .line 338
    sget v6, Lezg$l;->create_org_check_dept_toast:I

    invoke-static {v6}, Lcms;->a(I)V

    .line 343
    :goto_2
    iput-object v11, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->f:Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    goto :goto_0

    .line 341
    :cond_6
    const-string/jumbo v7, "org_create_firstdept_next_click"

    const-string/jumbo v8, "num=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 4315
    invoke-static {v11, v7, v8, v9}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->m:Ljava/util/List;

    .line 168
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 169
    iget-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->l:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "template_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->j:J

    .line 171
    invoke-static {}, Lfku;->a()Lfku;

    move-result-object v1

    invoke-virtual {v1}, Lfku;->b()Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;

    move-result-object v0

    .line 172
    .local v0, "orgCreation":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    if-eqz v0, :cond_0

    .line 173
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;->setTemplateId(J)V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "create_with_last_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->k:Z

    .line 1519
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1520
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v2, :cond_1

    .line 1521
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1419
    :cond_1
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v3

    .line 1420
    new-instance v2, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$7;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    .line 1461
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1462
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v4, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-interface {v1, v2, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1464
    :goto_0
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->j:J

    invoke-interface {v3, v4, v5, v1}, Lezt;->b(JLcma;)V

    .line 178
    .end local v0    # "orgCreation":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    :cond_2
    return-void

    .restart local v0    # "orgCreation":Lcom/alibaba/android/user/contact/orgcreation/models/OrgCreation;
    :cond_3
    move-object v1, v2

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 185
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->cos1_iv_banner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d:Landroid/widget/ImageView;

    sget v1, Lezg$g;->banner_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->cos1_ite_org_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/TextEdit;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e:Lcom/alibaba/android/user/contact/view/TextEdit;

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e:Lcom/alibaba/android/user/contact/view/TextEdit;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->setEditMaxLenth(I)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->e:Lcom/alibaba/android/user/contact/view/TextEdit;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$2;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->tv_org_region:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/IconTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->o:Lcom/alibaba/android/user/contact/view/IconTextView;

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->o:Lcom/alibaba/android/user/contact/view/IconTextView;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$3;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->g()V

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->cos1_ite_invite_code:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/view/TextEdit;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->r:Lcom/alibaba/android/user/contact/view/TextEdit;

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->r:Lcom/alibaba/android/user/contact/view/TextEdit;

    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$4;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->cos1_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 2397
    .local v8, "listView":Landroid/widget/ListView;
    new-instance v0, Lcom/alibaba/android/user/contact/view/IconTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;-><init>(Landroid/content/Context;)V

    .line 2398
    sget v1, Lezg$g;->icon_green_add:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftIconResId(I)V

    .line 2399
    sget v1, Lezg$l;->create_org_add_custom_dept:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftText(Ljava/lang/String;)V

    .line 2400
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->C2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->setLeftTextColor(I)V

    .line 2401
    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 2402
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/user/contact/view/IconTextView;->b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V

    .line 2404
    new-instance v1, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$6;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 236
    new-instance v0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;-><init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->n:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$a;

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 3356
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3357
    const-string/jumbo v1, "selector_region"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3358
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->t:Landroid/content/BroadcastReceiver;

    .line 3359
    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->h()V

    .line 350
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 351
    invoke-super {p0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgFragment;->onDestroy()V

    .line 352
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 135
    sget v0, Lezg$j;->fragment_create_org_step_1:I

    return v0
.end method
