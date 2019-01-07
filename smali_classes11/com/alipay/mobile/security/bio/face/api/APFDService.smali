.class public interface abstract Lcom/alipay/mobile/security/bio/face/api/APFDService;
.super Ljava/lang/Object;
.source "APFDService.java"


# static fields
.field public static final FAIL:I = 0x67

.field public static final FAIL_MODELMISS:I = 0x66

.field public static final FAIL_THREADFAIL:I = 0x65

.field public static final SUCCESS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "APFDService"


# virtual methods
.method public abstract closeService()I
.end method

.method public abstract detectFace([BIII)V
.end method

.method public abstract initService(Landroid/content/Context;)I
.end method

.method public abstract setDelegate(Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;)V
.end method
