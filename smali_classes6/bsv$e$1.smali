.class final Lbsv$e$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

.field final synthetic b:Lbsv$e;


# direct methods
.method constructor <init>(Lbsv$e;Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$e;

    .prologue
    .line 1554
    iput-object p1, p0, Lbsv$e$1;->b:Lbsv$e;

    iput-object p2, p0, Lbsv$e$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

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
    .line 1557
    iget-object v0, p0, Lbsv$e$1;->b:Lbsv$e;

    iget-object v0, v0, Lbsv$e;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    iget-object v0, p0, Lbsv$e$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsv$e$1;->b:Lbsv$e;

    iget-object v0, v0, Lbsv$e;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 1561
    iget-object v0, p0, Lbsv$e$1;->b:Lbsv$e;

    iget-object v0, v0, Lbsv$e;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p0, Lbsv$e$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    iget-object v1, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->f:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1564
    :cond_2
    iget-object v0, p0, Lbsv$e$1;->b:Lbsv$e;

    .line 2514
    iget-object v0, v0, Lbsv$e;->a:Lbsv$h;

    .line 1564
    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Lbsv$e$1;->b:Lbsv$e;

    .line 3514
    iget-object v0, v0, Lbsv$e;->a:Lbsv$h;

    .line 1565
    iget-object v1, p0, Lbsv$e$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    invoke-interface {v0, v1}, Lbsv$h;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V

    goto :goto_0
.end method
