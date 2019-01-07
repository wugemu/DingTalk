.class public final Lawu;
.super Ljava/lang/Object;
.source "HeaderEventV2.java"

# interfaces
.implements Lawv;


# instance fields
.field public a:J

.field public b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "dayStartTimeMillis"    # J
    .param p3, "isToday"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lawu;->a:J

    .line 15
    iput-boolean p3, p0, Lawu;->b:Z

    .line 16
    return-void
.end method


# virtual methods
.method public final getEventStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 48
    iget-wide v0, p0, Lawu;->a:J

    return-wide v0
.end method

.method public final getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getSortedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 33
    const-wide/16 v0, -0x64

    return-wide v0
.end method

.method public final getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->HEADER_NEW_TAB:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public final isRepeatEvent()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
