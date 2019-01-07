.class public final Lawt;
.super Ljava/lang/Object;
.source "HeaderEvent.java"

# interfaces
.implements Lawv;


# instance fields
.field public a:I

.field public b:J

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(IJZI)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "dayStartTimeMillis"    # J
    .param p4, "isToday"    # Z
    .param p5, "overdueTaskCount"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lawt;->a:I

    .line 20
    iput-wide p2, p0, Lawt;->b:J

    .line 21
    iput-boolean p4, p0, Lawt;->c:Z

    .line 22
    iput p5, p0, Lawt;->d:I

    .line 23
    return-void
.end method


# virtual methods
.method public final getEventStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 63
    iget-wide v0, p0, Lawt;->b:J

    return-wide v0
.end method

.method public final getSortedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getSortedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 48
    const-wide/16 v0, -0x64

    return-wide v0
.end method

.method public final getType()Lcom/alibaba/android/calendar/v2/data/object/EventType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alibaba/android/calendar/v2/data/object/EventType;->HEADER:Lcom/alibaba/android/calendar/v2/data/object/EventType;

    return-object v0
.end method

.method public final isRepeatEvent()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method
