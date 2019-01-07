.class public Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;
.super Ljava/lang/Object;
.source "EventWeekDay.java"


# instance fields
.field public weekday:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWeekday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;->weekday:Ljava/lang/String;

    return-object v0
.end method

.method public setWeekday(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekday"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/data/calendar/EventWeekDay;->weekday:Ljava/lang/String;

    .line 26
    return-void
.end method
