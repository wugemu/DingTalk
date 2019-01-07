.class final Lbbk$26;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbk;->a(Ljava/util/List;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbcr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 521
    iput-object p1, p0, Lbbk$26;->b:Lbbk;

    iput-object p2, p0, Lbbk$26;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 578
    iget-object v0, p0, Lbbk$26;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string/jumbo v0, "listDings failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 521
    check-cast p1, Lbcr;

    .line 1524
    if-nez p1, :cond_0

    .line 1525
    iget-object v0, p0, Lbbk$26;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1526
    :goto_0
    return-void

    .line 1529
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1531
    iget-object v0, p1, Lbcr;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lbcr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1532
    iget-object v0, p1, Lbcr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazn;

    .line 1533
    if-eqz v0, :cond_1

    .line 1536
    new-instance v3, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;

    invoke-direct {v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingReceived;-><init>(Lazn;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1540
    :cond_2
    iget-object v0, p1, Lbcr;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lbcr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1541
    iget-object v0, p1, Lbcr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazo;

    .line 1542
    if-eqz v0, :cond_3

    .line 1545
    iget-object v3, v0, Lazo;->a:Lazm;

    .line 1546
    if-eqz v3, :cond_3

    .line 1549
    iget-object v4, v3, Lazm;->m:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    move-result-object v4

    .line 1550
    sget-object v5, Lbbk$12;->a:[I

    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1552
    :pswitch_1
    new-instance v3, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v3, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1555
    :pswitch_2
    new-instance v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    invoke-direct {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;-><init>(Lazm;)V

    .line 1556
    iget-object v3, v0, Lazo;->b:Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 1557
    iget-object v3, v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->U:Lckm;

    iget-object v5, v0, Lazo;->b:Ljava/lang/Long;

    .line 2207
    invoke-virtual {v3, v5}, Lckm;->a(Ljava/lang/Object;)Z

    .line 1559
    :cond_4
    iget-object v3, v0, Lazo;->d:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 1560
    iget-object v3, v0, Lazo;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->h(I)V

    .line 1562
    :cond_5
    iget-object v3, v0, Lazo;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 1563
    iget-object v3, v4, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->V:Lckm;

    iget-object v0, v0, Lazo;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;->valueOf(I)Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;

    move-result-object v0

    .line 3207
    invoke-virtual {v3, v0}, Lckm;->a(Ljava/lang/Object;)Z

    .line 1565
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1573
    :cond_7
    iget-object v0, p0, Lbbk$26;->a:Lcma;

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1550
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
