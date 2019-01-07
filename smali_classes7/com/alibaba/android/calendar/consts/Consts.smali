.class public final Lcom/alibaba/android/calendar/consts/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_STATUS;,
        Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string/jumbo v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/Consts;->a:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method
