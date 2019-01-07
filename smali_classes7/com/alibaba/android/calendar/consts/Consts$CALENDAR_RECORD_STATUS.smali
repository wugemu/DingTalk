.class public final enum Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/consts/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CALENDAR_RECORD_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

.field public static final enum ADD_OR_UPDATE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

.field public static final enum DELETE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

.field public static final enum UNKNOWN:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    new-instance v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->DELETE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    .line 138
    new-instance v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    const-string/jumbo v1, "ADD_OR_UPDATE"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->ADD_OR_UPDATE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    .line 139
    new-instance v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    const-string/jumbo v1, "UNKNOWN"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->UNKNOWN:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    sget-object v1, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->DELETE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->ADD_OR_UPDATE:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->UNKNOWN:Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->$VALUES:[Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->mValue:I

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    const-class v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->$VALUES:[Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alibaba/android/calendar/consts/Consts$CALENDAR_RECORD_STATUS;->mValue:I

    return v0
.end method
