.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/PublicAccountIService;
.super Ljava/lang/Object;
.source "PublicAccountIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getMenuByCid(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessageByActionId(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
