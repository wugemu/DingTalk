.class public interface abstract Lcom/alibaba/lightapp/runtime/idl/MemberIService;
.super Ljava/lang/Object;
.source "MemberIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract getMemberByStaffIds(JLjava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lhjk;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getMemberByUids(JLjava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lhjk;",
            ">;>;)V"
        }
    .end annotation
.end method
