.class public interface abstract Lcom/alibaba/android/dingtalkim/models/idl/service/GroupAnnounceIService;
.super Ljava/lang/Object;
.source "GroupAnnounceIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract deleteGroupAnnounce(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteGroupAnnounceV2(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract editGroupAnnounce(Ljava/lang/Long;Ldtm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ldtm;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupAnnounce(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ldtl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupAnnounceList(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ldtl;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract sendGroupAnnounce(Ldtm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldtm;",
            "Liyv",
            "<",
            "Ldtn;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendOrUpdateGroupAnnounce(Ldtm;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldtm;",
            "Liyv",
            "<",
            "Ldtn;",
            ">;)V"
        }
    .end annotation
.end method
