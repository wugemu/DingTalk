.class public Lcom/alibaba/wukong/im/base/DeviceStatusImpl;
.super Ljava/lang/Object;
.source "DeviceStatusImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/DeviceStatus;


# static fields
.field private static final serialVersionUID:J = 0x346f1f4743fd62f6L


# instance fields
.field public mDeviceType:I

.field public mStatus:I

.field public mTime:J

.field public mType:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromModel(Lcom/alibaba/wukong/idl/im/models/DevStatusModel;)Lcom/alibaba/wukong/im/base/DeviceStatusImpl;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/im/models/DevStatusModel;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;-><init>()V

    .line 43
    .local v0, "object":Lcom/alibaba/wukong/im/base/DeviceStatusImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->deviceType:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mDeviceType:I

    .line 44
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->type:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/wukong/im/DeviceStatus$StatusType;->fromValue(I)Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mType:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    .line 45
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->status:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mStatus:I

    .line 46
    iget-object v1, p0, Lcom/alibaba/wukong/idl/im/models/DevStatusModel;->time:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mTime:J

    goto :goto_0
.end method


# virtual methods
.method public deviceType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mDeviceType:I

    return v0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mStatus:I

    return v0
.end method

.method public time()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mTime:J

    return-wide v0
.end method

.method public type()Lcom/alibaba/wukong/im/DeviceStatus$StatusType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/wukong/im/base/DeviceStatusImpl;->mType:Lcom/alibaba/wukong/im/DeviceStatus$StatusType;

    return-object v0
.end method
