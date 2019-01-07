.class public final Laws;
.super Ljava/lang/Object;
.source "EmptyEvent.java"

# interfaces
.implements Lawv;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Laws;->a:J

    .line 14
    return-void
.end method


# virtual methods
.method public final getEventStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p0, Laws;->a:J

    return-wide v0
.end method

.method public final getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSortedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->EMPTY:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public final isRepeatEvent()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
