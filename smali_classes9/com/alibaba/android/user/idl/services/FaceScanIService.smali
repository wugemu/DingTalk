.class public interface abstract Lcom/alibaba/android/user/idl/services/FaceScanIService;
.super Ljava/lang/Object;
.source "FaceScanIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract faceScanUploadCertify(Ljava/lang/String;Ljava/lang/String;Liyv;)V
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

.method public abstract getFaceScanStep(Lfok;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfok;",
            "Liyv",
            "<",
            "Lfqd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFaceScanUserStatus(Liyv;)V
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

.method public abstract submitFaceScan(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
