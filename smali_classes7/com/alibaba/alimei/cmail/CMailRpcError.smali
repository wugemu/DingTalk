.class public final enum Lcom/alibaba/alimei/cmail/CMailRpcError;
.super Ljava/lang/Enum;
.source "CMailRpcError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/cmail/CMailRpcError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum AGENT_SETTINGS_EMPTY_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ALREADY_BIND_HAS_DIFFERENT_EMAIL:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum BIND_UNFINISHED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum DEP_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum DOMAIN_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum EMAIL_IS_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum EMP_BIND_TO_ORG_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum EMP_INFO_ERROR_BY_TOKEN:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum LOCAL_EMAIL_INVALID_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORGID_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORG_DEPT_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORG_EMP_GET_FAILED_BY_EMAIL_PREFIX:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORG_EMP_GET_FAILED_BY_UID_AND_ORG:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORG_EMP_MAPPING_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORG_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum ORG_NAME_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_BINDACCOUNT_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_CONTENT_EMPTY:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_MOBILE_ISNULL:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_TAG_EMPTY:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum SCAN_TOKEN_USER_ISNULL:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

.field public static final enum USER_PROFILE_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "EMP_INFO_ERROR_BY_TOKEN"

    const-string/jumbo v2, "00011000"

    const-string/jumbo v3, "\u6839\u636etoken\u62ff\u5230\u7684token\u4fe1\u606f\u6709\u9519\u8bef"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMP_INFO_ERROR_BY_TOKEN:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 13
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ALREADY_BIND_HAS_DIFFERENT_EMAIL"

    const-string/jumbo v2, "00011001"

    const-string/jumbo v3, "\u5458\u5de5\u5df2\u7ecf\u7ed1\u5b9a\u5728\u4f01\u4e1a\u4e2d\uff0c\u5e76\u4e14email\u5730\u5740\u4e0e\u4f20\u5165\u7684\u4e0d\u7b26\u5408"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ALREADY_BIND_HAS_DIFFERENT_EMAIL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 15
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "EMAIL_IS_EXIST"

    const-string/jumbo v2, "00011002"

    const-string/jumbo v3, "\u4f20\u5165\u7684email\u5730\u5740\u5728\u4f01\u4e1a\u4e2d\u5df2\u7ecf\u5b58\u5728"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_IS_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 17
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "USER_PROFILE_GET_FAILED"

    const-string/jumbo v2, "00011003"

    const-string/jumbo v3, "\u7528\u6237profile\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->USER_PROFILE_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 19
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORG_EMP_MAPPING_GET_FAILED"

    const-string/jumbo v2, "00011004"

    const-string/jumbo v3, "\u4f01\u4e1a\u5458\u5de5\u7ed1\u5b9a\u5173\u7cfb\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_EMP_MAPPING_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 21
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORG_GET_FAILED"

    const/4 v2, 0x5

    const-string/jumbo v3, "00011005"

    const-string/jumbo v4, "\u4f01\u4e1a\u83b7\u5f97\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 23
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORG_EMP_GET_FAILED_BY_EMAIL_PREFIX"

    const/4 v2, 0x6

    const-string/jumbo v3, "00011006"

    const-string/jumbo v4, "\u4f01\u4e1a\u8054\u7cfb\u4eba\u83b7\u5f97\u5931\u8d25(\u6839\u636eemail\u524d\u7f00)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_EMP_GET_FAILED_BY_EMAIL_PREFIX:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 26
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORG_EMP_GET_FAILED_BY_UID_AND_ORG"

    const/4 v2, 0x7

    const-string/jumbo v3, "00011007"

    const-string/jumbo v4, "\u65e0\u6cd5\u83b7\u53d6\u4f01\u4e1a\u8054\u7cfb\u4eba\u4fe1\u606f\uff0c\u8bf7\u91cd\u8bd5\u3002"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_EMP_GET_FAILED_BY_UID_AND_ORG:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 29
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "DEP_GET_FAILED"

    const/16 v2, 0x8

    const-string/jumbo v3, "00011008"

    const-string/jumbo v4, "\u65e0\u6cd5\u83b7\u53d6\u90e8\u95e8\u4fe1\u606f\uff0c\u8bf7\u91cd\u8bd5\u3002"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->DEP_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 32
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "EMP_BIND_TO_ORG_FAILED"

    const/16 v2, 0x9

    const-string/jumbo v3, "00011009"

    const-string/jumbo v4, "\u7cfb\u7edf\u9519\u8bef\uff0c\u7ed1\u5b9a\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u3002"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMP_BIND_TO_ORG_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 35
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORG_DEPT_EXIST"

    const/16 v2, 0xa

    const-string/jumbo v3, "00021001"

    const-string/jumbo v4, "\u5bf9\u5e94\u4f01\u4e1a\u67b6\u6784\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_DEPT_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 37
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORG_NAME_EXIST"

    const/16 v2, 0xb

    const-string/jumbo v3, "00021002"

    const-string/jumbo v4, "\u4f01\u4e1a\u540d\u79f0\u5df2\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_NAME_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 39
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "BIND_UNFINISHED"

    const/16 v2, 0xc

    const-string/jumbo v3, "00021003"

    const-string/jumbo v4, "\u7ed1\u5b9a\u6570\u636e\u4e2d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->BIND_UNFINISHED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 41
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "TOKEN_INVALID"

    const/16 v2, 0xd

    const-string/jumbo v3, "00021004"

    const-string/jumbo v4, "TOKEN\u65e0\u6548"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 43
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "DOMAIN_USED"

    const/16 v2, 0xe

    const-string/jumbo v3, "00021005"

    const-string/jumbo v4, "\u57df\u5df2\u7ecf\u88ab\u7ed1\u5b9a\u8fc7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->DOMAIN_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 45
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "ORGID_USED"

    const/16 v2, 0xf

    const-string/jumbo v3, "00021006"

    const-string/jumbo v4, "\u4f01\u4e1a\u5df2\u7ecf\u7ed1\u5b9a\u8fc7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORGID_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 47
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_INVALID"

    const/16 v2, 0x10

    const-string/jumbo v3, "00031001"

    const-string/jumbo v4, "Token \u65e0\u6548"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 49
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_TAG_EMPTY"

    const/16 v2, 0x11

    const-string/jumbo v3, "00031002"

    const-string/jumbo v4, "\u4e1a\u52a1\u6807\u8bc6\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_TAG_EMPTY:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 51
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_CONTENT_EMPTY"

    const/16 v2, 0x12

    const-string/jumbo v3, "00031003"

    const-string/jumbo v4, "\u4e1a\u52a1\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_CONTENT_EMPTY:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 53
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_MOBILE_ERROR"

    const/16 v2, 0x13

    const-string/jumbo v3, "00031004"

    const-string/jumbo v4, "\u624b\u673a\u53f7\u7801\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 55
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_USER_ISNULL"

    const/16 v2, 0x14

    const-string/jumbo v3, "00031005"

    const-string/jumbo v4, "\u7528\u6237\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_USER_ISNULL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 57
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_MOBILE_ISNULL"

    const/16 v2, 0x15

    const-string/jumbo v3, "00031006"

    const-string/jumbo v4, "\u5f53\u524d\u7528\u6237\u624b\u673a\u53f7\u7801\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_MOBILE_ISNULL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 59
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "SCAN_TOKEN_BINDACCOUNT_MOBILE_ERROR"

    const/16 v2, 0x16

    const-string/jumbo v3, "00031007"

    const-string/jumbo v4, "\u7528\u6237\u7ed1\u5b9a\u624b\u673a\u53f7\u7801\u4e0d\u5339\u914d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_BINDACCOUNT_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 64
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "LOCAL_EMAIL_INVALID_ERROR"

    const/16 v2, 0x17

    const-string/jumbo v3, "99990001"

    const-string/jumbo v4, "\u90ae\u4ef6\u5730\u5740\u4e0d\u5408\u6cd5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->LOCAL_EMAIL_INVALID_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 66
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "AGENT_SETTINGS_EMPTY_ERROR"

    const/16 v2, 0x18

    const-string/jumbo v3, "99991002"

    const-string/jumbo v4, "\u4ee3\u6536\u8d26\u53f7\u914d\u7f6e\u5217\u8868\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->AGENT_SETTINGS_EMPTY_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 68
    new-instance v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    const-string/jumbo v1, "EMAIL_BIND_ERROR"

    const/16 v2, 0x19

    const-string/jumbo v3, "99991003"

    const-string/jumbo v4, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/CMailRpcError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    .line 7
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/alibaba/alimei/cmail/CMailRpcError;

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMP_INFO_ERROR_BY_TOKEN:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->ALREADY_BIND_HAS_DIFFERENT_EMAIL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_IS_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->USER_PROFILE_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_EMP_MAPPING_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_EMP_GET_FAILED_BY_EMAIL_PREFIX:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_EMP_GET_FAILED_BY_UID_AND_ORG:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->DEP_GET_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMP_BIND_TO_ORG_FAILED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_DEPT_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORG_NAME_EXIST:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->BIND_UNFINISHED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->DOMAIN_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->ORGID_USED:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_INVALID:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_TAG_EMPTY:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_CONTENT_EMPTY:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_USER_ISNULL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_MOBILE_ISNULL:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->SCAN_TOKEN_BINDACCOUNT_MOBILE_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->LOCAL_EMAIL_INVALID_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->AGENT_SETTINGS_EMPTY_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alibaba/alimei/cmail/CMailRpcError;->EMAIL_BIND_ERROR:Lcom/alibaba/alimei/cmail/CMailRpcError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->$VALUES:[Lcom/alibaba/alimei/cmail/CMailRpcError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/alibaba/alimei/cmail/CMailRpcError;->mErrorCode:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/alibaba/alimei/cmail/CMailRpcError;->mErrorMsg:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/cmail/CMailRpcError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cmail/CMailRpcError;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/cmail/CMailRpcError;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/alimei/cmail/CMailRpcError;->$VALUES:[Lcom/alibaba/alimei/cmail/CMailRpcError;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/cmail/CMailRpcError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/cmail/CMailRpcError;

    return-object v0
.end method


# virtual methods
.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/CMailRpcError;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/CMailRpcError;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/CMailRpcError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[ errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/CMailRpcError;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/CMailRpcError;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
