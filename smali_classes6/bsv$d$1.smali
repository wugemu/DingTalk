.class final Lbsv$d$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

.field final synthetic b:Lbsv$d;


# direct methods
.method constructor <init>(Lbsv$d;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$d;

    .prologue
    .line 1974
    iput-object p1, p0, Lbsv$d$1;->b:Lbsv$d;

    iput-object p2, p0, Lbsv$d$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

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
    .line 1977
    iget-object v2, p0, Lbsv$d$1;->b:Lbsv$d;

    iget-object v2, v2, Lbsv$d;->b:Lbsv;

    invoke-virtual {v2}, Lbsv;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    iget-object v2, p0, Lbsv$d$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbsv$d$1;->b:Lbsv$d;

    iget-object v2, v2, Lbsv$d;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    if-eqz v2, :cond_2

    .line 1982
    iget-object v2, p0, Lbsv$d$1;->b:Lbsv$d;

    iget-object v2, v2, Lbsv$d;->b:Lbsv;

    iget-object v2, v2, Lbsv;->b:Lbsw$b;

    iget-object v3, p0, Lbsv$d$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->c:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Lbsw$b;->a(Ljava/lang/Integer;)V

    .line 1985
    :cond_2
    iget-object v2, p0, Lbsv$d$1;->b:Lbsv$d;

    .line 2926
    iget-object v2, v2, Lbsv$d;->a:Lbsy$b;

    .line 1985
    if-eqz v2, :cond_0

    .line 1986
    iget-object v2, p0, Lbsv$d$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    if-eqz v2, :cond_3

    .line 1987
    const-string/jumbo v2, "200"

    iget-object v3, p0, Lbsv$d$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    iget-object v3, v3, Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3068
    .local v1, "success":Z
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1988
    iget-object v3, p0, Lbsv$d$1;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;

    invoke-static {v2, v3}, Lbtd;->a(Landroid/content/Context;Lcom/alibaba/android/dingbox/btinterface/BleInterface$f;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lbsv$d$1;->b:Lbsv$d;

    .line 3926
    iget-object v2, v2, Lbsv$d;->a:Lbsy$b;

    .line 1989
    invoke-interface {v2, v1, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1991
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "success":Z
    :cond_3
    iget-object v2, p0, Lbsv$d$1;->b:Lbsv$d;

    .line 4926
    iget-object v2, v2, Lbsv$d;->a:Lbsy$b;

    .line 1991
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
