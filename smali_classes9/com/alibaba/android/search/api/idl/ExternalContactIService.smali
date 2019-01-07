.class public interface abstract Lcom/alibaba/android/search/api/idl/ExternalContactIService;
.super Ljava/lang/Object;
.source "ExternalContactIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract listContacts(JLcdc;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcdc;",
            "Liyv",
            "<",
            "Lcfd;",
            ">;)V"
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
