.class public interface abstract Lcom/alibaba/android/user/idl/services/PhonebookIService;
.super Ljava/lang/Object;
.source "PhonebookIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract checkPhonebookMatch(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getPhonebookList(Ljava/lang/Long;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lfpy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopPhonebookMatch(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadPhonebookList(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfqq;",
            ">;",
            "Liyv",
            "<",
            "Lfpy;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract uploadPhonebookListWithoutMatch(Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfqq;",
            ">;",
            "Liyv",
            "<",
            "Lfpy;",
            ">;)V"
        }
    .end annotation
.end method
