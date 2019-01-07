.class final Lbbo$37;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbft;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbft;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3447
    iput-object p1, p0, Lbbo$37;->c:Lbbo;

    iput-object p2, p0, Lbbo$37;->a:Lbft;

    iput-object p3, p0, Lbbo$37;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3447
    check-cast p1, Ljava/lang/Void;

    .line 4450
    iget-object v0, p0, Lbbo$37;->c:Lbbo;

    iget-object v1, p0, Lbbo$37;->a:Lbft;

    .line 5019
    iget-wide v2, v1, Lbft;->a:J

    .line 4450
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 4451
    if-eqz v0, :cond_0

    .line 4453
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)V

    .line 4456
    :cond_0
    iget-object v0, p0, Lbbo$37;->c:Lbbo;

    .line 5139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 4456
    iget-object v1, p0, Lbbo$37;->a:Lbft;

    .line 6019
    iget-wide v2, v1, Lbft;->a:J

    .line 4456
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbgp;->f(Ljava/lang/String;I)I

    .line 4458
    iget-object v0, p0, Lbbo$37;->c:Lbbo;

    iget-object v1, p0, Lbbo$37;->b:Lcma;

    .line 6139
    invoke-virtual {v0, v1, p1}, Lbbo;->a(Lcma;Ljava/lang/Object;)V

    .line 4461
    iget-object v0, p0, Lbbo$37;->c:Lbbo;

    invoke-virtual {v0}, Lbbo;->e()V

    .line 3447
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 3470
    iget-object v0, p0, Lbbo$37;->c:Lbbo;

    iget-object v1, p0, Lbbo$37;->b:Lcma;

    .line 4139
    invoke-virtual {v0, v1, p1, p2}, Lbbo;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3471
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3466
    return-void
.end method
