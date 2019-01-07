.class public final enum Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
.super Ljava/lang/Enum;
.source "TeleConfCommonConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoipStateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

.field public static final enum STATE_BUSY:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

.field public static final enum STATE_CALLING_TIMEOUT:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

.field public static final enum STATE_CANCELED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

.field public static final enum STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    const-string/jumbo v1, "STATE_CALLING_TIMEOUT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CALLING_TIMEOUT:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    .line 93
    new-instance v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    const-string/jumbo v1, "STATE_BUSY"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_BUSY:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    .line 94
    new-instance v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    const-string/jumbo v1, "STATE_REJECTED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    .line 95
    new-instance v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    const-string/jumbo v1, "STATE_CANCELED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CANCELED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    sget-object v1, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CALLING_TIMEOUT:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_BUSY:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_REJECTED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->STATE_CANCELED:Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->$VALUES:[Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->$VALUES:[Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/telebase/TeleConfCommonConsts$VoipStateType;

    return-object v0
.end method
