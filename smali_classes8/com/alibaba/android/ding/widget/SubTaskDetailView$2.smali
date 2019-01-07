.class final Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;
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
    .line 99
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$2;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->b(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 1681
    iget v2, v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 103
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;Z)V

    .line 106
    :cond_0
    return-void
.end method
