.class public interface abstract Lcom/alibaba/android/dingtalkim/chat/facetoface/rpc/NearbyGroupIService;
.super Ljava/lang/Object;
.source "NearbyGroupIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract createF2FGroup(Ljava/lang/String;Ldem;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldem;",
            "Liyv",
            "<",
            "Ldel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract joinF2FGroup(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncF2FMembers(Ljava/lang/String;Ljava/lang/String;Ldem;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ldem;",
            "Liyv",
            "<",
            "Ldel;",
            ">;)V"
        }
    .end annotation
.end method
