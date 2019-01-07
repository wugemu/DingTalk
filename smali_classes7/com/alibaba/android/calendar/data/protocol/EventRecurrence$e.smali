.class final Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$e;
.super Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 840
    const/16 v1, -0x1f

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$e;->b(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 841
    .local v0, "bymonthday":[I
    iput-object v0, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->o:[I

    .line 842
    array-length v1, v0

    iput v1, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->p:I

    .line 843
    const/16 v1, 0x100

    return v1
.end method
