.class public Lcom/alibaba/android/calendar/data/object/AlarmObject;
.super Ljava/lang/Object;
.source "AlarmObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2592de29e6fb9a75L


# instance fields
.field private mTime:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lapz;)Lcom/alibaba/android/calendar/data/object/AlarmObject;
    .locals 4
    .param p0, "model"    # Lapz;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/object/AlarmObject;-><init>()V

    .line 52
    .local v0, "alarmObject":Lcom/alibaba/android/calendar/data/object/AlarmObject;
    iget-object v1, p0, Lapz;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 52
    iput-wide v2, v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mTime:J

    .line 53
    iget-object v1, p0, Lapz;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 53
    iput v1, v0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mType:I

    goto :goto_0
.end method


# virtual methods
.method public getTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mType:I

    return v0
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mTime:J

    .line 27
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mType:I

    .line 35
    return-void
.end method

.method public toIDLModel()Lapz;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    new-instance v0, Lapz;

    invoke-direct {v0}, Lapz;-><init>()V

    .line 40
    .local v0, "alarmModel":Lapz;
    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lapz;->a:Ljava/lang/Long;

    .line 41
    iget v1, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lapz;->b:Ljava/lang/Integer;

    .line 42
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlarmObject{mTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/calendar/data/object/AlarmObject;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
