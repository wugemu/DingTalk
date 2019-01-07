.class public interface abstract Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor;
.super Ljava/lang/Object;
.source "H5LinkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;
    }
.end annotation


# virtual methods
.method public abstract addLinkMonitorTree(Ljava/lang/String;)V
.end method

.method public abstract cancelExpectation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelLinkMonitor(Ljava/lang/String;)V
.end method

.method public abstract checkExpectation(Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)V
.end method

.method public abstract createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract createExpectation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitor$ExpectationListener;)Z
.end method

.method public abstract fulfillExpectation(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract getLinkById(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkMonitorTree;
.end method

.method public abstract getLinkData(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/log/linkmonitor/H5LinkNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract linkCompleted()Z
.end method

.method public abstract setLinkCompleted(Z)V
.end method

.method public abstract setLinkData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method
