.class public Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;
.super Ljava/lang/Object;
.source "InitDataModel.java"


# instance fields
.field public code:Ljava/lang/String;

.field public codeCount:I

.field public countDown:I

.field public highlightTxt:[Ljava/lang/String;

.field public keyHeadline:Ljava/lang/String;

.field public mobile_no:Ljava/lang/String;

.field public success:Z

.field public verifyAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->countDown:I

    .line 17
    const/4 v0, 0x6

    iput v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/model/InitDataModel;->codeCount:I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
