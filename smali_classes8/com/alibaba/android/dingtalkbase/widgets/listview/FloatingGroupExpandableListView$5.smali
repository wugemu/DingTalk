.class final Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingGroupExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v2

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Lcrk;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcrk;->getGroupId(I)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    .line 168
    .local v0, "contextMenuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    const-class v1, Landroid/widget/AbsListView;

    const-string/jumbo v2, "mContextMenuInfo"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1, v2, v3, v0}, Lcpn;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->showContextMenu()Z

    .line 171
    .end local v0    # "contextMenuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    return-void
.end method
