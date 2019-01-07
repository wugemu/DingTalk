.class public Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;
.super Ljava/lang/Object;
.source "LogItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaylog/api/LogItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TracerInfo"
.end annotation


# instance fields
.field public mCode:Ljava/lang/String;

.field public mMsg:Ljava/lang/String;

.field public mTracerType:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tracerType"    # Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;->mTracerType:Lcom/alipay/android/app/safepaylog/api/LogItem$TracerType;

    .line 30
    iput-object p2, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;->mType:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;->mCode:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/alipay/android/app/safepaylog/api/LogItem$TracerInfo;->mMsg:Ljava/lang/String;

    .line 33
    return-void
.end method
