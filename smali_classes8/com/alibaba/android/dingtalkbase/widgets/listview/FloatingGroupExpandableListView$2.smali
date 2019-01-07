.class final Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;
.super Ljava/lang/Object;
.source "FloatingGroupExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 120
    const/4 v6, 0x1

    .line 122
    .local v6, "allowSelection":Z
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Lcrk;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcrk;->getGroupId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 126
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->c(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Lcrk;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcrk;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->collapseGroup(I)Z

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setSelectedGroup(I)V

    .line 135
    :cond_1
    return-void

    .line 123
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->f(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->expandGroup(I)Z

    goto :goto_1
.end method
