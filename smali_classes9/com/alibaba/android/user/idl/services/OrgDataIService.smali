.class public interface abstract Lcom/alibaba/android/user/idl/services/OrgDataIService;
.super Ljava/lang/Object;
.source "OrgDataIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getAllOrgScoreData(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfpq;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getOrgScoreInfo(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lfpr;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTrendDataInfo(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfpt;",
            ">;)V"
        }
    .end annotation
.end method
