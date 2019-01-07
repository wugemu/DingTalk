.class public final Laya$c;
.super Laya$a;
.source "DingMeetingMinutesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Laya;

.field private c:Lcom/alibaba/android/ding/widget/SubTaskDetailView;


# direct methods
.method public constructor <init>(Laya;Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V
    .locals 0
    .param p1, "this$0"    # Laya;
    .param p2, "subTaskDetailView"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 79
    iput-object p1, p0, Laya$c;->b:Laya;

    .line 80
    invoke-direct {p0, p2}, Laya$a;-><init>(Landroid/view/View;)V

    .line 81
    iput-object p2, p0, Laya$c;->c:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .line 82
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V
    .locals 2
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "isLast"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Laya$c;->c:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    iget-object v1, p0, Laya$c;->b:Laya;

    invoke-static {v1}, Laya;->a(Laya;)Layn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setTaskFinishStateChangedListener(Layn;)V

    .line 92
    iget-object v0, p0, Laya$c;->c:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->setShowSplitView(Z)V

    .line 93
    iget-object v0, p0, Laya$c;->c:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Z)V

    goto :goto_0
.end method
