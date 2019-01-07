.class final Lfzu$4;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/util/ArrayList;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Z

.field final synthetic k:Z

.field final synthetic l:I

.field final synthetic m:Z

.field final synthetic n:Z

.field final synthetic o:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

.field final synthetic p:Ljava/lang/String;

.field final synthetic q:Ljava/util/ArrayList;

.field final synthetic r:Lcom/alibaba/alimei/cspace/model/DentryModel;


# direct methods
.method constructor <init>(Lcma;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZIZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2

    .prologue
    .line 1372
    iput-object p1, p0, Lfzu$4;->a:Lcma;

    iput-object p2, p0, Lfzu$4;->b:Landroid/content/Context;

    iput p3, p0, Lfzu$4;->c:I

    iput-wide p4, p0, Lfzu$4;->d:J

    iput-object p6, p0, Lfzu$4;->e:Ljava/lang/String;

    iput-object p7, p0, Lfzu$4;->f:Ljava/lang/String;

    iput-object p8, p0, Lfzu$4;->g:Ljava/lang/String;

    iput-object p9, p0, Lfzu$4;->h:Ljava/util/ArrayList;

    iput-object p10, p0, Lfzu$4;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lfzu$4;->j:Z

    iput-boolean p12, p0, Lfzu$4;->k:Z

    iput p13, p0, Lfzu$4;->l:I

    move/from16 v0, p14

    iput-boolean v0, p0, Lfzu$4;->m:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lfzu$4;->n:Z

    move-object/from16 v0, p16

    iput-object v0, p0, Lfzu$4;->o:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v0, p17

    iput-object v0, p0, Lfzu$4;->p:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lfzu$4;->q:Ljava/util/ArrayList;

    move-object/from16 v0, p19

    iput-object v0, p0, Lfzu$4;->r:Lcom/alibaba/alimei/cspace/model/DentryModel;

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
    .line 1375
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 1376
    iget-object v0, p0, Lfzu$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, p0, Lfzu$4;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1379
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfzu$4;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/list.html"

    .line 1380
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$4$1;

    invoke-direct {v3, p0}, Lfzu$4$1;-><init>(Lfzu$4;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1416
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1372
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$4;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1425
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lfzu$4;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Lfzu$4;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1420
    invoke-super {p0, p1, p2}, Lgqq;->onProgress(Ljava/lang/Object;I)V

    .line 1421
    return-void
.end method
