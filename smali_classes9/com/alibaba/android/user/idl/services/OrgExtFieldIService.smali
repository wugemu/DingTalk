.class public interface abstract Lcom/alibaba/android/user/idl/services/OrgExtFieldIService;
.super Ljava/lang/Object;
.source "OrgExtFieldIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addOrgExtField(Ljava/lang/Integer;Lfph;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lfph;",
            "Liyv",
            "<",
            "Lfph;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listCustomOrgExtField(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lfph;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract removeOrgExtField(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateOrgExtField(Ljava/lang/Integer;Lfph;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lfph;",
            "Liyv",
            "<",
            "Lfph;",
            ">;)V"
        }
    .end annotation
.end method
