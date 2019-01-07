.class public Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
.super Ljava/lang/Object;
.source "ManagerCalendarDayObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3be8b248fa7f7532L


# instance fields
.field public mDay:J

.field public mLevelTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromIDLModel(Lefp;)Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
    .locals 4
    .param p0, "model"    # Lefp;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
    if-eqz p0, :cond_0

    .line 37
    new-instance v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;

    .end local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
    invoke-direct {v0}, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;-><init>()V

    .line 38
    .restart local v0    # "object":Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;
    iget-object v1, p0, Lefp;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 38
    iput-wide v2, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mDay:J

    .line 39
    iget-object v1, p0, Lefp;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/oa/model/calendar/ManagerCalTabObject;->fromIDLModel(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/oa/model/calendar/ManagerCalendarDayObject;->mLevelTabs:Ljava/util/List;

    .line 41
    :cond_0
    return-object v0
.end method
