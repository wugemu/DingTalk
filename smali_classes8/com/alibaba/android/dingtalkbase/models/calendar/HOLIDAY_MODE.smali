.class public final enum Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;
.super Ljava/lang/Enum;
.source "HOLIDAY_MODE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

.field public static final enum NONE:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

.field public static final enum REST:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

.field public static final enum WORK:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;


# instance fields
.field private mDesId:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    const-string/jumbo v1, "WORK"

    sget v2, Lcig$j;->dt_calendar_work:I

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->WORK:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    const-string/jumbo v1, "REST"

    sget v2, Lcig$j;->dt_calendar_reset:I

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->REST:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    .line 14
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5, v3}, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->NONE:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->WORK:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->REST:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->NONE:Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "desId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->mDesId:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;

    return-object v0
.end method


# virtual methods
.method public final getDesId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/models/calendar/HOLIDAY_MODE;->mDesId:I

    return v0
.end method
