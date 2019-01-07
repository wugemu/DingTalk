.class final Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;
.super Lckm$a;
.source "SubTaskDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/SubTaskDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 166
    .line 1170
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Layn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$3;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Layn;

    move-result-object v0

    invoke-interface {v0}, Layn;->a()V

    .line 166
    :cond_0
    return-void
.end method
