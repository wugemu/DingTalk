.class final enum Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReceiveType"
.end annotation


# static fields
.field public static final enum ReceiveType_ClickBtn:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field public static final enum ReceiveType_Init:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field public static final enum ReceiveType_Msg:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field public static final enum ReceiveType_NotifyClick:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field public static final enum ReceiveType_PluginRsp:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field public static final enum ReceiveType_PushState:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field public static final enum ReceiveType_Token:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

.field private static final synthetic a:[Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_Init"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Init:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_Token"

    invoke-direct {v0, v1, v4}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Token:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_Msg"

    invoke-direct {v0, v1, v5}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Msg:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_PushState"

    invoke-direct {v0, v1, v6}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_PushState:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_NotifyClick"

    invoke-direct {v0, v1, v7}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_NotifyClick:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_PluginRsp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_PluginRsp:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    new-instance v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const-string/jumbo v1, "ReceiveType_ClickBtn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_ClickBtn:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    sget-object v1, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Init:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Token:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_Msg:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_PushState:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_NotifyClick:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_PluginRsp:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->ReceiveType_ClickBtn:Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->a:[Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;
    .locals 1

    const-class v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;
    .locals 1

    sget-object v0, Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->a:[Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    invoke-virtual {v0}, [Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/pushagent/PushReceiver$ReceiveType;

    return-object v0
.end method
