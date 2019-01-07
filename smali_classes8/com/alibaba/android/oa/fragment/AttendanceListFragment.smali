.class public Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "AttendanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private c:Leeb;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lefz;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->d:Ljava/util/List;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->j:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->k:I

    .line 81
    sget-object v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->r:I

    .line 378
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->g:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->h:I

    return p1
.end method

.method private b(Z)V
    .locals 18
    .param p1, "getMore"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    :goto_0
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->l:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->m:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->p:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->q:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->r:I

    const/16 v14, 0x14

    const-string/jumbo v2, "EVENTBUTLER"

    .line 1188
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v15, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$2;-><init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)V

    const-class v16, Lcma;

    .line 1254
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    .line 1189
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v2, v15, v0, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcma;

    .line 1187
    invoke-interface/range {v3 .. v15}, Lcom/alibaba/android/oa/rpc/CalendarService;->getNodesFromDirectDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIILcma;)V

    .line 183
    return-void

    .line 179
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->h:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->g:I

    return p1
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    sget v1, Ledz$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    sget v1, Ledz$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Ledz$h;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->i:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->i:I

    return p1
.end method

.method static synthetic e(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->k:I

    return v0
.end method

.method static synthetic e(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->r:I

    return p1
.end method

.method static synthetic f(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->r:I

    return v0
.end method

.method static synthetic i(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    return-void
.end method

.method static synthetic k(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Leeb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c:Leeb;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/oa/fragment/AttendanceListFragment;

    .prologue
    const/16 v2, 0x8

    .line 45
    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1358
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    sget v1, Ledz$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$4;-><init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    sget v1, Ledz$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Ledz$h;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 21
    .param p1, "getMore"    # Z

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    :goto_0
    invoke-static {}, Lcom/alibaba/android/oa/rpc/impl/CalendarServiceImpl;->getInstance()Lcom/alibaba/android/oa/rpc/CalendarService;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->l:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->m:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->p:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->q:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->r:I

    const/16 v16, 0x14

    const/16 v17, 0x1

    const-string/jumbo v4, "EVENTBUTLER"

    .line 1271
    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v18, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$3;-><init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;Z)V

    const-class v19, Lcma;

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v20

    .line 1272
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcma;

    .line 1270
    invoke-interface/range {v5 .. v18}, Lcom/alibaba/android/oa/rpc/CalendarService;->getUserNodesFromCurDeptOneDay(JJJLjava/lang/String;Ljava/lang/String;IIIZLcma;)V

    .line 266
    return-void

    .line 262
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 155
    new-instance v0, Leeb;

    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Leeb;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->c:Leeb;

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    if-ne v0, v1, :cond_1

    .line 157
    invoke-direct {p0, v3}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b(Z)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    if-ne v0, v1, :cond_0

    .line 159
    invoke-virtual {p0, v3}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->a(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "org_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->l:J

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "dept_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->m:J

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "date_time_millis"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->p:J

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "attendance_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->q:I

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->n:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v1, "subAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->o:Ljava/lang/String;

    .line 95
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
    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->I:Landroid/view/View;

    sget v1, Ledz$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setDividerHeight(I)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$1;-><init>(Lcom/alibaba/android/oa/fragment/AttendanceListFragment;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->I:Landroid/view/View;

    sget v1, Ledz$f;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->e:Landroid/view/View;

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Ledz$g;->oa_fragment_footer_loading_view:I

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 167
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 171
    sget v0, Ledz$g;->oa_fragment_attendance_list:I

    return v0
.end method
