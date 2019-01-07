.class final Lbsv$9;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv;->a(Lbsy$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbsa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 439
    iput-object p1, p0, Lbsv$9;->b:Lbsv;

    iput-object p2, p0, Lbsv$9;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 439
    check-cast p1, Lbsa;

    .line 1442
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "bind device success"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lbsv$9;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1446
    iget-object v0, p0, Lbsv$9;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->s()V

    .line 1448
    if-nez p1, :cond_2

    .line 1449
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "bind result null"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lbsv$9;->b:Lbsv;

    sget v1, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v0, v1}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1452
    iget-object v1, p0, Lbsv$9;->a:Lbsy$b;

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lbsv$9;->a:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 1455
    :cond_0
    iget-object v0, p0, Lbsv$9;->b:Lbsv;

    const-string/jumbo v1, "Page_Smart_Device_Set_Org_Button-failed"

    const-string/jumbo v2, "a2q0r.11900333.1.failed"

    invoke-static {v0, v1, v2}, Lbsv;->a(Lbsv;Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    :cond_1
    :goto_0
    return-void

    .line 1458
    :cond_2
    iget-object v0, p0, Lbsv$9;->b:Lbsv;

    const-string/jumbo v1, "Page_Smart_Device_Set_Org_Button-succ"

    const-string/jumbo v2, "a2q0r.11900333.1.succ"

    invoke-static {v0, v1, v2}, Lbsv;->a(Lbsv;Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lbsv$9;->b:Lbsv;

    iget-object v1, p0, Lbsv$9;->a:Lbsy$b;

    invoke-static {v0, p1, v1}, Lbsv;->a(Lbsv;Lbsa;Lbsy$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 467
    const-string/jumbo v1, "BleBind"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "bind fail, code="

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; msg="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lbsv$9;->b:Lbsv;

    invoke-virtual {v1}, Lbsv;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v1, p0, Lbsv$9;->b:Lbsv;

    invoke-virtual {v1}, Lbsv;->s()V

    .line 1068
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 472
    invoke-static {v1, p1}, Lbta;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "reasonFromCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 474
    move-object p2, v0

    .line 476
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 477
    iget-object v1, p0, Lbsv$9;->b:Lbsv;

    sget v2, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v1, v2}, Lbsv;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 479
    :cond_3
    iget-object v1, p0, Lbsv$9;->a:Lbsy$b;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lbsv$9;->a:Lbsy$b;

    invoke-interface {v1, v5, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 463
    return-void
.end method
