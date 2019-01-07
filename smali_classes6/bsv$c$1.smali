.class final Lbsv$c$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

.field final synthetic b:Lbsv$c;


# direct methods
.method constructor <init>(Lbsv$c;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$c;

    .prologue
    .line 1673
    iput-object p1, p0, Lbsv$c$1;->b:Lbsv$c;

    iput-object p2, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1676
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    invoke-virtual {v2}, Lbsv;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    :cond_0
    :goto_0
    return-void

    .line 1680
    :cond_1
    iget-object v2, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    if-eqz v2, :cond_2

    .line 1681
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    iget-object v3, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1683
    const-string/jumbo v2, "200"

    iget-object v3, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1684
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    invoke-interface {v2, v5}, Lbsw$b;->a(Z)V

    .line 1685
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    invoke-interface {v2, v5}, Lbsw$b;->b(Z)V

    .line 1695
    :cond_2
    :goto_1
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    .line 2630
    iget-object v2, v2, Lbsv$c;->a:Lbsy$b;

    .line 1695
    if-eqz v2, :cond_0

    .line 1696
    iget-object v2, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_5

    .line 1697
    const-string/jumbo v2, "200"

    iget-object v3, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3068
    .local v1, "success":Z
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1698
    iget-object v3, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-static {v2, v3}, Lbtd;->a(Landroid/content/Context;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    .line 3630
    iget-object v2, v2, Lbsv$c;->a:Lbsy$b;

    .line 1699
    invoke-interface {v2, v1, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1686
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "success":Z
    :cond_3
    const-string/jumbo v2, "-21"

    iget-object v3, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1687
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    invoke-interface {v2, v4}, Lbsw$b;->a(Z)V

    .line 1688
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    invoke-interface {v2, v4}, Lbsw$b;->b(Z)V

    goto :goto_1

    .line 1689
    :cond_4
    const-string/jumbo v2, "-22"

    iget-object v3, p0, Lbsv$c$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1690
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    invoke-interface {v2, v5}, Lbsw$b;->a(Z)V

    .line 1691
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    iget-object v2, v2, Lbsv$c;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    invoke-interface {v2, v4}, Lbsw$b;->b(Z)V

    goto :goto_1

    .line 1701
    :cond_5
    iget-object v2, p0, Lbsv$c$1;->b:Lbsv$c;

    .line 4630
    iget-object v2, v2, Lbsv$c;->a:Lbsy$b;

    .line 1701
    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
