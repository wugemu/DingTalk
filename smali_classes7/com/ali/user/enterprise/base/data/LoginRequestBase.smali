.class public Lcom/ali/user/enterprise/base/data/LoginRequestBase;
.super Lcom/ali/user/enterprise/base/data/MemberRequestBase;
.source "LoginRequestBase.java"


# instance fields
.field public deviceName:Ljava/lang/String;

.field public deviceTokenKey:Ljava/lang/String;

.field public deviceTokenSign:Ljava/lang/String;

.field public hid:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public snsToken:Ljava/lang/String;

.field public t:J

.field public useAcitonType:Z

.field public useDeviceToken:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0}, Lcom/ali/user/enterprise/base/data/MemberRequestBase;-><init>()V

    .line 19
    iput-boolean v2, p0, Lcom/ali/user/enterprise/base/data/LoginRequestBase;->useDeviceToken:Z

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/enterprise/base/data/LoginRequestBase;->deviceName:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/ali/user/enterprise/base/data/LoginRequestBase;->useAcitonType:Z

    return-void
.end method
