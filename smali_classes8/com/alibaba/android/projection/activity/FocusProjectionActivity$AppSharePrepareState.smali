.class final enum Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;
.super Ljava/lang/Enum;
.source "FocusProjectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AppSharePrepareState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field public static final enum Prepare_Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field public static final enum Prepare_IpReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field public static final enum Prepare_RpcReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field public static final enum Prepare_ShareComplete:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field public static final enum Prepare_ShareFail:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

.field public static final enum Prepare_ShareReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    const-string/jumbo v1, "Prepare_Idle"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    const-string/jumbo v1, "Prepare_RpcReq"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_RpcReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    const-string/jumbo v1, "Prepare_IpReq"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_IpReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    const-string/jumbo v1, "Prepare_ShareReq"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    const-string/jumbo v1, "Prepare_ShareComplete"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareComplete:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    new-instance v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    const-string/jumbo v1, "Prepare_ShareFail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareFail:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_Idle:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_RpcReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_IpReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareReq:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareComplete:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->Prepare_ShareFail:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->$VALUES:[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

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
    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const-class v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->$VALUES:[Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    invoke-virtual {v0}, [Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppSharePrepareState;

    return-object v0
.end method
