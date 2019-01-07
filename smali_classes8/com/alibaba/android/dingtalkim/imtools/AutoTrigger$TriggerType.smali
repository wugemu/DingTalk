.class public final enum Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;
.super Ljava/lang/Enum;
.source "AutoTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

.field public static final enum LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

.field public static final enum MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

.field public static final enum SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-string/jumbo v1, "MessageSending"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    .line 32
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-string/jumbo v1, "LogoutAutomatically"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    .line 33
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    const-string/jumbo v1, "SendEmotionMessage"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->MessageSending:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->LogoutAutomatically:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->SendEmotionMessage:Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->$VALUES:[Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/imtools/AutoTrigger$TriggerType;

    return-object v0
.end method
