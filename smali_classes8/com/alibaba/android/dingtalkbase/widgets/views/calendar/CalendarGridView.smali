.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;
.super Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;
.source "CalendarGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;
    }
.end annotation


# static fields
.field private static i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/Calendar;


# instance fields
.field private f:I

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

.field private h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    .line 81
    invoke-static {}, Lcrz;->a()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->j:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;-><init>(Landroid/content/Context;)V

    .line 27
    const v0, 0x12c7210

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->b()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const v0, 0x12c7210

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    .line 39
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->b()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const v0, 0x12c7210

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    .line 44
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->b()V

    .line 45
    return-void
.end method

.method public static a(III)I
    .locals 11
    .param p0, "monthInt"    # I
    .param p1, "px"    # I
    .param p2, "py"    # I

    .prologue
    .line 104
    invoke-static {p0}, Lcrz;->b(I)I

    move-result p0

    .line 105
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(I)V

    .line 106
    sget-object v9, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    invoke-virtual {v9, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1096
    .local v3, "monthData":I
    div-int/lit8 v2, v3, 0xa

    .line 1100
    .local v2, "maxMonthDay":I
    rem-int/lit8 v0, v3, 0xa

    .line 109
    .local v0, "firstDayIndex":I
    add-int v9, v0, v2

    add-int/lit8 v1, v9, -0x1

    .line 110
    .local v1, "lastDayIndex":I
    mul-int/lit8 v9, p2, 0x7

    add-int v8, v9, p1

    .line 111
    .local v8, "targetIndex":I
    if-ge v8, v0, :cond_0

    .line 112
    const/4 v9, -0x1

    invoke-static {p0, v9}, Lcrz;->c(II)I

    move-result v6

    .line 113
    .local v6, "preMonth":I
    invoke-static {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(I)V

    .line 114
    sget-object v9, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2096
    div-int/lit8 v5, v9, 0xa

    .line 115
    .local v5, "preMaxMonthDay":I
    sub-int v9, v0, v8

    sub-int v9, v5, v9

    add-int/lit8 v7, v9, 0x1

    .line 116
    .local v7, "resultDay":I
    invoke-static {v6}, Lcrz;->c(I)I

    move-result v9

    invoke-static {v6}, Lcrz;->d(I)I

    move-result v10

    invoke-static {v9, v10, v7}, Lcrz;->a(III)I

    move-result v9

    .line 123
    .end local v5    # "preMaxMonthDay":I
    .end local v6    # "preMonth":I
    :goto_0
    return v9

    .line 117
    .end local v7    # "resultDay":I
    :cond_0
    if-le v8, v1, :cond_1

    .line 118
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcrz;->c(II)I

    move-result v4

    .line 119
    .local v4, "nextMonth":I
    sub-int v7, v8, v1

    .line 120
    .restart local v7    # "resultDay":I
    invoke-static {v4}, Lcrz;->c(I)I

    move-result v9

    invoke-static {v4}, Lcrz;->d(I)I

    move-result v10

    invoke-static {v9, v10, v7}, Lcrz;->a(III)I

    move-result v9

    goto :goto_0

    .line 122
    .end local v4    # "nextMonth":I
    .end local v7    # "resultDay":I
    :cond_1
    sub-int v9, v8, v0

    add-int/lit8 v7, v9, 0x1

    .line 123
    .restart local v7    # "resultDay":I
    invoke-static {p0}, Lcrz;->c(I)I

    move-result v9

    invoke-static {p0}, Lcrz;->d(I)I

    move-result v10

    invoke-static {v9, v10, v7}, Lcrz;->a(III)I

    move-result v9

    goto :goto_0
.end method

.method public static a(II)Landroid/graphics/Point;
    .locals 10
    .param p0, "monthInt"    # I
    .param p1, "dayInt"    # I

    .prologue
    .line 128
    invoke-static {p0}, Lcrz;->b(I)I

    move-result p0

    .line 129
    invoke-static {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(I)V

    .line 130
    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    invoke-virtual {v7, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3096
    .local v3, "monthData":I
    div-int/lit8 v2, v3, 0xa

    .line 3100
    .local v2, "maxMonthDay":I
    rem-int/lit8 v0, v3, 0xa

    .line 133
    .local v0, "firstDayIndex":I
    add-int v7, v0, v2

    add-int/lit8 v1, v7, -0x1

    .line 135
    .local v1, "lastDayIndex":I
    const/4 v7, 0x1

    invoke-static {p1, v7}, Lcrz;->c(II)I

    move-result v7

    if-ne v7, p0, :cond_0

    .line 136
    invoke-static {p1}, Lcrz;->b(I)I

    move-result v5

    .line 137
    .local v5, "preMonth":I
    invoke-static {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a(I)V

    .line 138
    sget-object v7, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4096
    div-int/lit8 v4, v7, 0xa

    .line 139
    .local v4, "preMaxMonthDay":I
    invoke-static {p1}, Lcrz;->e(I)I

    move-result v7

    sub-int v7, v4, v7

    sub-int v7, v0, v7

    add-int/lit8 v6, v7, -0x1

    .line 145
    .end local v4    # "preMaxMonthDay":I
    .end local v5    # "preMonth":I
    .local v6, "resultIndex":I
    :goto_0
    if-ltz v6, :cond_2

    const/16 v7, 0x2a

    if-ge v6, v7, :cond_2

    .line 146
    new-instance v7, Landroid/graphics/Point;

    rem-int/lit8 v8, v6, 0x7

    div-int/lit8 v9, v6, 0x7

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 148
    :goto_1
    return-object v7

    .line 140
    .end local v6    # "resultIndex":I
    :cond_0
    const/4 v7, -0x1

    invoke-static {p1, v7}, Lcrz;->c(II)I

    move-result v7

    if-ne v7, p0, :cond_1

    .line 141
    invoke-static {p1}, Lcrz;->e(I)I

    move-result v7

    add-int v6, v1, v7

    .restart local v6    # "resultIndex":I
    goto :goto_0

    .line 143
    .end local v6    # "resultIndex":I
    :cond_1
    invoke-static {p1}, Lcrz;->e(I)I

    move-result v7

    add-int/2addr v7, v0

    add-int/lit8 v6, v7, -0x1

    .restart local v6    # "resultIndex":I
    goto :goto_0

    .line 148
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    return-object v0
.end method

.method private static a(I)V
    .locals 5
    .param p0, "monthInt"    # I

    .prologue
    .line 84
    invoke-static {p0}, Lcrz;->b(I)I

    move-result p0

    .line 85
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 86
    .local v2, "monthData":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 87
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->j:Ljava/util/Calendar;

    invoke-static {v3, p0}, Lcrz;->a(Ljava/util/Calendar;I)V

    .line 88
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->j:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 89
    .local v1, "maxMonthDay":I
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->j:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 90
    .local v0, "index":I
    mul-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->i:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    .end local v0    # "index":I
    .end local v1    # "maxMonthDay":I
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .prologue
    .line 14
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)V

    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->setOnUniformGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;)V

    .line 57
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)V

    invoke-super {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView;->setUniformGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;)V

    .line 78
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    return-object v0
.end method


# virtual methods
.method public getCalendarGridViewAdapter()Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    return-object v0
.end method

.method public getMonthInt()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    return v0
.end method

.method public setCalendarGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;)V
    .locals 1
    .param p1, "adapter"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    if-eq v0, p1, :cond_0

    .line 154
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->h:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$a;

    .line 155
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a()V

    .line 157
    :cond_0
    return-void
.end method

.method public setMonthInt(I)V
    .locals 1
    .param p1, "monthInt"    # I

    .prologue
    .line 168
    invoke-static {p1}, Lcrz;->b(I)I

    move-result p1

    .line 169
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    invoke-static {p1, v0}, Lcrz;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->f:I

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->a()V

    .line 173
    :cond_0
    return-void
.end method

.method public setOnCalendarGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView;->g:Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/CalendarGridView$b;

    .line 165
    return-void
.end method

.method public setOnUniformGridViewItemClickListener(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$a;

    .prologue
    .line 181
    return-void
.end method

.method public setUniformGridViewAdapter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;)V
    .locals 0
    .param p1, "adapter"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendar/UniformGridView$b;

    .prologue
    .line 185
    return-void
.end method
