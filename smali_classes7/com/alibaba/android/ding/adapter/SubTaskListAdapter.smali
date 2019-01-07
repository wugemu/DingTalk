.class public Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubTaskListAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Layn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter$1;-><init>(Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->c:Layn;

    .line 28
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 60
    if-nez p2, :cond_0

    new-instance v0, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;-><init>(Landroid/content/Context;)V

    .line 63
    .end local p2    # "convertView":Landroid/view/View;
    .local v0, "subTaskView":Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a(I)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1120
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->c:Layn;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setTaskFinishStateChangedListener(Layn;)V

    .line 65
    return-object v0

    .line 60
    .end local v0    # "subTaskView":Lcom/alibaba/android/ding/widget/SubTaskDetailView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    check-cast p2, Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    move-object v0, p2

    goto :goto_0
.end method
