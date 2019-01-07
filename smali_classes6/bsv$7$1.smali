.class final Lbsv$7$1;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsv$7;->a(Lcom/alibaba/android/dingbox/btinterface/BleInterface$e;)V
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
        "Lbsj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsv$7;


# direct methods
.method constructor <init>(Lbsv$7;)V
    .locals 0
    .param p1, "this$1"    # Lbsv$7;

    .prologue
    .line 1342
    iput-object p1, p0, Lbsv$7$1;->a:Lbsv$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1342
    check-cast p1, Lbsj;

    .line 2345
    const-string/jumbo v3, "BleBind"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "request getDeviceEndorsement success, endorseModel==null ? "

    aput-object v0, v4, v2

    if-nez p1, :cond_1

    move v0, v1

    .line 2346
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    .line 2345
    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    iget-object v0, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2352
    iget-object v0, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    iget-object v1, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v1, v1, Lbsv$7;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {v0, v1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2353
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "client is not connect"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 2345
    goto :goto_0

    .line 2357
    :cond_2
    if-nez p1, :cond_3

    .line 2358
    iget-object v0, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lbsv;->b(Lbsv;ZLjava/lang/String;)V

    goto :goto_1

    .line 2363
    :cond_3
    iget-object v0, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    new-instance v1, Lbsv$7$1$1;

    invoke-direct {v1, p0}, Lbsv$7$1$1;-><init>(Lbsv$7$1;)V

    invoke-static {v0, p1, v1}, Lbsv;->b(Lbsv;Lbsj;Lbsy$b;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1380
    const-string/jumbo v0, "BleBind"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "request getDeviceEndorsement fail, code=:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; msg="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    iget-object v1, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v1, v1, Lbsv$7;->a:Lcom/alibaba/android/dingbox/btinterface/BleInterface;

    invoke-static {v0, v1}, Lbsv;->a(Lbsv;Lcom/alibaba/android/dingbox/btinterface/BleInterface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    const-string/jumbo v0, "BleBind"

    const-string/jumbo v1, "client is not connect"

    invoke-static {v0, v1}, Lbtf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lbsv$7$1;->a:Lbsv$7;

    iget-object v0, v0, Lbsv$7;->b:Lbsv;

    invoke-static {v0, v4, p2}, Lbsv;->b(Lbsv;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1376
    return-void
.end method
