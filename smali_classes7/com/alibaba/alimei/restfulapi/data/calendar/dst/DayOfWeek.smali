.class Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field public javaWeekday:I

.field public number:Ljava/lang/String;

.field public weekday:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJavaWeekday()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;->javaWeekday:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;->weekday:Ljava/lang/String;

    return-object v0
.end method

.method public setJavaWeekday(I)V
    .locals 0
    .param p1, "javaWeekday"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;->javaWeekday:I

    .line 149
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;->number:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setWeekday(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekday"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/dst/DayOfWeek;->weekday:Ljava/lang/String;

    .line 141
    return-void
.end method
