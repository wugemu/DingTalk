.class final Lgmv$1;
.super Ljava/lang/Object;
.source "SpaceMenuLikeHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgmv;->a(Landroid/content/Context;Lgmb;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lgqw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lgmv;


# direct methods
.method constructor <init>(Lgmv;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lgmv;

    .prologue
    .line 32
    iput-object p1, p0, Lgmv$1;->d:Lgmv;

    iput-object p2, p0, Lgmv$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object p3, p0, Lgmv$1;->b:Ljava/lang/Object;

    iput-object p4, p0, Lgmv$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 32
    .line 1035
    sget v0, Lfzs$h;->dt_comment_like_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1036
    iget-object v0, p0, Lgmv$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-object v1, p0, Lgmv$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLikeCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLikeCount(J)V

    .line 1038
    iget-object v0, p0, Lgmv$1;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgmv$1;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    if-nez v0, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lgmv$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 1042
    const/16 v1, 0xfa

    iget-object v2, p0, Lgmv$1;->c:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_comment_like_count:I

    .line 1043
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lgmv$1;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1044
    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLikeCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1043
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 49
    return-void
.end method
