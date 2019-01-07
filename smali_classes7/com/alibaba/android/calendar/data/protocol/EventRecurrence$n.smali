.class final Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$n;
.super Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$n;-><init>()V

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
    .line 905
    invoke-static {}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 906
    .local v0, "wkst":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 907
    new-instance v1, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid WKST value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 909
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Lcom/alibaba/android/calendar/data/protocol/EventRecurrence;->e:I

    .line 910
    const/16 v1, 0x2000

    return v1
.end method
