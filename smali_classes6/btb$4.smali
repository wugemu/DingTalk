.class final Lbtb$4;
.super Ljava/lang/Object;
.source "TCPBindPresenter.java"

# interfaces
.implements Lbtb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbtb;


# direct methods
.method constructor <init>(Lbtb;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbtb;

    .prologue
    .line 301
    iput-object p1, p0, Lbtb$4;->b:Lbtb;

    iput-object p2, p0, Lbtb$4;->a:Lbsy$b;

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

    .line 304
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    invoke-virtual {v0}, Lbtb;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    if-eqz p1, :cond_4

    .line 308
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    iget-object v0, v0, Lbtb;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    iget-object v0, v0, Lbtb;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->a(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    iget-object v0, v0, Lbtb;->b:Lbsw$b;

    iget v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->d:I

    invoke-interface {v0, v1}, Lbsw$b;->b(I)V

    .line 311
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    iget-object v0, v0, Lbtb;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->a:[B

    invoke-interface {v0, v1}, Lbsw$b;->a([B)V

    .line 312
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    iget-object v0, v0, Lbtb;->b:Lbsw$b;

    iget v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->e:I

    invoke-interface {v0, v1}, Lbsw$b;->c(I)V

    .line 313
    iget-object v0, p0, Lbtb$4;->b:Lbtb;

    iget-object v0, v0, Lbtb;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->b(Ljava/lang/String;)V

    .line 316
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "deviceSn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "devServid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    :cond_3
    iget-object v0, p0, Lbtb$4;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lbtb$4;->a:Lbsy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_4
    iget-object v0, p0, Lbtb$4;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lbtb$4;->a:Lbsy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
