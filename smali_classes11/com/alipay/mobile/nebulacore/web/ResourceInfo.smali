.class public Lcom/alipay/mobile/nebulacore/web/ResourceInfo;
.super Ljava/lang/Object;
.source "ResourceInfo.java"


# instance fields
.field public mIsMainDoc:Z

.field public mMethod:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mStart:J

.field public mStatusCode:I

.field public mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMethod:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mMethod:Ljava/lang/String;

    .line 17
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/web/ResourceInfo;->mStart:J

    .line 18
    return-void
.end method
