.class public Lcom/alibaba/doraemon/impl/request/ParseError;
.super Lcom/alibaba/doraemon/impl/request/VolleyError;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
