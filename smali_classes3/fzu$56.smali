.class final Lfzu$56;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLcma;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:J


# direct methods
.method constructor <init>(Lcma;Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 1002
    iput-object p1, p0, Lfzu$56;->a:Lcma;

    iput-object p2, p0, Lfzu$56;->b:Landroid/app/Activity;

    iput-object p3, p0, Lfzu$56;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p4, p0, Lfzu$56;->d:Z

    iput-object p5, p0, Lfzu$56;->e:Ljava/lang/String;

    iput p6, p0, Lfzu$56;->f:I

    iput-wide p7, p0, Lfzu$56;->g:J

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1005
    iget-object v0, p0, Lfzu$56;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lfzu$56;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1008
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$56;->b:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/preview.html"

    .line 1010
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$56$1;

    invoke-direct {v3, p0}, Lfzu$56$1;-><init>(Lfzu$56;)V

    .line 1009
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1030
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1002
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$56;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1039
    iget-object v0, p0, Lfzu$56;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lfzu$56;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1035
    return-void
.end method
