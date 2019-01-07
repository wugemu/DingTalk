.class final Lbag$27;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbag;->a()V
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
        "Lbfm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbag;


# direct methods
.method constructor <init>(Lbag;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 692
    iput-object p1, p0, Lbag$27;->a:Lbag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 692
    check-cast p1, Lbfm;

    .line 1695
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->e()V

    .line 1699
    if-nez p1, :cond_1

    .line 1700
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->s()V

    .line 1701
    sget v0, Laxp$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1713
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    iget-object v0, p1, Lbfm;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1705
    if-nez v0, :cond_3

    .line 1706
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->i(Lbag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1707
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDetailPresenter]getDingDetail object ding from local is null, dingId:"

    aput-object v1, v0, v5

    iget-object v1, p0, Lbag$27;->a:Lbag;

    invoke-static {v1}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1709
    :cond_2
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->s()V

    .line 1710
    sget v0, Laxp$i;->unknown_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1711
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDetailPresenter]getDingDetail object ding from server is null, dingId:"

    aput-object v1, v0, v5

    iget-object v1, p0, Lbag$27;->a:Lbag;

    invoke-static {v1}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_3
    iget-object v0, p0, Lbag$27;->a:Lbag;

    .line 3039
    iget-object v1, p1, Lbfm;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1716
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbag;->b(Lbag;Ljava/lang/String;)Ljava/lang/String;

    .line 1717
    iget-object v0, p0, Lbag$27;->a:Lbag;

    .line 4035
    iget-boolean v1, p1, Lbfm;->a:Z

    .line 1717
    invoke-static {v0, v1}, Lbag;->a(Lbag;Z)Z

    .line 1718
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4043
    iget-object v0, p1, Lbfm;->c:Ljava/util/List;

    .line 1719
    if-eqz v0, :cond_4

    .line 5043
    iget-object v0, p1, Lbfm;->c:Ljava/util/List;

    .line 1719
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1720
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->d(Lbag;)Ljava/util/List;

    move-result-object v0

    .line 6043
    iget-object v1, p1, Lbfm;->c:Ljava/util/List;

    .line 1720
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1722
    :cond_4
    iget-object v0, p0, Lbag$27;->a:Lbag;

    .line 7027
    iget-object v1, p1, Lbfm;->d:Lbfv;

    .line 1722
    invoke-static {v0, v1}, Lbag;->a(Lbag;Lbfv;)Lbfv;

    .line 1723
    iget-object v0, p0, Lbag$27;->a:Lbag;

    iget-object v1, p0, Lbag$27;->a:Lbag;

    invoke-static {v1}, Lbag;->e(Lbag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbag;->a(Lbag;Ljava/lang/String;)Ljava/lang/String;

    .line 1725
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1726
    iget-object v0, p0, Lbag$27;->a:Lbag;

    .line 7039
    iget-object v1, p1, Lbfm;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1726
    invoke-static {v0, v1}, Lbag;->a(Lbag;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1727
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->j(Lbag;)V

    .line 8035
    :cond_5
    iget-boolean v0, p1, Lbfm;->a:Z

    .line 1730
    if-nez v0, :cond_7

    .line 1731
    iget-object v0, p0, Lbag$27;->a:Lbag;

    .line 8856
    iget-object v1, v0, Lbag;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lbag;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 8857
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    if-ne v1, v2, :cond_6

    .line 8858
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v0, v0, Lbag;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 9750
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    .line 1732
    :cond_6
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->k(Lbag;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lbag$27;->a:Lbag;

    invoke-static {v1}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v1

    .line 10174
    if-eqz v0, :cond_7

    .line 10177
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.ding.confirm.ding"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10178
    const-string/jumbo v3, "ding_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10179
    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1735
    :cond_7
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->l(Lbag;)Lazw;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1736
    iget-object v0, p0, Lbag$27;->a:Lbag;

    new-instance v1, Lazw;

    iget-object v2, p0, Lbag$27;->a:Lbag;

    invoke-static {v2}, Lbag;->k(Lbag;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lbag$27;->a:Lbag;

    invoke-static {v3}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbag$27;->a:Lbag;

    invoke-static {v4}, Lbag;->m(Lbag;)Lazv$b;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lazw;-><init>(Landroid/app/Activity;Ljava/lang/String;Lazv$b;)V

    invoke-static {v0, v1}, Lbag;->a(Lbag;Lazw;)Lazw;

    .line 1737
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->m(Lbag;)Lazv$b;

    move-result-object v0

    iget-object v1, p0, Lbag$27;->a:Lbag;

    invoke-static {v1}, Lbag;->l(Lbag;)Lazw;

    move-result-object v1

    invoke-interface {v0, v1}, Lazv$b;->setPresenter(Lcjd;)V

    .line 1740
    :cond_8
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    iget-object v1, p0, Lbag$27;->a:Lbag;

    invoke-static {v1}, Lbag;->b(Lbag;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 11043
    iget-object v2, p1, Lbfm;->c:Ljava/util/List;

    .line 1740
    iget-object v3, p0, Lbag$27;->a:Lbag;

    invoke-static {v3}, Lbag;->f(Lbag;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lbaf$b;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Ljava/util/List;Ljava/lang/String;)V

    .line 1741
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDetailPresenter]getDingDetail, isFromLocal:"

    aput-object v1, v0, v5

    .line 12035
    iget-boolean v1, p1, Lbfm;->a:Z

    .line 1741
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, ", dingId:"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lbag$27;->a:Lbag;

    invoke-static {v2}, Lbag;->c(Lbag;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 750
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->e()V

    .line 755
    const-string/jumbo v0, "431072"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->v()V

    goto :goto_0

    .line 758
    :cond_2
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->i(Lbag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lbag$27;->a:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->s()V

    .line 760
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 746
    return-void
.end method
