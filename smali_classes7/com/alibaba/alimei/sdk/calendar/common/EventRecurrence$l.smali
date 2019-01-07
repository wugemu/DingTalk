.class final Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$l;
.super Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 797
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$l;->a(Ljava/lang/String;IIZ)I

    move-result v0

    iput v0, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    .line 798
    iget v0, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    if-gtz v0, :cond_0

    .line 799
    invoke-static {}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Invalid Interval. Forcing INTERVAL to 1 from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    iput v2, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    .line 802
    :cond_0
    const/16 v0, 0x8

    return v0
.end method
