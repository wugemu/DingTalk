.class final Lbsv$k$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

.field final synthetic b:Lbsv$k;


# direct methods
.method constructor <init>(Lbsv$k;Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$k;

    .prologue
    .line 1610
    iput-object p1, p0, Lbsv$k$1;->b:Lbsv$k;

    iput-object p2, p0, Lbsv$k$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1613
    iget-object v0, p0, Lbsv$k$1;->b:Lbsv$k;

    iget-object v0, v0, Lbsv$k;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    iget-object v0, p0, Lbsv$k$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsv$k$1;->b:Lbsv$k;

    iget-object v0, v0, Lbsv$k;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 1618
    iget-object v0, p0, Lbsv$k$1;->b:Lbsv$k;

    iget-object v0, v0, Lbsv$k;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p0, Lbsv$k$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    iget-object v1, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1621
    :cond_2
    iget-object v0, p0, Lbsv$k$1;->b:Lbsv$k;

    iget-object v0, v0, Lbsv$k;->a:Lbsv$j;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lbsv$k$1;->b:Lbsv$k;

    iget-object v0, v0, Lbsv$k;->a:Lbsv$j;

    iget-object v1, p0, Lbsv$k$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    invoke-interface {v0, v1}, Lbsv$j;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;)V

    goto :goto_0
.end method
