.class public final enum Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;
.super Ljava/lang/Enum;
.source "TeleConfAlarmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtraKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_CALLER:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_CONFERENCE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_ID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_REASON:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_TIME:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_TYPE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

.field public static final enum KEY_UID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;


# instance fields
.field private keyValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_ID"

    const-string/jumbo v2, "id"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_ID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 198
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_TIME"

    const-string/jumbo v2, "oper_time"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_TIME:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 199
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_TYPE"

    const-string/jumbo v2, "exp_type"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_TYPE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 200
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_REASON"

    const-string/jumbo v2, "exp_reason"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_REASON:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 201
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_UID"

    const-string/jumbo v2, "oper_uid"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_UID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 202
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_CALLER"

    const/4 v2, 0x5

    const-string/jumbo v3, "caller_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_CALLER:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 203
    new-instance v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    const-string/jumbo v1, "KEY_CONFERENCE"

    const/4 v2, 0x6

    const-string/jumbo v3, "conference_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_CONFERENCE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    .line 196
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_ID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_TIME:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_TYPE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_REASON:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_UID:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_CALLER:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->KEY_CONFERENCE:Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->$VALUES:[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput-object p3, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->keyValue:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 196
    const-class v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->$VALUES:[Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;

    return-object v0
.end method


# virtual methods
.method public final value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper$ExtraKey;->keyValue:Ljava/lang/String;

    return-object v0
.end method
