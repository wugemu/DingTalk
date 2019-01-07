.class public Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;
.super Lcom/alibaba/android/dingtalkim/IMBaseActivity;
.source "EmotionMineAdjustSequenceActivity.java"


# instance fields
.field private final a:I

.field private b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

.field private c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

.field private g:Ldpt$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->a:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;)Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    iget v1, v1, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->order:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;J)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;
    .param p1, "x1"    # J

    .prologue
    .line 22
    .line 3154
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;J)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;
    .param p1, "x1"    # J

    .prologue
    .line 22
    .line 3162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3165
    const/4 v1, 0x1

    .line 3166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 3167
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_0

    .line 3168
    const/4 v0, 0x0

    .line 3172
    :goto_0
    if-eqz v0, :cond_1

    .line 3173
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldpt;->b(J)Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    move-result-object v0

    .line 3174
    if-eqz v0, :cond_1

    .line 3175
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3176
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    iget v0, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->order:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->notifyDataSetChanged()V

    .line 22
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->dismissLoadingDialog()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lctk$g;->emotion_mine_adjust_sequence:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->setContentView(I)V

    .line 1084
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lctk$i;->dt_im_emotion_activity_title_mine_adjust_sequence:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 1088
    sget v0, Lctk$f;->list_emotion_drag_sort:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    .line 1089
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    sget v1, Lctk$f;->iv_sort:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDragHandleViewId(I)V

    .line 1093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v1

    invoke-virtual {v1}, Ldpt;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1095
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->a()V

    .line 1096
    new-instance v0, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    sget-object v2, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;->DRAG:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    invoke-direct {v0, p0, v1, v2}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    .line 1097
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->c:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1113
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->g:Ldpt$a;

    .line 1143
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->g:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->a(Ldpt$a;)V

    .line 1145
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->f:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    .line 1150
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->b:Lcom/alibaba/android/dingtalkim/views/DragSortListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->f:Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/views/DragSortListView;->setDropListener(Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;)V

    .line 46
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 63
    .local v0, "createItem":Landroid/view/MenuItem;
    sget v1, Lctk$i;->dt_im_emotion_sort_complete:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 64
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 65
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->g:Ldpt$a;

    invoke-virtual {v0, v1}, Ldpt;->b(Ldpt$a;)V

    .line 58
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onDestroy()V

    .line 59
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1183
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 72
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->finish()V

    goto :goto_0

    .line 1186
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1188
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 1189
    if-eqz v0, :cond_2

    iget v4, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->order:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_2

    .line 1190
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->order:I

    .line 1191
    instance-of v1, v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    if-eqz v1, :cond_2

    .line 1192
    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionInstallPackageObject;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1196
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    .line 1881
    iget-object v1, v0, Ldpt;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1885
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Ldpt$6;

    invoke-direct {v2, v0}, Ldpt$6;-><init>(Ldpt;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2209
    :cond_4
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2210
    const-class v1, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 2211
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 2212
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 1201
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$4;

    invoke-direct {v1, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public showLoadingDialog()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/IMBaseActivity;->showLoadingDialog()V

    .line 50
    return-void
.end method
