.class final Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$2;
.super Ljava/lang/Object;
.source "EmotionMineAdjustSequenceActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkim/views/DragSortListView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;->a(Lcom/alibaba/android/dingtalkim/activities/EmotionMineAdjustSequenceActivity;)Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;

    move-result-object v1

    .line 1076
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->b:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    sget-object v2, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;->DRAG:Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter$MODE;

    if-ne v0, v2, :cond_0

    .line 1079
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 1085
    if-ltz p2, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p2, v0, :cond_0

    .line 1088
    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    .line 1089
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->a:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1090
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/adapters/EmotionPackageListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
