.class final Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$d;
.super Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "er"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 913
    const/4 v1, 0x1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$d;->b(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 914
    .local v0, "bymonth":[I
    iput-object v0, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    .line 915
    array-length v1, v0

    iput v1, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    .line 916
    const/16 v1, 0x800

    return v1
.end method
