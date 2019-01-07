.class public abstract Lcom/alipay/mobile/security/bio/service/local/transfer/TransferService;
.super Lcom/alipay/mobile/security/bio/service/local/LocalService;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Source:",
        "Ljava/lang/Object;",
        "Target:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alipay/mobile/security/bio/service/local/LocalService;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/alipay/mobile/security/bio/service/local/transfer/TransferService;, "Lcom/alipay/mobile/security/bio/service/local/transfer/TransferService<TSource;TTarget;TResult;>;"
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/local/LocalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract transfer(Ljava/lang/Object;Ljava/lang/Object;ZLcom/alipay/mobile/security/bio/service/local/transfer/ProgressCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSource;TTarget;Z",
            "Lcom/alipay/mobile/security/bio/service/local/transfer/ProgressCallback",
            "<TSource;TResult;>;)V"
        }
    .end annotation
.end method
