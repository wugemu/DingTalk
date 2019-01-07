.class public Lcom/alipay/android/app/render/api/result/PreparedResult;
.super Ljava/lang/Object;
.source "PreparedResult.java"


# instance fields
.field public mResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/alipay/android/app/render/api/result/PreparedResult;->mResult:Ljava/lang/Object;

    .line 9
    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/alipay/android/app/render/api/result/PreparedResult;
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 12
    new-instance v0, Lcom/alipay/android/app/render/api/result/PreparedResult;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/render/api/result/PreparedResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
