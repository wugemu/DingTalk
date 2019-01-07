.class final Lcom/alibaba/doraemon/performance/CalendarProxy$1;
.super Ljava/lang/Object;
.source "CalendarProxy.java"

# interfaces
.implements Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/performance/CalendarProxy;->makeSureSoftProxy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/alibaba/doraemon/performance/CalendarProxy$1;->create()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final create()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic validate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/performance/CalendarProxy$1;->validate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final validate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p1, "reference"    # Ljava/util/Calendar;

    .prologue
    .line 49
    return-object p1
.end method
