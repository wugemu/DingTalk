.class public final enum Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
.super Ljava/lang/Enum;
.source "VoipConfContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_LEAVE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_PULL_MEMS:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

.field public static final enum ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_INIT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 30
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_CREATE_CONF"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 31
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_JOIN_CONF"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 32
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_LEAVE_CONF"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_LEAVE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 33
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_PULL_MEMS"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_PULL_MEMS:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 34
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_ADD_MEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 35
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_KICK_MEM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 36
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_MUTE_ALL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 37
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_UNMUTE_ALL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 38
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_MUTE_MEM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 39
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_UNMUTE_MEM"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 40
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_RECALL_MEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 41
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_STATE_CHANGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 42
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_CLOSE_CAM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 43
    new-instance v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    const-string/jumbo v1, "ACTION_OPEN_CAM"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    .line 28
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_INIT:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CREATE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_JOIN_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_LEAVE_CONF:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_PULL_MEMS:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_ADD_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_KICK_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_ALL:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_STATE_CHANGE:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_CLOSE_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_OPEN_CAM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->$VALUES:[Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    return-object v0
.end method
