.class public Lcom/alibaba/doraemon/impl/request/VolleyError;
.super Ljava/lang/Exception;
.source "VolleyError.java"


# instance fields
.field public networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/alibaba/doraemon/impl/request/NetworkResponse;->toErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/VolleyError;->networkResponse:Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exceptionMessage"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method
