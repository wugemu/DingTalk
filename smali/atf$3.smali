.class public final Latf$3;
.super Ljava/lang/Object;
.source "CalendarDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

.field final synthetic b:Z

.field final synthetic c:Latf;


# direct methods
.method public constructor <init>(Latf;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Z)V
    .locals 0
    .param p1, "this$0"    # Latf;

    .prologue
    .line 263
    iput-object p1, p0, Latf$3;->c:Latf;

    iput-object p2, p0, Latf$3;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    iput-boolean p3, p0, Latf$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 266
    iget-object v0, p0, Latf$3;->c:Latf;

    invoke-static {v0}, Latf;->a(Latf;)Lapw;

    move-result-object v0

    iget-object v1, p0, Latf$3;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    iget-boolean v2, p0, Latf$3;->b:Z

    .line 1576
    if-nez v1, :cond_0

    .line 1577
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "[onCalendarAlert]calendarAlertObject is null"

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 4106
    :goto_0
    return-void

    .line 2067
    :cond_0
    iget v3, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->b:I

    .line 1581
    if-le v3, v8, :cond_1

    .line 1582
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "[onCalendarAlert]unSupport calendarId: "

    aput-object v2, v0, v9

    .line 3063
    iget-wide v2, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 1583
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    const/4 v2, 0x2

    const-string/jumbo v3, ", version:"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 3067
    iget v1, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->b:I

    .line 1585
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1582
    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3099
    iget-wide v6, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->k:J

    .line 1589
    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 1590
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "[onCalendarAlert]alert expired"

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 1594
    :cond_2
    new-instance v3, Lapw$10;

    invoke-direct {v3, v0, v1, v2}, Lapw$10;-><init>(Lapw;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Z)V

    .line 1633
    invoke-static {}, Larl;->a()Larl;

    move-result-object v0

    .line 3103
    iget-object v1, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->m:Ljava/lang/String;

    .line 4101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4102
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "[FolderManager] getFolderObject folderId is empty"

    aput-object v1, v0, v9

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 4104
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Lapv;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4109
    :cond_3
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v4, Larl$1;

    invoke-direct {v4, v0, v3, v1}, Larl$1;-><init>(Larl;Lapv;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Latf;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
