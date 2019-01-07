.class public Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;
.super Ljava/lang/Object;
.source "IdentityCardRecognizeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityCardConstants"
.end annotation


# static fields
.field public static APDID_TOKEN:Ljava/lang/String;

.field public static ActivityChange:Ljava/lang/String;

.field public static BIZ_ID:Ljava/lang/String;

.field public static BisToken:Ljava/lang/String;

.field public static RequestCardCode:Ljava/lang/String;

.field public static RequestCardType:Ljava/lang/String;

.field public static RequestPage:Ljava/lang/String;

.field public static RequestTotalPagesNum:Ljava/lang/String;

.field public static ResultAddress:Ljava/lang/String;

.field public static ResultBirthday:Ljava/lang/String;

.field public static ResultCardNumber:Ljava/lang/String;

.field public static ResultGender:Ljava/lang/String;

.field public static ResultImgByte:Ljava/lang/String;

.field public static ResultIssueAuthority:Ljava/lang/String;

.field public static ResultName:Ljava/lang/String;

.field public static ResultNationality:Ljava/lang/String;

.field public static ResultPhotoType:Ljava/lang/String;

.field public static ResultPicPath:Ljava/lang/String;

.field public static ResultQuitFlag:Ljava/lang/String;

.field public static ResultValidFrom:Ljava/lang/String;

.field public static ResultValidPeriod:Ljava/lang/String;

.field public static ResultValidThru:Ljava/lang/String;

.field public static inputBizParam:Ljava/lang/String;

.field public static outputBizParam:Ljava/lang/String;

.field public static uniqueTokenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "PhotoType"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultPhotoType:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "ImgByteArray"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultImgByte:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "quitflag"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultQuitFlag:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "ActivityName"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ActivityChange:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "Name"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultName:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "Gender"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultGender:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "Nationality"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultNationality:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "Birthday"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultBirthday:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "CardNumber"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultCardNumber:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "Address"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultAddress:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "ValidPeriod"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultValidPeriod:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "IssueAuthority"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultIssueAuthority:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "PicPath"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultPicPath:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "ValidFrom"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultValidFrom:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "ValidThru"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->ResultValidThru:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "TokenID"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->uniqueTokenId:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "BisToken"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->BisToken:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "apdidToken"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->APDID_TOKEN:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "bizId"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->BIZ_ID:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "outputBizParam"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->outputBizParam:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "inputBizParam"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->inputBizParam:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "RequestCardType"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestCardType:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "RequestCardCode"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestCardCode:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "RequestTotalPagesNum"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestTotalPagesNum:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "RequestPage"

    sput-object v0, Lcom/mybank/android/phone/common/service/api/IdentityCardRecognizeService$IdentityCardConstants;->RequestPage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
