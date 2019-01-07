.class public final Lapw$10;
.super Ljava/lang/Object;
.source "CalendarDataCenter.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Lasl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

.field final synthetic b:Z

.field final synthetic c:Lapw;


# direct methods
.method public constructor <init>(Lapw;Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;Z)V
    .locals 0
    .param p1, "this$0"    # Lapw;

    .prologue
    .line 594
    iput-object p1, p0, Lapw$10;->c:Lapw;

    iput-object p2, p0, Lapw$10;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    iput-boolean p3, p0, Lapw$10;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 594
    check-cast p1, Lasl;

    .line 1597
    if-eqz p1, :cond_0

    .line 2106
    iget-boolean v0, p1, Lasl;->i:Z

    .line 1597
    if-nez v0, :cond_1

    .line 1598
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[onCalendarAlert] folderObject is null or is not selected."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1599
    :goto_0
    return-void

    .line 1601
    :cond_1
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    iget-object v1, p0, Lapw$10;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 3063
    iget-wide v2, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->a:J

    .line 1601
    iget-object v1, p0, Lapw$10;->a:Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;

    .line 3103
    iget-object v1, v1, Lcom/alibaba/android/calendar/data/object/CalendarAlertObject;->m:Ljava/lang/String;

    .line 1602
    new-instance v4, Lapw$10$1;

    invoke-direct {v4, p0}, Lapw$10$1;-><init>(Lapw$10;)V

    .line 1601
    invoke-virtual {v0, v2, v3, v1, v4}, Latf;->a(JLjava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
