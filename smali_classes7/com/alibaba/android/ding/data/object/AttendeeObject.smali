.class public Lcom/alibaba/android/ding/data/object/AttendeeObject;
.super Ljava/lang/Object;
.source "AttendeeObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x57b3dab412bca897L


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mAttendStatus:I

.field private mUid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static fromAttendeeModel(Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;)Lcom/alibaba/android/ding/data/object/AttendeeObject;
    .locals 4
    .param p0, "attendeeModel"    # Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/data/object/AttendeeObject;

    invoke-direct {v0}, Lcom/alibaba/android/ding/data/object/AttendeeObject;-><init>()V

    .line 77
    .local v0, "attendeeObject":Lcom/alibaba/android/ding/data/object/AttendeeObject;
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAlias:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->uid:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 78
    iput-wide v2, v0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mUid:J

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->attendStatus:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 79
    iput v1, v0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAttendStatus:I

    .line 80
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAttendStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mUid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAddress:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAlias:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setAttendStatus(I)V
    .locals 0
    .param p1, "attendStatus"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAttendStatus:I

    .line 65
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mUid:J

    .line 61
    return-void
.end method

.method public toAttendeeModel()Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 86
    new-instance v0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;-><init>()V

    .line 88
    .local v0, "attendeeModel":Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;
    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAlias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->alias:Ljava/lang/String;

    .line 89
    iget-wide v2, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->uid:Ljava/lang/Long;

    .line 90
    iget v1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAttendStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->attendStatus:Ljava/lang/Integer;

    .line 91
    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/ding/base/objects/idl/AttendeeModel;->address:Ljava/lang/String;

    .line 93
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x27

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AttendeeObject{mAlias=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mUid:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAttendStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAttendStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/AttendeeObject;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
