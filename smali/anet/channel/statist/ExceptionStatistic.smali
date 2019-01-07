.class public Lanet/channel/statist/ExceptionStatistic;
.super Lanet/channel/statist/StatObject;
.source "ExceptionStatistic.java"


# annotations
.annotation runtime Lanet/channel/statist/Monitor;
    module = "networkPrefer"
    monitorPoint = "NetworkError"
.end annotation


# instance fields
.field public bizId:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public exceptionStack:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public exceptionType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public host:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public ip:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isDNS:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isProxy:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public isSSL:Z
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public netType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public port:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public protocolType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public proxyType:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lanet/channel/statist/Dimension;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "rs"    # Lanet/channel/statist/RequestStatistic;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 36
    const-string/jumbo v0, "nw"

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->exceptionType:Ljava/lang/String;

    .line 37
    iput p1, p0, Lanet/channel/statist/ExceptionStatistic;->resultCode:I

    .line 38
    if-eqz p2, :cond_1

    .end local p2    # "errorMsg":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lanet/channel/statist/ExceptionStatistic;->errorMsg:Ljava/lang/String;

    .line 39
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->exceptionStack:Ljava/lang/String;

    .line 40
    if-eqz p3, :cond_0

    .line 41
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->host:Ljava/lang/String;

    .line 42
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->ip:Ljava/lang/String;

    .line 43
    iget v0, p3, Lanet/channel/statist/RequestStatistic;->port:I

    iput v0, p0, Lanet/channel/statist/ExceptionStatistic;->port:I

    .line 44
    iget-boolean v0, p3, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    iput-boolean v0, p0, Lanet/channel/statist/ExceptionStatistic;->isSSL:Z

    .line 45
    iget-boolean v0, p3, Lanet/channel/statist/RequestStatistic;->isProxy:Z

    iput-boolean v0, p0, Lanet/channel/statist/ExceptionStatistic;->isProxy:Z

    .line 46
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->proxyType:Ljava/lang/String;

    .line 47
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->netType:Ljava/lang/String;

    .line 48
    iget-boolean v0, p3, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    iput-boolean v0, p0, Lanet/channel/statist/ExceptionStatistic;->isDNS:Z

    .line 49
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->protocolType:Ljava/lang/String;

    .line 50
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->bizId:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/statist/ExceptionStatistic;->bizId:Ljava/lang/String;

    .line 52
    :cond_0
    return-void

    .line 38
    .restart local p2    # "errorMsg":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Lks;->a(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 39
    .end local p2    # "errorMsg":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lanet/channel/statist/StatObject;-><init>()V

    .line 30
    iput p1, p0, Lanet/channel/statist/ExceptionStatistic;->resultCode:I

    .line 31
    if-eqz p2, :cond_0

    .end local p2    # "errorMsg":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lanet/channel/statist/ExceptionStatistic;->errorMsg:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lanet/channel/statist/ExceptionStatistic;->exceptionType:Ljava/lang/String;

    .line 33
    return-void

    .line 31
    .restart local p2    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lks;->a(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
