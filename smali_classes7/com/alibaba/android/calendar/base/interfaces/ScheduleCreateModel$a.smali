.class public final Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
.super Ljava/lang/Object;
.source "ScheduleCreateModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/String;

.field i:I

.field j:I

.field k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->i:I

    .line 165
    sget-object v0, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->SCHEDULE:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->j:I

    .line 170
    return-void
.end method


# virtual methods
.method public final a()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    iget-object v1, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->b:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->c:Ljava/lang/Long;

    iget-object v4, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->d:Ljava/lang/Long;

    iget-object v5, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->g:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->h:Ljava/lang/String;

    iget v9, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->i:I

    iget v10, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->j:I

    iget-object v11, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->k:Ljava/util/HashMap;

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/util/HashMap;)V

    return-object v0
.end method
