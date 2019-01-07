.class public Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
.super Ljava/lang/Object;
.source "CalendarDay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient mCalendar:Ljava/util/Calendar;

.field private transient mDate:Ljava/util/Date;

.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .line 1022
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 24
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    .line 40
    iput p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    .line 41
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(III)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 31
    .line 2026
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2030
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2034
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 31
    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(III)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 27
    .line 2014
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2015
    if-eqz p1, :cond_0

    .line 2016
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 27
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(Ljava/util/Calendar;)V

    .line 28
    return-void
.end method

.method public static from(III)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(III)V

    return-object v0
.end method

.method public static from(Ljava/util/Calendar;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 45
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public static from(Ljava/util/Date;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 49
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static today()Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .locals 1

    .prologue
    .line 3022
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->from(Ljava/util/Calendar;)Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p0, p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 130
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .line 133
    .local v0, "other":Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 4022
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mCalendar:Ljava/util/Calendar;

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mCalendar:Ljava/util/Calendar;

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDate:Ljava/util/Date;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    mul-int/lit16 v0, v0, 0x2710

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z
    .locals 4
    .param p1, "other"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 105
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    if-ne v2, v3, :cond_3

    .line 113
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    if-le v2, v3, :cond_1

    move v0, v1

    .line 115
    :cond_1
    :goto_0
    return v0

    .line 113
    :cond_2
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 115
    :cond_3
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isBefore(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z
    .locals 4
    .param p1, "other"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "other cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    if-ne v2, v3, :cond_3

    .line 97
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    if-ge v2, v3, :cond_1

    move v0, v1

    .line 99
    :cond_1
    :goto_0
    return v0

    .line 97
    :cond_2
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    .line 99
    :cond_3
    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    iget v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public isInRange(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z
    .locals 1
    .param p1, "minDate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;
    .param p2, "maxDate"    # Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isAfter(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    .line 121
    invoke-virtual {p2, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->isBefore(Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CalendarDay{"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    .line 147
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    .line 149
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    .line 151
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    .line 145
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 166
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/calendarview/data/CalendarDay;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    return-void
.end method
