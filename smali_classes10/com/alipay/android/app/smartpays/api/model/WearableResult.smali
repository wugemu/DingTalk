.class public Lcom/alipay/android/app/smartpays/api/model/WearableResult;
.super Ljava/lang/Object;
.source "WearableResult.java"


# static fields
.field public static final ERROR_BTOFF:I = 0x7b

.field public static final ERROR_CANCELED:I = 0x66

.field public static final ERROR_SUCCESS:I = 0x64

.field public static final ERROR_TIMEOUT:I = 0x71

.field public static final ERROR_UNMATCH:I = 0x67


# instance fields
.field public mData:Ljava/lang/String;

.field public mMessage:Ljava/lang/String;

.field public mResult:I

.field public mTokenId:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method
