.class final Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$m;
.super Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;

    .prologue
    .line 707
    iput-object p1, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->b:Ljava/lang/String;

    .line 708
    const/4 v0, 0x2

    return v0
.end method
