.class final Lbsv$a$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

.field final synthetic b:Lbsv$a;


# direct methods
.method constructor <init>(Lbsv$a;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$a;

    .prologue
    .line 1489
    iput-object p1, p0, Lbsv$a$1;->b:Lbsv$a;

    iput-object p2, p0, Lbsv$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1492
    iget-object v2, p0, Lbsv$a$1;->b:Lbsv$a;

    iget-object v2, v2, Lbsv$a;->b:Lbsv;

    invoke-virtual {v2}, Lbsv;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    iget-object v2, p0, Lbsv$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsv$a$1;->b:Lbsv$a;

    iget-object v2, v2, Lbsv$a;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    if-eqz v2, :cond_2

    .line 1497
    iget-object v2, p0, Lbsv$a$1;->b:Lbsv$a;

    iget-object v2, v2, Lbsv$a;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    iget-object v3, p0, Lbsv$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1500
    :cond_2
    iget-object v2, p0, Lbsv$a$1;->b:Lbsv$a;

    .line 2434
    iget-object v2, v2, Lbsv$a;->a:Lbsy$b;

    .line 1500
    if-eqz v2, :cond_0

    .line 1501
    iget-object v2, p0, Lbsv$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_3

    .line 1502
    const-string/jumbo v2, "200"

    iget-object v3, p0, Lbsv$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3068
    .local v1, "success":Z
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1503
    iget-object v3, p0, Lbsv$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-static {v2, v3}, Lbtd;->a(Landroid/content/Context;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lbsv$a$1;->b:Lbsv$a;

    .line 3434
    iget-object v2, v2, Lbsv$a;->a:Lbsy$b;

    .line 1504
    invoke-interface {v2, v1, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1506
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "success":Z
    :cond_3
    iget-object v2, p0, Lbsv$a$1;->b:Lbsv$a;

    .line 4434
    iget-object v2, v2, Lbsv$a;->a:Lbsy$b;

    .line 1506
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
