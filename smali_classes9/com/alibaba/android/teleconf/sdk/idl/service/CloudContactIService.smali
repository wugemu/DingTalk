.class public interface abstract Lcom/alibaba/android/teleconf/sdk/idl/service/CloudContactIService;
.super Ljava/lang/Object;
.source "CloudContactIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getCallerInfoCard(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserInfoCard(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/UserInfoCard;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryContacts(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryContactsByVersion(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/teleconf/sdk/idl/model/CloudContactModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateStatus(Ljava/lang/Integer;Ljava/lang/Boolean;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method
