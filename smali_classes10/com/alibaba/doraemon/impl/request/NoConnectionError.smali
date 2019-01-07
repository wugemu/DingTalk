.class public Lcom/alibaba/doraemon/impl/request/NoConnectionError;
.super Lcom/alibaba/doraemon/impl/request/NetworkError;
.source "NoConnectionError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/NetworkError;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/NetworkError;-><init>(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method
