.class final Lbsv$5;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsv$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->j(Lbsy$b;)V
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
    .line 1033
    iput-object p1, p0, Lbsv$5;->b:Lbsv;

    iput-object p2, p0, Lbsv$5;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1036
    iget-object v0, p0, Lbsv$5;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    if-eqz p1, :cond_3

    .line 1040
    iget-object v0, p0, Lbsv$5;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    if-eqz v0, :cond_2

    .line 1041
    iget-object v0, p0, Lbsv$5;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->b(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lbsv$5;->b:Lbsv;

    iget-object v0, v0, Lbsv;->b:Lbsw$b;

    iget-object v1, p1, Lcom/alibaba/android/dingbox/btinterface/BleInterface$h;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->f(Ljava/lang/String;)V

    .line 1044
    :cond_2
    iget-object v0, p0, Lbsv$5;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lbsv$5;->a:Lbsy$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 1048
    :cond_3
    iget-object v0, p0, Lbsv$5;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lbsv$5;->a:Lbsy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
