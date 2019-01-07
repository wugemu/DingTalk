.class public interface abstract Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;
.super Ljava/lang/Object;
.source "CommonIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract bridge(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkUrl(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lgtp;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOverage(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcgg;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getSystemTime(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWhiteDomains(Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method
