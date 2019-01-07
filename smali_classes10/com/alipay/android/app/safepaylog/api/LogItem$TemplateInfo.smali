.class public Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;
.super Ljava/lang/Object;
.source "LogItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaylog/api/LogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemplateInfo"
.end annotation


# instance fields
.field public mNetType:Ljava/lang/String;

.field public mUpdateResult:Ljava/lang/String;

.field public mUpdateTime:Ljava/lang/String;

.field public mUpdateType:Ljava/lang/String;

.field public mWinName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "winName"    # Ljava/lang/String;
    .param p2, "netType"    # Ljava/lang/String;
    .param p3, "updateType"    # Ljava/lang/String;
    .param p4, "updateResult"    # Ljava/lang/String;
    .param p5, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;->mWinName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;->mNetType:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;->mUpdateType:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;->mUpdateResult:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TemplateInfo;->mUpdateTime:Ljava/lang/String;

    .line 50
    return-void
.end method
