.class public Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
.super Ljava/lang/Object;
.source "ManagerCalendarObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3bf33f7755634d32L


# instance fields
.field public mCurrentDayManagerCalendar:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

.field public mDayToCalendarEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mDeptName:Ljava/lang/String;

.field public mDeptPathName:Ljava/lang/String;

.field public mOid:J

.field public mUid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lefq;)Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
    .locals 4
    .param p0, "model"    # Lefq;

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
    if-eqz p0, :cond_0

    .line 40
    new-instance v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;

    .end local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
    invoke-direct {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;-><init>()V

    .line 41
    .restart local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;
    iget-object v1, p0, Lefq;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mOid:J

    .line 42
    iget-object v1, p0, Lefq;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mUid:J

    .line 43
    iget-object v1, p0, Lefq;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mDeptName:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lefq;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mDeptPathName:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lefq;->e:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mDayToCalendarEventMap:Ljava/util/Map;

    .line 46
    iget-object v1, p0, Lefq;->f:Lefp;

    invoke-static {v1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->fromIDLModel(Lefp;)Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarObject;->mCurrentDayManagerCalendar:Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .line 48
    :cond_0
    return-object v0
.end method
