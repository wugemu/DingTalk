.class final Lbsv$4;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsv$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 1001
    iput-object p1, p0, Lbsv$4;->b:Lbsv;

    iput-object p2, p0, Lbsv$4;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1004
    iget-object v0, p0, Lbsv$4;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    if-eqz p1, :cond_3

    .line 1008
    iget-object v0, p0, Lbsv$4;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 1009
    iget-object v0, p0, Lbsv$4;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->a(Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lbsv$4;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->d:I

    invoke-interface {v0, v1}, Lbsw$b;->b(I)V

    .line 1011
    iget-object v0, p0, Lbsv$4;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->a:[B

    invoke-interface {v0, v1}, Lbsw$b;->a([B)V

    .line 1012
    iget-object v0, p0, Lbsv$4;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->e:I

    invoke-interface {v0, v1}, Lbsw$b;->c(I)V

    .line 1015
    :cond_2
    iget-object v0, p0, Lbsv$4;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lbsv$4;->a:Lbsy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_3
    iget-object v0, p0, Lbsv$4;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lbsv$4;->a:Lbsy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
