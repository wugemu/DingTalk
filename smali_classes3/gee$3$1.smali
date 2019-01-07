.class final Lgee$3$1;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgee$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyc;

.field final synthetic b:Lgee$3;


# direct methods
.method constructor <init>(Lgee$3;Lyc;)V
    .locals 0
    .param p1, "this$1"    # Lgee$3;

    .prologue
    .line 438
    iput-object p1, p0, Lgee$3$1;->b:Lgee$3;

    iput-object p2, p0, Lgee$3$1;->a:Lyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 441
    iget-object v2, p0, Lgee$3$1;->b:Lgee$3;

    iget-object v0, p0, Lgee$3$1;->a:Lyc;

    .line 1447
    iget-object v0, v0, Lyc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1448
    iget-object v1, v2, Lgee$3;->a:Lgee;

    .line 2054
    invoke-virtual {v1, v0}, Lgee;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    .line 1449
    iget-object v1, v2, Lgee$3;->a:Lgee;

    .line 3054
    iget-object v1, v1, Lgee;->j:Ljava/util/Map;

    .line 1449
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgei;

    .line 1450
    if-eqz v1, :cond_0

    .line 4025
    iget-object v4, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1450
    if-eqz v4, :cond_0

    .line 5025
    iget-object v4, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1450
    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 6025
    :cond_1
    iget-object v1, v1, Lgei;->a:Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    .line 1454
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 1455
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1456
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1459
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 1461
    iget-object v0, v2, Lgee$3;->a:Lgee;

    .line 6054
    const/4 v1, 0x0

    .line 6174
    iget v4, v0, Lgee;->h:I

    invoke-virtual {v0, v3, v4, v1}, Lgee;->a(Ljava/lang/String;IZ)Lgeh;

    move-result-object v0

    .line 1462
    if-eqz v0, :cond_0

    .line 1466
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v3, Lgee$3$2;

    invoke-direct {v3, v2, v0}, Lgee$3$2;-><init>(Lgee$3;Lgeh;)V

    invoke-virtual {v1, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
