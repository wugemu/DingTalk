.class public Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
.super Ljava/lang/Object;
.source "ShareReceiverObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

.field private mUid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Larb;)Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    .locals 4
    .param p0, "model"    # Larb;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;-><init>()V

    .line 41
    .local v0, "shareReceiverObject":Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;
    iget-object v1, p0, Larb;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 41
    iput-wide v2, v0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->mUid:J

    .line 42
    iget-object v1, p0, Larb;->b:Ljava/lang/Integer;

    .line 2033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 42
    invoke-static {v1}, Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;->from(I)Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    goto :goto_0
.end method


# virtual methods
.method public getPrivilege()Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->mUid:J

    return-wide v0
.end method

.method public setPrivilege(Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;)V
    .locals 0
    .param p1, "privilege"    # Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->mPrivilege:Lcom/alibaba/android/calendar/base/interfaces/CalendarSharePrivilege;

    .line 29
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/alibaba/android/calendar/data/object/ShareReceiverObject;->mUid:J

    .line 21
    return-void
.end method
