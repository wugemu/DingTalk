.class final Lcom/alibaba/dingtalk/share/share/ShareManager$3;
.super Ljava/lang/Object;
.source "ShareManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/share/share/ShareManager;->b(Ljava/util/List;)Lcma;
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
        "Lgwo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/dingtalk/share/share/ShareManager;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/ShareManager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/ShareManager;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    iput-object p2, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 505
    check-cast p1, Lgwo;

    .line 1509
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 2056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    .line 1509
    if-eqz v0, :cond_3

    .line 1510
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 3056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1510
    if-eqz v0, :cond_3

    .line 1513
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 4056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1513
    iget-object v1, p1, Lgwo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setTitle(Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 5056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1514
    iget-object v1, p1, Lgwo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setContent(Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 6056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1515
    iget-object v1, p1, Lgwo;->b:Ljava/lang/String;

    .line 6937
    iput-object v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->c:Ljava/lang/String;

    .line 1517
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 7056
    iget-object v0, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1517
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1518
    iget-object v0, p1, Lgwo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    const-string/jumbo v0, "@lALPBbCc1b-sYDJYWA"

    iput-object v0, p1, Lgwo;->a:Ljava/lang/String;

    .line 1522
    :cond_0
    iget-object v0, p1, Lgwo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1524
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 8056
    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/ShareManager;->l:Landroid/content/Context;

    .line 1524
    if-eqz v1, :cond_1

    .line 1525
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    const/16 v2, 0x96

    const/16 v3, 0x2710

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1528
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 9056
    iget-object v1, v1, Lcom/alibaba/dingtalk/share/share/ShareManager;->b:Lcom/alibaba/dingtalk/share/share/ShareManager$b;

    .line 1528
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/share/share/ShareManager$b;->setPictureUrl(Ljava/lang/String;)V

    .line 1530
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1531
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    .line 10056
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->c()Ljava/util/List;

    move-result-object v1

    .line 1531
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1532
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->b:Lcom/alibaba/dingtalk/share/share/ShareManager;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/ShareManager$3;->a:Ljava/util/List;

    .line 11802
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/ShareManager;->a(Ljava/util/List;)V

    .line 11803
    iget-object v1, v0, Lcom/alibaba/dingtalk/share/share/ShareManager;->d:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11804
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/share/share/ShareManager;->b()V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :cond_3
    :goto_0
    return-void

    .line 1534
    :catch_0
    move-exception v0

    .line 1535
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 551
    const-string/jumbo v0, "share"

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[ShareManager]"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "buildUponUrl callback failed,errCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 547
    return-void
.end method
