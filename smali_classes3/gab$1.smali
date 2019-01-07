.class final Lgab$1;
.super Ljava/lang/Object;
.source "CSpaceRecentAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgab;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

.field final synthetic b:Lggg;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Landroid/widget/AbsListView;

.field final synthetic f:Lgab;


# direct methods
.method constructor <init>(Lgab;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Lggg;JILandroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lgab;

    .prologue
    .line 92
    iput-object p1, p0, Lgab$1;->f:Lgab;

    iput-object p2, p0, Lgab$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iput-object p3, p0, Lgab$1;->b:Lggg;

    iput-wide p4, p0, Lgab$1;->c:J

    iput p6, p0, Lgab$1;->d:I

    iput-object p7, p0, Lgab$1;->e:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lgab$1;->f:Lgab;

    invoke-static {v0}, Lgab;->a(Lgab;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lgab$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-boolean v0, v0, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->hasCompleteLoaded:Z

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lgab$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    const/4 v1, 0x3

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->completeLoadData(II)V

    .line 102
    :cond_2
    iget-object v0, p0, Lgab$1;->b:Lggg;

    iget-wide v0, v0, Lggg;->e:J

    iget-wide v2, p0, Lgab$1;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lgab$1;->b:Lggg;

    iget-object v1, p0, Lgab$1;->f:Lgab;

    invoke-static {v1}, Lgab;->b(Lgab;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgab$1;->f:Lgab;

    invoke-static {v2}, Lgab;->c(Lgab;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lgab$1;->a:Lcom/alibaba/alimei/cspace/model/RecentOperationModel;

    iget-object v4, p0, Lgab$1;->e:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lggg;->a(Ljava/lang/String;Landroid/os/Handler;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
