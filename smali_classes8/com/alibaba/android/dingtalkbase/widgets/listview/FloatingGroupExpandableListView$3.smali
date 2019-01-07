.class final Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;
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
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->g(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)V

    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->setPressed(Z)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;->e(Lcom/alibaba/android/dingtalkbase/widgets/listview/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 147
    :cond_0
    return-void
.end method
