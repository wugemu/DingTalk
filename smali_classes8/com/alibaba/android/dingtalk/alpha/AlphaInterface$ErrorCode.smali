.class public final enum Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;
.super Ljava/lang/Enum;
.source "AlphaInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/AlphaInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_ALONE:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_ALPHA_FUNC_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_ALPHA_IS_RUNNING:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_CORP_ID_INVALID:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_DEFAULT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_FAIL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_MESH_FAIL_NO_C1:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_NOT_WIFI:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_NPC_RESPONSE_NULL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_QUERY_MAC_BY_C1_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_SO_NOT_LOAD:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_START_ALPHA_FAILED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_TIMEOUT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_WIFI_DISCONNECTED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

.field public static final enum ERROR_CODE_WIFI_ERROR:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;


# instance fields
.field public mCode:I

.field public mMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_DEFAULT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_FAIL"

    const-string/jumbo v2, "fail"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_FAIL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 14
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_SO_NOT_LOAD"

    const-string/jumbo v2, "so not load"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_SO_NOT_LOAD:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 15
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_ALPHA_FUNC_DISABLED"

    const-string/jumbo v2, "alpha func disabled"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_FUNC_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 16
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_TIMEOUT"

    const-string/jumbo v2, "timeout"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_TIMEOUT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 17
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_WIFI_DISCONNECTED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string/jumbo v4, "wifi disconnected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_DISCONNECTED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 18
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_ALONE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string/jumbo v4, "alone"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALONE:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 19
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string/jumbo v4, "mesh fail, no admin corpIds"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 20
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_MESH_FAIL_NO_C1"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string/jumbo v4, "mesh fail, no C1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_C1:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 21
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_QUERY_MAC_BY_C1_DISABLED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const-string/jumbo v4, "query mac by C1 disabled"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_QUERY_MAC_BY_C1_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 22
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_NOT_WIFI"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-string/jumbo v4, "not wifi"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NOT_WIFI:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 23
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_WIFI_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string/jumbo v4, "wifi error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_ERROR:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 24
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_CORP_ID_INVALID"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const-string/jumbo v4, "corpId invalid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_CORP_ID_INVALID:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 25
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_NPC_RESPONSE_NULL"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string/jumbo v4, "npc response null"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NPC_RESPONSE_NULL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_ALPHA_IS_RUNNING"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string/jumbo v4, "alpha is running"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_IS_RUNNING:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 27
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    const-string/jumbo v1, "ERROR_CODE_START_ALPHA_FAILED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string/jumbo v4, "start alpha failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_START_ALPHA_FAILED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_DEFAULT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_FAIL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_SO_NOT_LOAD:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_FUNC_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_TIMEOUT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_DISCONNECTED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALONE:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_ADMIN_CORP_IDS:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_MESH_FAIL_NO_C1:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_QUERY_MAC_BY_C1_DISABLED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NOT_WIFI:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_WIFI_ERROR:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_CORP_ID_INVALID:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_NPC_RESPONSE_NULL:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_ALPHA_IS_RUNNING:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_START_ALPHA_FAILED:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    .line 35
    iput-object p4, p0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mMsg:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    return-object v0
.end method
