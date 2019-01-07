.class public abstract Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService;
.super Lcom/mybank/android/phone/common/service/api/CommonService;
.source "IdentityCardRecognizeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;,
        Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardRecognizeCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/api/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract doCallBack(Landroid/os/Bundle;)V
.end method

.method public abstract doCallBack(Landroid/os/Bundle;Z)V
.end method

.method public abstract recognizeIdentityCard(Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardRecognizeCallBack;Landroid/os/Bundle;)V
.end method
