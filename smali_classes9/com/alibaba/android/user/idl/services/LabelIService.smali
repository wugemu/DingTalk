.class public interface abstract Lcom/alibaba/android/user/idl/services/LabelIService;
.super Ljava/lang/Object;
.source "LabelIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract deleteLabelGroup(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
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

.method public abstract getLabelGroupModelById(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lceb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getLabelGroupModels(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lceb;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getLabelGroupModelsWithPermission(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Lcea;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveOrUpdateLabelGroup(Ljava/lang/Long;Ljava/lang/Integer;Lceb;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lceb;",
            "Liyv",
            "<",
            "Lceb;",
            ">;)V"
        }
    .end annotation
.end method
