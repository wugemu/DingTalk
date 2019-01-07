.class public Lcom/alipay/mobile/security/faceauth/util/TimeRecord;
.super Ljava/lang/Object;
.source "TimeRecord.java"


# static fields
.field private static a:Lcom/alipay/mobile/security/faceauth/util/TimeRecord;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/security/faceauth/util/TimeRecord;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->a:Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->a:Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    .line 19
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->a:Lcom/alipay/mobile/security/faceauth/util/TimeRecord;

    return-object v0
.end method


# virtual methods
.method public getEnterDetectionTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->c:J

    return-wide v0
.end method

.method public getEntrySdkTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->b:J

    return-wide v0
.end method

.method public getInitAlgStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->f:J

    return-wide v0
.end method

.method public getLivebodyStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->e:J

    return-wide v0
.end method

.method public getUploadStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->d:J

    return-wide v0
.end method

.method public setEnterDetectionTime(J)V
    .locals 1
    .param p1, "enterDetectionTime"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->c:J

    .line 36
    return-void
.end method

.method public setEntrySdkTime(J)V
    .locals 1
    .param p1, "entrySdkTime"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->b:J

    .line 28
    return-void
.end method

.method public setInitAlgStartTime(J)V
    .locals 1
    .param p1, "initAlgStartTime"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->f:J

    .line 60
    return-void
.end method

.method public setLivebodyStartTime(J)V
    .locals 1
    .param p1, "livebodyStartTime"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->e:J

    .line 52
    return-void
.end method

.method public setUploadStartTime(J)V
    .locals 1
    .param p1, "uploadStartTime"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/alipay/mobile/security/faceauth/util/TimeRecord;->d:J

    .line 44
    return-void
.end method
