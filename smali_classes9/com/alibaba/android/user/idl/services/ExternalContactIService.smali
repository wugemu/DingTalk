.class public interface abstract Lcom/alibaba/android/user/idl/services/ExternalContactIService;
.super Ljava/lang/Object;
.source "ExternalContactIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract addContact(Lcev;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcev;",
            "Liyv",
            "<",
            "Lcev;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addContacts(Ljava/lang/Long;Ljava/util/List;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcev;",
            ">;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContact(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcev;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContactRelation(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcdk;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContactsByUid(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcev;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract getOrgEmployeeExtensionProfileByStaffId(Ljava/lang/String;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcev;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOrgEmployeeExtensionProfileByUid(Ljava/lang/Long;Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lcev;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getOrgNodeList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcdn;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcdn;",
            "Liyv",
            "<",
            "Lcfd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listAttrFields(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfol;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listContacts(Ljava/lang/Long;Lcdc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcdc;",
            "Liyv",
            "<",
            "Lcfd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listExtContactFields(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Lfot;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract listVisibleScopes(Ljava/lang/Long;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract multiSearchContacts(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Lcfd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeContact(Ljava/lang/Long;Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateAttrFields(Ljava/lang/Long;Lfol;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lfol;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateContact(Lcev;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcev;",
            "Liyv",
            "<",
            "Lcev;",
            ">;)V"
        }
    .end annotation
.end method
