.class public interface abstract Lcom/alibaba/sdk/android/httpdns/HttpDnsService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getIpByHostAsync(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIpsByHostAsync(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract setAuthCurrentTime(J)V
.end method

.method public abstract setCachedIPEnabled(Z)V
.end method

.method public abstract setDegradationFilter(Lcom/alibaba/sdk/android/httpdns/DegradationFilter;)V
.end method

.method public abstract setExpiredIPEnabled(Z)V
.end method

.method public abstract setHTTPSRequestEnabled(Z)V
.end method

.method public abstract setLogEnabled(Z)V
.end method

.method public abstract setPreResolveAfterNetworkChanged(Z)V
.end method

.method public abstract setPreResolveHosts(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTimeoutInterval(I)V
.end method
