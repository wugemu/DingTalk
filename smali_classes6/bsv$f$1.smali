.class final Lbsv$f$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

.field final synthetic b:Lbsv$f;


# direct methods
.method constructor <init>(Lbsv$f;Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$f;

    .prologue
    .line 1908
    iput-object p1, p0, Lbsv$f$1;->b:Lbsv$f;

    iput-object p2, p0, Lbsv$f$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

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
    .line 1911
    iget-object v0, p0, Lbsv$f$1;->b:Lbsv$f;

    iget-object v0, v0, Lbsv$f;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    iget-object v0, p0, Lbsv$f$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbsv$f$1;->b:Lbsv$f;

    iget-object v0, v0, Lbsv$f;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 1915
    iget-object v0, p0, Lbsv$f$1;->b:Lbsv$f;

    iget-object v0, v0, Lbsv$f;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p0, Lbsv$f$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    iget-object v1, v1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;->d:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1918
    :cond_2
    iget-object v0, p0, Lbsv$f$1;->b:Lbsv$f;

    .line 2862
    iget-object v0, v0, Lbsv$f;->a:Lbsv$i;

    .line 1918
    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lbsv$f$1;->b:Lbsv$f;

    .line 3862
    iget-object v0, v0, Lbsv$f;->a:Lbsv$i;

    .line 1919
    iget-object v1, p0, Lbsv$f$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;

    invoke-interface {v0, v1}, Lbsv$i;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V

    goto :goto_0
.end method
