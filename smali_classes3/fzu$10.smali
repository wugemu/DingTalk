.class final Lfzu$10;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;


# direct methods
.method constructor <init>(Lcma;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;)V
    .locals 0

    .prologue
    .line 1637
    iput-object p1, p0, Lfzu$10;->a:Lcma;

    iput-object p2, p0, Lfzu$10;->b:Landroid/content/Context;

    iput-object p3, p0, Lfzu$10;->c:Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

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
    .line 1640
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 1641
    iget-object v0, p0, Lfzu$10;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lfzu$10;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1644
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$10;->b:Landroid/content/Context;

    .line 1645
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/list_v2.html"

    .line 1647
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$10$1;

    invoke-direct {v3, p0}, Lfzu$10$1;-><init>(Lfzu$10;)V

    .line 1646
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1655
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1637
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$10;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1664
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lfzu$10;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Lfzu$10;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :goto_0
    return-void

    .line 1669
    :cond_0
    invoke-static {p1, p2}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1659
    invoke-super {p0, p1, p2}, Lgqq;->onProgress(Ljava/lang/Object;I)V

    .line 1660
    return-void
.end method
