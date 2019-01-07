.class final Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;
.super Ljava/lang/Object;
.source "SubTaskDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 92
    invoke-static {v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 93
    invoke-static {v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$1;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 94
    invoke-static {v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 91
    :goto_0
    invoke-static {v0, v2, v3, v1}, Lbkj;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/SmoothCheckBox;Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    .line 96
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
