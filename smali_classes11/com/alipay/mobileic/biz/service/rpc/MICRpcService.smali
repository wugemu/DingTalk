.class public interface abstract Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;
.super Ljava/lang/Object;
.source "MICRpcService.java"


# static fields
.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/alipay/mobileic/biz/service/rpc/MICRpcService;->sInjector:Ljava/lang/Class;

    return-void

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    goto :goto_0
.end method


# virtual methods
.method public abstract dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.ic.dispatch"
    .end annotation
.end method

.method public abstract initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.ic.init.outer"
    .end annotation
.end method

.method public abstract report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.ic.report"
    .end annotation
.end method
