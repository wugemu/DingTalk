.class public Lcom/alibaba/android/ding/data/object/DingMeetingLocation;
.super Ljava/lang/Object;
.source "DingMeetingLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7a75d4c59337d018L


# instance fields
.field private corpId:Ljava/lang/String;

.field private endDate:J

.field private locationCode:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private orgId:Ljava/lang/String;

.field private startDate:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->corpId:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->endDate:J

    return-wide v0
.end method

.method public getLocationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->locationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->orgId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->startDate:J

    return-wide v0
.end method

.method public setCorpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->corpId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setEndDate(J)V
    .locals 1
    .param p1, "endDate"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->endDate:J

    .line 53
    return-void
.end method

.method public setLocationCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationCode"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->locationCode:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->locationName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setOrgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orgId"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->orgId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setStartDate(J)V
    .locals 1
    .param p1, "startDate"    # J

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->startDate:J

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v4, 0x27

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "DingMeetingLocation{locationName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->locationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locationCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->locationCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->startDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->endDate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", orgId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->orgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", corpId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/data/object/DingMeetingLocation;->corpId:Ljava/lang/String;

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
