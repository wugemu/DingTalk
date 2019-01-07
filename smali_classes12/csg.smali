.class public final Lcsg;
.super Ljava/lang/Object;
.source "MonthDateRange.java"

# interfaces
.implements Lcsc;


# instance fields
.field private final a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

.field private final b:I

.field private c:Lfx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfx",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)V
    .locals 3
    .param p1, "min"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .param p2, "max"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lfx;

    invoke-direct {v0}, Lfx;-><init>()V

    iput-object v0, p0, Lcsg;->c:Lfx;

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(III)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    iput-object v0, p0, Lcsg;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 19
    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v0

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(III)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lcsg;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcsg;->b:I

    .line 21
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcsg;->b:I

    return v0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)I
    .locals 4
    .param p1, "day"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v2

    iget-object v3, p0, Lcsg;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v3

    sub-int v1, v2, v3

    .line 31
    .local v1, "yDiff":I
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v2

    iget-object v3, p0, Lcsg;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v3

    sub-int v0, v2, v3

    .line 32
    .local v0, "mDiff":I
    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    return v2
.end method

.method public final a(I)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 7
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v6, p0, Lcsg;->c:Lfx;

    invoke-virtual {v6, p1}, Lfx;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 38
    .local v3, "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 54
    .end local v3    # "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .local v4, "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    :goto_0
    return-object v4

    .line 42
    .end local v4    # "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .restart local v3    # "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    :cond_0
    div-int/lit8 v2, p1, 0xc

    .line 43
    .local v2, "numYear":I
    rem-int/lit8 v1, p1, 0xc

    .line 45
    .local v1, "numMonth":I
    iget-object v6, p0, Lcsg;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getYear()I

    move-result v6

    add-int v5, v6, v2

    .line 46
    .local v5, "year":I
    iget-object v6, p0, Lcsg;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getMonth()I

    move-result v6

    add-int v0, v6, v1

    .line 47
    .local v0, "month":I
    const/16 v6, 0xc

    if-lt v0, v6, :cond_1

    .line 48
    add-int/lit8 v5, v5, 0x1

    .line 49
    add-int/lit8 v0, v0, -0xc

    .line 52
    :cond_1
    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(III)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v3

    .line 53
    iget-object v6, p0, Lcsg;->c:Lfx;

    invoke-virtual {v6, p1, v3}, Lfx;->a(ILjava/lang/Object;)V

    move-object v4, v3

    .line 54
    .end local v3    # "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .restart local v4    # "re":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    goto :goto_0
.end method
