.class public abstract Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;
.super Lckb;
.source "CalendarInterface.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lckb;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarInterface;

    return-object v0
.end method


# virtual methods
.method public a(J)I
    .locals 1
    .param p1, "minutes"    # J

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public a(JJLcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "calendarId"    # J
    .param p3, "eventId"    # J
    .param p5, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p6, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "calendarId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 109
    return-void
.end method

.method public a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J

    .prologue
    .line 150
    return-void
.end method

.method public a(Landroid/app/Activity;JJ)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "calendarId"    # J
    .param p4, "date"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    .prologue
    .line 132
    return-void
.end method

.method public a(Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "scheduleCreateModel"    # Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Long;>;"
    return-void
.end method

.method public a(Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public b(JLcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public c()Lcom/alibaba/android/calendar/base/interfaces/CalendarFragment;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method
