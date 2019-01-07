.class final Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$b;
.super Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$b;-><init>()V

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
    .line 826
    const/4 v1, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$b;->b(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 827
    .local v0, "byhour":[I
    iput-object v0, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->j:[I

    .line 828
    array-length v1, v0

    iput v1, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    .line 829
    const/16 v1, 0x40

    return v1
.end method
