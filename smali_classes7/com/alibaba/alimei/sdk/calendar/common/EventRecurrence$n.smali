.class final Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$n;
.super Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 929
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$n;-><init>()V

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
    .line 931
    invoke-static {}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 932
    .local v0, "wkst":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 933
    new-instance v1, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid WKST value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 935
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    .line 936
    const/16 v1, 0x2000

    return v1
.end method
