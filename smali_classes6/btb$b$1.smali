.class final Lbtb$b$1;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

.field final synthetic b:Lbtb$b;


# direct methods
.method constructor <init>(Lbtb$b;Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V
    .locals 0
    .param p1, "this$1"    # Lbtb$b;

    .prologue
    .line 490
    iput-object p1, p0, Lbtb$b$1;->b:Lbtb$b;

    iput-object p2, p0, Lbtb$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

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
    .line 493
    iget-object v0, p0, Lbtb$b$1;->b:Lbtb$b;

    iget-object v0, v0, Lbtb$b;->b:Lbtb;

    invoke-virtual {v0}, Lbtb;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lbtb$b$1;->b:Lbtb$b;

    .line 1474
    iget-object v0, v0, Lbtb$b;->a:Lbtb$c;

    .line 496
    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lbtb$b$1;->b:Lbtb$b;

    .line 2474
    iget-object v0, v0, Lbtb$b;->a:Lbtb$c;

    .line 497
    iget-object v1, p0, Lbtb$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    invoke-interface {v0, v1}, Lbtb$c;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V

    goto :goto_0
.end method
