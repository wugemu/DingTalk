.class final Lbsv$b$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

.field final synthetic b:Lbsv$b;


# direct methods
.method constructor <init>(Lbsv$b;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$b;

    .prologue
    .line 1767
    iput-object p1, p0, Lbsv$b$1;->b:Lbsv$b;

    iput-object p2, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1770
    iget-object v1, p0, Lbsv$b$1;->b:Lbsv$b;

    iget-object v1, v1, Lbsv$b;->b:Lbsv;

    invoke-virtual {v1}, Lbsv;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    iget-object v1, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbsv$b$1;->b:Lbsv$b;

    iget-object v1, v1, Lbsv$b;->b:Lbsv;

    iget-object v1, v1, Lbsv;->b:Lbsw$b;

    if-eqz v1, :cond_2

    .line 1775
    iget-object v1, p0, Lbsv$b$1;->b:Lbsv$b;

    iget-object v1, v1, Lbsv$b;->b:Lbsv;

    iget-object v1, v1, Lbsv;->b:Lbsw$b;

    iget-object v2, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v2, v2, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    invoke-interface {v1, v2}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1778
    :cond_2
    iget-object v1, p0, Lbsv$b$1;->b:Lbsv$b;

    .line 2709
    iget-object v1, v1, Lbsv$b;->a:Lbsy$c;

    .line 1778
    if-eqz v1, :cond_0

    .line 1779
    iget-object v1, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v1, :cond_3

    .line 3068
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1780
    iget-object v2, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-static {v1, v2}, Lbtd;->a(Landroid/content/Context;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lbsv$b$1;->b:Lbsv$b;

    .line 3709
    iget-object v1, v1, Lbsv$b;->a:Lbsy$c;

    .line 1781
    const-string/jumbo v2, "200"

    iget-object v3, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lbsv$b$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lbsy$c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1783
    .end local v0    # "reason":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lbsv$b$1;->b:Lbsv$b;

    .line 4709
    iget-object v1, v1, Lbsv$b;->a:Lbsy$c;

    .line 1783
    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3}, Lbsy$c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
