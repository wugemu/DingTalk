.class public final Lavp$1;
.super Ljava/lang/Object;
.source "CalendarFloatWindowUtil.java"

# interfaces
.implements Lcjs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

.field final synthetic b:Lasc;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Lasc;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lavp$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    iput-object p2, p0, Lavp$1;->b:Lasc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-static {}, Laps;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lavp$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 1063
    iget-wide v4, v4, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 33
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 34
    .local v0, "shouldShow":Z
    :goto_0
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "[CalendarFloatWindowUtil] shouldShow:"

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", currenteCalendarId: "

    aput-object v2, v3, v1

    const/4 v1, 0x3

    .line 35
    invoke-static {}, Laps;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", calendarAlertObjectId: "

    aput-object v2, v3, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lavp$1;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 2063
    iget-wide v4, v2, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 36
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 34
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 37
    return v0

    .end local v0    # "shouldShow":Z
    :cond_0
    move v0, v2

    .line 33
    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-object v0, p0, Lavp$1;->b:Lasc;

    invoke-static {v0}, Lavs;->c(Lasc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {v1}, Lavw;->d(Z)V

    .line 49
    :cond_0
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarFloatWindowUtil] onShow."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 50
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lavp$1;->b:Lasc;

    invoke-static {v0}, Lavs;->b(Lasc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {v1}, Lavw;->c(Z)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, p0, Lavp$1;->b:Lasc;

    invoke-static {v0}, Lavs;->a(Lasc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v1}, Lavw;->e(Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
