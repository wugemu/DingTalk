.class final Lcom/alibaba/android/ding/adapter/SubTaskListAdapter$1;
.super Ljava/lang/Object;
.source "SubTaskListAdapter.java"

# interfaces
.implements Layn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter$1;->a:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter$1;->a:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    invoke-static {v0}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->a(Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lbbn;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    iget-object v0, p0, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter$1;->a:Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/adapter/SubTaskListAdapter;->notifyDataSetChanged()V

    .line 73
    return-void
.end method
