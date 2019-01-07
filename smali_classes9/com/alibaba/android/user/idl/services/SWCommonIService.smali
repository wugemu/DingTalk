.class public interface abstract Lcom/alibaba/android/user/idl/services/SWCommonIService;
.super Ljava/lang/Object;
.source "SWCommonIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getHireInfo(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfqh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPersonalSummary(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lfqi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getQuitInfo(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfqh;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserSummary(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfqj;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getUserSummaryByOrg(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfqj;",
            ">;)V"
        }
    .end annotation
.end method
