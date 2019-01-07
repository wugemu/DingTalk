.class public final enum Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;
.super Ljava/lang/Enum;
.source "FocusAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/manager/FocusAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlarmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

.field public static final enum TYPE_PRJ_DISCONNECT_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

.field public static final enum TYPE_PRJ_LOCAL_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

.field public static final enum TYPE_PRJ_REMOTE_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;


# instance fields
.field private reasonValue:Ljava/lang/String;

.field private typeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    new-instance v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    const-string/jumbo v1, "TYPE_PRJ_LOCAL_FAIL"

    const-string/jumbo v2, "Start local projection fail"

    const/16 v3, 0xfa0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_LOCAL_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    .line 126
    new-instance v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    const-string/jumbo v1, "TYPE_PRJ_REMOTE_FAIL"

    const-string/jumbo v2, "Start remote projection fail"

    const/16 v3, 0xfa1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_REMOTE_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    .line 127
    new-instance v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    const-string/jumbo v1, "TYPE_PRJ_DISCONNECT_FAIL"

    const-string/jumbo v2, "Disconnect local projection fail"

    const/16 v3, 0xfa2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_DISCONNECT_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_LOCAL_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_REMOTE_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->TYPE_PRJ_DISCONNECT_FAIL:Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->$VALUES:[Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-object p3, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->reasonValue:Ljava/lang/String;

    .line 134
    iput p4, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->typeValue:I

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->$VALUES:[Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;

    return-object v0
.end method


# virtual methods
.method public final reason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->reasonValue:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/alibaba/android/projection/manager/FocusAlarmManager$AlarmType;->typeValue:I

    return v0
.end method
