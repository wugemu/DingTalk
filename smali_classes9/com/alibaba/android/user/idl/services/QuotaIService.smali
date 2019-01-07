.class public interface abstract Lcom/alibaba/android/user/idl/services/QuotaIService;
.super Ljava/lang/Object;
.source "QuotaIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract query(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Liyv",
            "<",
            "Lcfr;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryForBelong(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryForDetail(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcdg;",
            ">;)V"
        }
    .end annotation
.end method
