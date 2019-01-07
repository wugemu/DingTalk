.class public Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;
.super Ljava/lang/Object;
.source "LogTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/log/LogTracer;
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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mWinName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mNetType:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mUpdateType:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mUpdateResult:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/alipay/android/app/cctemplate/log/LogTracer$TemplateInfo;->mUpdateTime:Ljava/lang/String;

    .line 30
    return-void
.end method
