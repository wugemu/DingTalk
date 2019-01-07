.class public Lcom/alibaba/doraemon/impl/request/ServerError;
.super Lcom/alibaba/doraemon/impl/request/VolleyError;
.source "ServerError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V
    .locals 0
    .param p1, "networkResponse"    # Lcom/alibaba/doraemon/impl/request/NetworkResponse;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Lcom/alibaba/doraemon/impl/request/NetworkResponse;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method
