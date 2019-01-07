.class public Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "SelectorDepartmentFragment.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

.field private f:Lfgu;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lffq;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:J

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field private t:I

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->i:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->j:Ljava/util/List;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->n:I

    .line 97
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->o:J

    .line 98
    iput-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->p:J

    .line 102
    iput v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->t:I

    .line 103
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->u:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->v:Z

    .line 107
    iput-boolean v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->y:Z

    .line 113
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->z:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->n:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 74
    .line 6415
    new-instance v1, Lfoz;

    invoke-direct {v1}, Lfoz;-><init>()V

    .line 6419
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v0, :cond_0

    .line 6420
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->deptObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->toIDLModel()Lcen;

    move-result-object v0

    .line 6426
    :goto_0
    iput-object v0, v1, Lfoz;->b:Lcen;

    .line 6427
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lfoz;->c:Ljava/lang/Boolean;

    .line 6428
    new-instance v0, Lcen;

    invoke-direct {v0}, Lcen;-><init>()V

    iput-object v0, v1, Lfoz;->a:Lcen;

    .line 6429
    iget-object v0, v1, Lfoz;->a:Lcen;

    iput-object p1, v0, Lcen;->c:Ljava/lang/String;

    .line 6430
    iget-object v0, v1, Lfoz;->a:Lcen;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcen;->e:Ljava/lang/Integer;

    .line 6431
    new-instance v0, Lfpb;

    invoke-direct {v0}, Lfpb;-><init>()V

    iput-object v0, v1, Lfoz;->d:Lfpb;

    .line 6432
    iget-object v0, v1, Lfoz;->d:Lfpb;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lfpb;->b:Ljava/lang/Boolean;

    .line 6434
    new-instance v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$8;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Lfoz;)V

    .line 6457
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v2

    const-class v3, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 6458
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->o:J

    invoke-interface {v2, v4, v5, v1, v0}, Lezt;->a(JLfoz;Lcma;)V

    .line 74
    return-void

    .line 6422
    :cond_0
    new-instance v0, Lcen;

    invoke-direct {v0}, Lcen;-><init>()V

    .line 6423
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcen;->b:Ljava/lang/Long;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 9
    .param p1, "getMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 249
    if-eqz p1, :cond_3

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 5261
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-nez v0, :cond_0

    .line 5263
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->p:J

    .line 5264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->y:Z

    .line 5278
    :cond_0
    new-instance v8, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;

    invoke-direct {v8, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$4;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    .line 5338
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5339
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v1, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v8, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    .line 5341
    :cond_1
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->p:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const-wide/16 v2, -0x1

    :goto_1
    iget-wide v4, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->o:J

    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->u:Z

    if-eqz v0, :cond_2

    iget v6, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->t:I

    :cond_2
    const/16 v7, 0x3e8

    .line 5342
    invoke-interface/range {v1 .. v8}, Lezt;->a(JJIILcma;)V

    .line 255
    return-void

    .line 4347
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4348
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$5;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4354
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 4355
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4356
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 5341
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->p:J

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->l:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->v:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->k:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lffq;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h:Lffq;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->u:Z

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->m:I

    return p1
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Lfgu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->y:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->t:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->k:I

    return v0
.end method

.method static synthetic g(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->l:I

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->m:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->n:I

    return v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->y:Z

    return v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    .line 74
    .line 5360
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5361
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    const/16 v2, 0x8

    .line 74
    .line 5373
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5374
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 5375
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5376
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$6;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$6;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5382
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    sget v1, Lezg$h;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lezg$l;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    return-void
.end method

.method static synthetic n(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;

    .prologue
    const/4 v4, 0x0

    .line 74
    .line 5465
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5469
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->dialog_input_dept_name:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5470
    sget v0, Lezg$h;->et_dept_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5472
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5473
    sget v3, Lezg$l;->create_org_dept_name_hint:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5474
    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5475
    sget v1, Lezg$l;->cancel:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5476
    sget v1, Lezg$l;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$9;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5482
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5483
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 5484
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 5485
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 5486
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    .line 5487
    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5488
    new-instance v3, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$10;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 5496
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 5498
    new-instance v2, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$2;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lffq;)V
    .locals 2
    .param p1, "chooseListener"    # Lffq;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h:Lffq;

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h:Lffq;

    .line 3073
    iput-object v1, v0, Lfgu;->c:Lffq;

    .line 216
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    .local p1, "unselectedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->j:Ljava/util/List;

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->j:Ljava/util/List;

    .line 3081
    iput-object v1, v0, Lfgu;->a:Ljava/util/List;

    .line 233
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    .local p1, "selectedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->i:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->i:Ljava/util/List;

    .line 3077
    iput-object v1, v0, Lfgu;->b:Ljava/util/List;

    .line 222
    if-eqz p2, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    invoke-virtual {v0}, Lfgu;->notifyDataSetChanged()V

    .line 226
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$g;->icon_empty_people:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 392
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    sget v1, Lezg$l;->empty_no_dept:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 201
    new-instance v0, Lfgu;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->g:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->q:I

    iget v4, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->w:I

    iget-object v5, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->x:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lfgu;-><init>(Landroid/app/Activity;Ljava/util/List;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h:Lffq;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h:Lffq;

    .line 2073
    iput-object v1, v0, Lfgu;->c:Lffq;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->i:Ljava/util/List;

    .line 2077
    iput-object v1, v0, Lfgu;->b:Ljava/util/List;

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->j:Ljava/util/List;

    .line 2081
    iput-object v1, v0, Lfgu;->a:Ljava/util/List;

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->a(Z)V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_enterprise_oid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->o:J

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "display_department_oid"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->p:J

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->q:I

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "node"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "bread_node_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->r:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "count_limit"

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->w:I

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "count_limit_str"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->x:Ljava/lang/String;

    .line 153
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.org.dept.add"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 157
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
    const/4 v2, 0x0

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$3;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->s:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->permission:Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgPermissionObject;->canManager:Z

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->add_dept_cell:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;

    .line 1400
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->setVisibility(I)V

    .line 1401
    new-instance v1, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment$7;-><init>(Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cell/BaseCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->c:Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->footer_loading_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->I:Landroid/view/View;

    sget v1, Lezg$h;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->e:Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 369
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 370
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->f:Lfgu;

    .line 4073
    iput-object v1, v0, Lfgu;->c:Lffq;

    .line 239
    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/SelectorDepartmentFragment;->h:Lffq;

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDetach()V

    .line 242
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lezg$j;->fragment_enterprise_contact:I

    return v0
.end method
