.class public Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/h5appmanager/impl/ZipUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipResult"
.end annotation


# instance fields
.field mCrcValue:J

.field mZipResult:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 3
    .param p1, "crcValue"    # J
    .param p3, "zipResult"    # Z

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mCrcValue:J

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mZipResult:Z

    .line 151
    iput-wide p1, p0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mCrcValue:J

    .line 152
    iput-boolean p3, p0, Lcom/alipay/android/h5appmanager/impl/ZipUtil$ZipResult;->mZipResult:Z

    .line 153
    return-void
.end method
