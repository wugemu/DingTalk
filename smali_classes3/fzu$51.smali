.class final Lfzu$51;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcma;


# direct methods
.method constructor <init>(Landroid/app/Activity;JLjava/lang/String;Lcma;)V
    .locals 0

    .prologue
    .line 3588
    iput-object p1, p0, Lfzu$51;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lfzu$51;->b:J

    iput-object p4, p0, Lfzu$51;->c:Ljava/lang/String;

    iput-object p5, p0, Lfzu$51;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3588
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 4591
    if-nez p1, :cond_1

    .line 4592
    const-string/jumbo v0, "500"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_space_error_inner:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfzu$51;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4593
    :cond_0
    :goto_0
    return-void

    .line 4596
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$51;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/team_album.html"

    .line 4597
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$51$1;

    invoke-direct {v3, p0, p1}, Lfzu$51$1;-><init>(Lfzu$51;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 4611
    iget-object v0, p0, Lfzu$51;->d:Lcma;

    if-eqz v0, :cond_0

    .line 4612
    iget-object v0, p0, Lfzu$51;->d:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3623
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v2, "infoFolderAndNavToList infoDentry"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3624
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    iget-object v0, p0, Lfzu$51;->d:Lcma;

    if-eqz v0, :cond_0

    .line 3627
    iget-object v0, p0, Lfzu$51;->d:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3619
    return-void
.end method
