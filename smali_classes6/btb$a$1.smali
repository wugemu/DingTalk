.class final Lbtb$a$1;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

.field final synthetic b:Lbtb$a;


# direct methods
.method constructor <init>(Lbtb$a;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V
    .locals 0
    .param p1, "this$1"    # Lbtb$a;

    .prologue
    .line 453
    iput-object p1, p0, Lbtb$a$1;->b:Lbtb$a;

    iput-object p2, p0, Lbtb$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

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
    .line 456
    iget-object v2, p0, Lbtb$a$1;->b:Lbtb$a;

    iget-object v2, v2, Lbtb$a;->b:Lbtb;

    invoke-virtual {v2}, Lbtb;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v2, p0, Lbtb$a$1;->b:Lbtb$a;

    .line 1367
    iget-object v2, v2, Lbtb$a;->a:Lbsy$b;

    .line 460
    if-eqz v2, :cond_0

    .line 461
    iget-object v2, p0, Lbtb$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_2

    .line 462
    const-string/jumbo v2, "Success"

    iget-object v3, p0, Lbtb$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2068
    .local v1, "success":Z
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 463
    iget-object v3, p0, Lbtb$a$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-static {v2, v3}, Lbtd;->a(Landroid/content/Context;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lbtb$a$1;->b:Lbtb$a;

    .line 2367
    iget-object v2, v2, Lbtb$a;->a:Lbsy$b;

    .line 464
    invoke-interface {v2, v1, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "success":Z
    :cond_2
    iget-object v2, p0, Lbtb$a$1;->b:Lbtb$a;

    .line 3367
    iget-object v2, v2, Lbtb$a;->a:Lbsy$b;

    .line 466
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
