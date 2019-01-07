.class public final enum Lcom/alibaba/alimei/framework/SDKError;
.super Ljava/lang/Enum;
.source "SDKError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/framework/SDKError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum AccountHasLogin:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum BODY_ENCODING_CONVERT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum BOUNDARY_NOT_CONTAINED_IN_MULTIPART_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CERTIFICATE_ADD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CommonAccountAuthError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DBError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryCreateBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryDeleteBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryExist:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryFileUploadError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryNotAuth:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryPathUnEnable:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryPreviewDocError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryPreviewFileTooLarge:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryRenameBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryRestoreBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentrySaveError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryServiceUpgrade:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentrySpaceUpdateError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentrySyncError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum DentryTempUrlNotFound:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum EMPTY_UIDS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FETCH_NON_POP3_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FETCH_NON_WEBDAV_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FETCH_NOT_SUPPORT_SYNC_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FOLDER_NOT_EXISTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FavriteNotFoundError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FavriteRightError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum HOST_NOT_RESOLVE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum ILLEGAL_ARGUMENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum IMAP_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum IMAP_FETCH_RESPONSE_PARAMETER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum IMAP_FOLDER_NOT_OPEN_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INVALID_CAPABILITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INVALID_IMAP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INVALID_MESSAGE_SET_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INVALID_POP3_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INVALID_SMTP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum IOError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum LOCATE_STORE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum LOCATE_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum LOGIN_DOMAIN_NOT_EXIST_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MESSAGE_COUNT_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MESSAGE_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum METHOD_NOT_IMPLEMENTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateAccountAllreadyExist:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateAccountAuthorError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateImapIpOrPortError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateImapPasswordError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateNotAllowByServer:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateNotExistSourceAccount:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateNotFoundParentFolder:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateNotSetSourceAccountByServer:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateNotStartByServer:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateNotSupportPop:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateTimeOut:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateUnkownError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateUpdateDataNotValid:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum MigrateUserTooMuch:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum NEOGOTIATING_CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum NETEASE_PULL_MAIL_PREVENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum NOT_IMAP_FOLDER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum NO_SUCH_ALGORITHM_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum NetworkError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum OUTING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum PLAIN_AUTHENTICATION_DISALLOWED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum PLAIN_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum POP3_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum QQMAIL_AUTHORIZED_CODE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum REMOTE_FOLDER_NOT_CREATED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum RpcBusinessError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum RpcServerResultError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SEARCH_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SMTP_BAD_RESPONSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SMTP_NO_AUTHENTICATE_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SMTP_RESPONSE_FORMAT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SMTP_SEND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SMTP_TOO_MANY_ADDRESS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SSL_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum STDProtocolNotSupportAction:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SdCardError:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum SpaceNotFound:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum TLS_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum TRASH_FOLDER_NOT_CREATEDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum UNABLE_SUPPORT_ID_COMMAND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum UNAVAILABLE_STORAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum UNKNOW_PART_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum UNRECOGNIZED_RECIPIENT_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum UNSUPPORT_ENCODING_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum USER_SUSPENDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum USE_7BIT_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum Unknown:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum WEBDAV_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum WEBDAV_MESSAGE_GET_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum WEBDAV_PARSE_CONFIG_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum WEBDAV_SAX_ERROR:Lcom/alibaba/alimei/framework/SDKError;

.field public static final enum WEBDA_LOGIN_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;


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

    .line 13
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "AccountNotLogin"

    const-string/jumbo v2, "account_not_login"

    const-string/jumbo v3, "\u8d26\u53f7\u672a\u767b\u5f55"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    .line 15
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "AccountHasLogin"

    const-string/jumbo v2, "account_has_login"

    const-string/jumbo v3, "\u8d26\u53f7\u91cd\u590d\u767b\u5f55"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->AccountHasLogin:Lcom/alibaba/alimei/framework/SDKError;

    .line 20
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FolderNotFound"

    const-string/jumbo v2, "sdk_folder_not_found"

    const-string/jumbo v3, "\u672a\u627e\u5230\u5bf9\u5e94\u6587\u4ef6\u5939"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 25
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MailNotFoundInLocal"

    const-string/jumbo v2, "mail_not_found_in_local"

    const-string/jumbo v3, "\u90ae\u4ef6\u5bf9\u8c61\u6ca1\u6709\u67e5\u8be2\u5230"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    .line 30
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SpaceNotFound"

    const-string/jumbo v2, "sdk_space_not_found"

    const-string/jumbo v3, "\u672a\u627e\u5230\u5bf9\u5e94\u7684space"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SpaceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 34
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "RpcBusinessError"

    const/4 v2, 0x5

    const-string/jumbo v3, "sdk_rpc_service_error"

    const-string/jumbo v4, "\u670d\u52a1\u8fd4\u56de\u4e1a\u52a1\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->RpcBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 39
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "RpcServerResultError"

    const/4 v2, 0x6

    const-string/jumbo v3, "rpc_server_result_error"

    const-string/jumbo v4, "\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u6570\u636e\u683c\u5f0f\u6216\u8005\u662f\u7ed3\u679c\u4e0eapp\u7aef\u7ea6\u5b9a\u7684\u4e0d\u7b26\u5408"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->RpcServerResultError:Lcom/alibaba/alimei/framework/SDKError;

    .line 44
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "NetworkError"

    const/4 v2, 0x7

    const-string/jumbo v3, "sdk_rpc_network_erro"

    const-string/jumbo v4, "\u7f51\u7edc\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    .line 49
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DBError"

    const/16 v2, 0x8

    const-string/jumbo v3, "sdk_database_error"

    const-string/jumbo v4, "\u672c\u5730db\u5904\u7406\u76f8\u5173\u7684\u5f02\u5e38\u9519\u8bef\u4fe1\u606f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    .line 54
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "IOError"

    const/16 v2, 0x9

    const-string/jumbo v3, "sdk_io_error"

    const-string/jumbo v4, "IO\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    .line 59
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "Unknown"

    const/16 v2, 0xa

    const-string/jumbo v3, "sdk_unknow"

    const-string/jumbo v4, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    .line 64
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SdCardError"

    const/16 v2, 0xb

    const-string/jumbo v3, "sd_card_error"

    const-string/jumbo v4, "SD\u5361\u5f02\u5e38"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SdCardError:Lcom/alibaba/alimei/framework/SDKError;

    .line 66
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "STDProtocolNotSupportAction"

    const/16 v2, 0xc

    const-string/jumbo v3, "std_protocol_not_support_action"

    const-string/jumbo v4, "\u6807\u51c6\u534f\u8bae\u4e0d\u652f\u6301\u7684\u884c\u4e3a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->STDProtocolNotSupportAction:Lcom/alibaba/alimei/framework/SDKError;

    .line 71
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryCreateBusinessError"

    const/16 v2, 0xd

    const-string/jumbo v3, "130200011"

    const-string/jumbo v4, "\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryCreateBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 76
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryCopyBusinessError"

    const/16 v2, 0xe

    const-string/jumbo v3, "130200012"

    const-string/jumbo v4, "\u590d\u5236\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 81
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryDeleteBusinessError"

    const/16 v2, 0xf

    const-string/jumbo v3, "130200013"

    const-string/jumbo v4, "\u5220\u9664\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryDeleteBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 87
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryMoveBusinessError"

    const/16 v2, 0x10

    const-string/jumbo v3, "130200014"

    const-string/jumbo v4, "\u79fb\u52a8\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 92
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryRenameBusinessError"

    const/16 v2, 0x11

    const-string/jumbo v3, "130200015"

    const-string/jumbo v4, "\u91cd\u547d\u540d\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryRenameBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 97
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryRestoreBusinessError"

    const/16 v2, 0x12

    const-string/jumbo v3, "130200016"

    const-string/jumbo v4, "\u56de\u6eda\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryRestoreBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    .line 102
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryFileUploadError"

    const/16 v2, 0x13

    const-string/jumbo v3, "130200017"

    const-string/jumbo v4, "\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryFileUploadError:Lcom/alibaba/alimei/framework/SDKError;

    .line 107
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryFileInfoError"

    const/16 v2, 0x14

    const-string/jumbo v3, "130200018"

    const-string/jumbo v4, "\u6587\u4ef6\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    .line 112
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentrySyncError"

    const/16 v2, 0x15

    const-string/jumbo v3, "130200019"

    const-string/jumbo v4, "\u540c\u6b65\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySyncError:Lcom/alibaba/alimei/framework/SDKError;

    .line 117
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentrySearchError"

    const/16 v2, 0x16

    const-string/jumbo v3, "130200020"

    const-string/jumbo v4, "\u641c\u7d22\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

    .line 122
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentrySaveError"

    const/16 v2, 0x17

    const-string/jumbo v3, "130200021"

    const-string/jumbo v4, "\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySaveError:Lcom/alibaba/alimei/framework/SDKError;

    .line 127
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentrySpaceUpdateError"

    const/16 v2, 0x18

    const-string/jumbo v3, "130200021"

    const-string/jumbo v4, "\u5b58\u50a8\u7a7a\u95f4\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceUpdateError:Lcom/alibaba/alimei/framework/SDKError;

    .line 132
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryNameTooLong"

    const/16 v2, 0x19

    const-string/jumbo v3, "13024002"

    const-string/jumbo v4, "\u6587\u4ef6\u540d\u8d85\u9650256\u5b57\u7b26"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    .line 137
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryNameIllegal"

    const/16 v2, 0x1a

    const-string/jumbo v3, "13023001"

    const-string/jumbo v4, "\u6587\u4ef6\u540d\u4e0d\u80fd\u5305\u542b / * \\ ? : < > \" |"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    .line 142
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryParentDirNotFound"

    const/16 v2, 0x1b

    const-string/jumbo v3, "13024000"

    const-string/jumbo v4, "\u7236\u76ee\u5f55\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 148
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryPathUnEnable"

    const/16 v2, 0x1c

    const-string/jumbo v3, "13023004"

    const-string/jumbo v4, "\u8def\u5f84\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryPathUnEnable:Lcom/alibaba/alimei/framework/SDKError;

    .line 153
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryExist"

    const/16 v2, 0x1d

    const-string/jumbo v3, "13023003"

    const-string/jumbo v4, "\u6587\u4ef6\u5df2\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    .line 158
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentrySpaceFull"

    const/16 v2, 0x1e

    const-string/jumbo v3, "13026000"

    const-string/jumbo v4, "\u4e91\u76d8\u5bb9\u91cf\u5df2\u6ee1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

    .line 163
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryTempUrlNotFound"

    const/16 v2, 0x1f

    const-string/jumbo v3, "13023006"

    const-string/jumbo v4, "\u4e34\u65f6\u6587\u4ef6\u5931\u6548"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryTempUrlNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 168
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentrySourceNotFound"

    const/16 v2, 0x20

    const-string/jumbo v3, "13023000"

    const-string/jumbo v4, "\u8d44\u6e90\u672a\u627e\u5230"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    .line 173
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryPreviewDocError"

    const/16 v2, 0x21

    const-string/jumbo v3, "13020001"

    const-string/jumbo v4, "\u9884\u89c8\u5730\u5740\u83b7\u53d6\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewDocError:Lcom/alibaba/alimei/framework/SDKError;

    .line 178
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryNotAuth"

    const/16 v2, 0x22

    const-string/jumbo v3, "13020005"

    const-string/jumbo v4, "\u6ca1\u6709\u8bbf\u95ee\u6743\u9650"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryNotAuth:Lcom/alibaba/alimei/framework/SDKError;

    .line 183
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryPreviewFileTooLarge"

    const/16 v2, 0x23

    const-string/jumbo v3, "200001"

    const-string/jumbo v4, "\u9884\u89c8\u6587\u4ef6\u5927\u5c0f\u8d85\u8fc7\u9650\u5236"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewFileTooLarge:Lcom/alibaba/alimei/framework/SDKError;

    .line 188
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "DentryServiceUpgrade"

    const/16 v2, 0x24

    const-string/jumbo v3, "13026999"

    const-string/jumbo v4, "\u540e\u53f0\u670d\u52a1\u5347\u7ea7\u4e2d"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryServiceUpgrade:Lcom/alibaba/alimei/framework/SDKError;

    .line 193
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FavriteParamError"

    const/16 v2, 0x25

    const-string/jumbo v3, "17020000"

    const-string/jumbo v4, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    .line 198
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FavriteRightError"

    const/16 v2, 0x26

    const-string/jumbo v3, "17020005"

    const-string/jumbo v4, "\u9274\u6743\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteRightError:Lcom/alibaba/alimei/framework/SDKError;

    .line 203
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FavriteNotFoundError"

    const/16 v2, 0x27

    const-string/jumbo v3, "17023000"

    const-string/jumbo v4, "\u76ee\u6807\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteNotFoundError:Lcom/alibaba/alimei/framework/SDKError;

    .line 208
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FavriteUnKnownError"

    const/16 v2, 0x28

    const-string/jumbo v3, "17020001"

    const-string/jumbo v4, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

    .line 213
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CommonAccountAuthError"

    const/16 v2, 0x29

    const-string/jumbo v3, "account auth error"

    const-string/jumbo v4, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 218
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CommonAccountIncomingAuthError"

    const/16 v2, 0x2a

    const-string/jumbo v3, "incoming_auth_failed"

    const-string/jumbo v4, "Account incoming auth failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 223
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CommonAccountOutgoingAuthError"

    const/16 v2, 0x2b

    const-string/jumbo v3, "outgoing_auth_failed"

    const-string/jumbo v4, "Account outgoing auth failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    .line 228
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CommonOAuthGetTokenFailed"

    const/16 v2, 0x2c

    const-string/jumbo v3, "common_oauth_get_token_failed"

    const-string/jumbo v4, "OAuth get token failed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

    .line 233
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CommonAccountConnectionError"

    const/16 v2, 0x2d

    const-string/jumbo v3, "account connection error"

    const-string/jumbo v4, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    .line 238
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateUnkownError"

    const/16 v2, 0x2e

    const-string/jumbo v3, "300000"

    const-string/jumbo v4, "\u642c\u5bb6\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateUnkownError:Lcom/alibaba/alimei/framework/SDKError;

    .line 239
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateNotExistSourceAccount"

    const/16 v2, 0x2f

    const-string/jumbo v3, "300001"

    const-string/jumbo v4, "\u672c\u5730\u642c\u5bb6\u6e90\u8d26\u6237\u8d26\u6237\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotExistSourceAccount:Lcom/alibaba/alimei/framework/SDKError;

    .line 243
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateImapIpOrPortError"

    const/16 v2, 0x30

    const-string/jumbo v3, "300010"

    const-string/jumbo v4, "\u642c\u5bb6\u8d26\u6237imap\u6216\u8005\u7aef\u53e3\u8bbe\u7f6e\u6709\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateImapIpOrPortError:Lcom/alibaba/alimei/framework/SDKError;

    .line 244
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateImapPasswordError"

    const/16 v2, 0x31

    const-string/jumbo v3, "300011"

    const-string/jumbo v4, "\u7ed1\u67b6\u8d26\u6237imap\u5bc6\u7801\u8bbe\u7f6e\u6709\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateImapPasswordError:Lcom/alibaba/alimei/framework/SDKError;

    .line 248
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateNotSupportPop"

    const/16 v2, 0x32

    const-string/jumbo v3, "300021"

    const-string/jumbo v4, "\u642c\u5bb6\u76ee\u524d\u4e0d\u652f\u6301pop\u534f\u8bae"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotSupportPop:Lcom/alibaba/alimei/framework/SDKError;

    .line 252
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateNotStartByServer"

    const/16 v2, 0x33

    const-string/jumbo v3, "301500"

    const-string/jumbo v4, "\u57df\u8fd8\u6ca1\u6709\u5f00\u542f\u642c\u5bb6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotStartByServer:Lcom/alibaba/alimei/framework/SDKError;

    .line 253
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateNotSetSourceAccountByServer"

    const/16 v2, 0x34

    const-string/jumbo v3, "301502"

    const-string/jumbo v4, "\u672a\u8bbe\u7f6e\u642c\u5bb6\u8d26\u53f7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotSetSourceAccountByServer:Lcom/alibaba/alimei/framework/SDKError;

    .line 254
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateAccountAllreadyExist"

    const/16 v2, 0x35

    const-string/jumbo v3, "301503"

    const-string/jumbo v4, "\u642c\u5bb6\u8d26\u53f7\u5df2\u7ecf\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateAccountAllreadyExist:Lcom/alibaba/alimei/framework/SDKError;

    .line 255
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateNotFoundParentFolder"

    const/16 v2, 0x36

    const-string/jumbo v3, "301504"

    const-string/jumbo v4, "\u521b\u5efa\u6216\u8005\u83b7\u53d6\u642c\u5bb6\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotFoundParentFolder:Lcom/alibaba/alimei/framework/SDKError;

    .line 256
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateAccountAuthorError"

    const/16 v2, 0x37

    const-string/jumbo v3, "301505"

    const-string/jumbo v4, "\u8d26\u6237\u8ba4\u8bc1\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateAccountAuthorError:Lcom/alibaba/alimei/framework/SDKError;

    .line 257
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateUserTooMuch"

    const/16 v2, 0x38

    const-string/jumbo v3, "301507"

    const-string/jumbo v4, "\u5f53\u524d\u7528\u6237\u642c\u5bb6\u91cf\u8fc7\u591a\uff0c\u8bf7\u8fc7\u6bb5\u65f6\u95f4\u542f\u52a8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateUserTooMuch:Lcom/alibaba/alimei/framework/SDKError;

    .line 258
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateNotAllowByServer"

    const/16 v2, 0x39

    const-string/jumbo v3, "301508"

    const-string/jumbo v4, "\u5f53\u524d\u4e0d\u5141\u8bb8\u8be5\u7528\u6237\u8fdb\u884c\u624b\u673a\u642c\u5bb6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotAllowByServer:Lcom/alibaba/alimei/framework/SDKError;

    .line 260
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateTimeOut"

    const/16 v2, 0x3a

    const-string/jumbo v3, "301511"

    const-string/jumbo v4, "\u642c\u5bb6\u4efb\u52a1\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateTimeOut:Lcom/alibaba/alimei/framework/SDKError;

    .line 262
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MigrateUpdateDataNotValid"

    const/16 v2, 0x3b

    const-string/jumbo v3, "301512"

    const-string/jumbo v4, "\u66f4\u65b0\u642c\u5bb6\u72b6\u6001\u6570\u636e\u4e0d\u5408\u6cd5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MigrateUpdateDataNotValid:Lcom/alibaba/alimei/framework/SDKError;

    .line 267
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "TIMED_OUT_ERROR"

    const/16 v2, 0x3c

    const-string/jumbo v3, "time_out_error"

    const-string/jumbo v4, "\u54cd\u5e94\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 269
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INCOMING_CONNECTION_ERROR"

    const/16 v2, 0x3d

    const-string/jumbo v3, "connection_error"

    const-string/jumbo v4, "\u63a5\u6536\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 271
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "OUTING_CONNECTION_ERROR"

    const/16 v2, 0x3e

    const-string/jumbo v3, "smtp_connection_error"

    const-string/jumbo v4, "\u53d1\u9001\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->OUTING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 273
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SSL_CONNECTION_NOT_AVAILABLE_ERROR"

    const/16 v2, 0x3f

    const-string/jumbo v3, "ssl_connection_not_available_error"

    const-string/jumbo v4, "SSL\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SSL_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 275
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "PLAIN_CONNECTION_NOT_AVAILABLE_ERROR"

    const/16 v2, 0x40

    const-string/jumbo v3, "non_ssl_connection_not_available_error"

    const-string/jumbo v4, "\u975eSSL\u8fde\u63a5\u4e0d\u53ef\u7528"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->PLAIN_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 277
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "HOST_NOT_RESOLVE_ERROR"

    const/16 v2, 0x41

    const-string/jumbo v3, "host_not_resolved_error"

    const-string/jumbo v4, "\u4e3b\u673a\u65e0\u6cd5\u89e3\u6790"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->HOST_NOT_RESOLVE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 279
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "UNSUPPORED_PROTOCOL_ERROR"

    const/16 v2, 0x42

    const-string/jumbo v3, "unsupported_protocol_error"

    const-string/jumbo v4, "\u4e0d\u652f\u6301\u7684\u534f\u8bae"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 281
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INVALID_IMAP_URI_ERROR"

    const/16 v2, 0x43

    const-string/jumbo v3, "invalid_imap_uri_error"

    const-string/jumbo v4, "\u65e0\u6548\u7684IMAP URI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INVALID_IMAP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 283
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INVALID_POP3_URI_ERROR"

    const/16 v2, 0x44

    const-string/jumbo v3, "invalid_pop3_uri_error"

    const-string/jumbo v4, "\u65e0\u6548\u7684POP3 URI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INVALID_POP3_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 285
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INVALID_WEBDAV_URI_ERROR"

    const/16 v2, 0x45

    const-string/jumbo v3, "invalid_webdav_uri_error"

    const-string/jumbo v4, "\u65e0\u6548\u7684WebDav URI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 287
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INVALID_SMTP_URI_ERROR"

    const/16 v2, 0x46

    const-string/jumbo v3, "invalid_smtp_uri_error"

    const-string/jumbo v4, "\u65e0\u6548\u7684SMTP URI"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INVALID_SMTP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 289
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "PARSE_ERROR"

    const/16 v2, 0x47

    const-string/jumbo v3, "parser_error"

    const-string/jumbo v4, "\u89e3\u6790\u51fa\u9519"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 291
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "LOCATE_STORE_ERROR"

    const/16 v2, 0x48

    const-string/jumbo v3, "locate_store_error"

    const-string/jumbo v4, "\u521b\u5efaStore\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_STORE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 293
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "LOCATE_TRANSPORT_ERROR"

    const/16 v2, 0x49

    const-string/jumbo v3, "locate_transport_error"

    const-string/jumbo v4, "\u4e0d\u652f\u6301\u7684\u53d1\u9001\u65b9\u5f0f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 295
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CERTIFICATE_VALIDATE_ERROR"

    const/16 v2, 0x4a

    const-string/jumbo v3, "certificate_validation_error"

    const-string/jumbo v4, "\u8bc1\u4e66\u6821\u9a8c\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 297
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CERTIFICATE_ADD_ERROR"

    const/16 v2, 0x4b

    const-string/jumbo v3, "certificate_add_error"

    const-string/jumbo v4, "\u6dfb\u52a0\u4fe1\u4efb\u8bc1\u4e66\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_ADD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 299
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SSL_ERROR"

    const/16 v2, 0x4c

    const-string/jumbo v3, "ssl_error"

    const-string/jumbo v4, "SSL\u63e1\u624b\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 301
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "GENERNAL_SECURITY_ERROR"

    const/16 v2, 0x4d

    const-string/jumbo v3, "general_security_error"

    const-string/jumbo v4, "\u5b89\u5168\u8fde\u63a5\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 303
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "PLAIN_AUTHENTICATION_DISALLOWED_ERROR"

    const/16 v2, 0x4e

    const-string/jumbo v3, "plain_authentication_disallowed_error"

    const-string/jumbo v4, "\u4e0d\u5141\u8bb8\u975e\u52a0\u5bc6\u65b9\u5f0f\u767b\u5f55"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->PLAIN_AUTHENTICATION_DISALLOWED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 305
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "UNABLE_SUPPORT_ID_COMMAND_ERROR"

    const/16 v2, 0x4f

    const-string/jumbo v3, "unable_support_id_command_error"

    const-string/jumbo v4, "\u4e0d\u652f\u6301ID Command"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNABLE_SUPPORT_ID_COMMAND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 307
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "TLS_NOT_SUPPORT_ERROR"

    const/16 v2, 0x50

    const-string/jumbo v3, "tls_not_support_error"

    const-string/jumbo v4, "\u4e0d\u652f\u6301TLS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->TLS_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 309
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INVALID_CAPABILITY_ERROR"

    const/16 v2, 0x51

    const-string/jumbo v3, "invalid_capability_error"

    const-string/jumbo v4, "\u65e0\u6548\u7684capability\u54cd\u5e94"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INVALID_CAPABILITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 311
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "IMAP_COMMAND_EXECUTE_ERROR"

    const/16 v2, 0x52

    const-string/jumbo v3, "imap_command_exe_error"

    const-string/jumbo v4, "IMAP\u6307\u4ee4\u6267\u884c\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->IMAP_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 313
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "POP3_COMMAND_EXECUTE_ERROR"

    const/16 v2, 0x53

    const-string/jumbo v3, "pop3_command_exe_error"

    const-string/jumbo v4, "POP3\u6307\u4ee4\u6267\u884c\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->POP3_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 315
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "WEBDAV_COMMAND_EXECUTE_ERROR"

    const/16 v2, 0x54

    const-string/jumbo v3, "webdav_command_exe_error"

    const-string/jumbo v4, "WebDav\u6307\u4ee4\u6267\u884c\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 317
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "NEOGOTIATING_CRAM_MD5_ERROR"

    const/16 v2, 0x55

    const-string/jumbo v3, "negotiating_CRAM_MD5_error"

    const-string/jumbo v4, "CRAM MD5\u534f\u5546\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->NEOGOTIATING_CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 319
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "CRAM_MD5_ERROR"

    const/16 v2, 0x56

    const-string/jumbo v3, "CRAM_MD5_error"

    const-string/jumbo v4, "CRAM MD5 Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 321
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "NO_SUCH_ALGORITHM_ERROR"

    const/16 v2, 0x57

    const-string/jumbo v3, "no_such_algorithm_error"

    const-string/jumbo v4, "\u52a0\u5bc6\u7b97\u6cd5\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->NO_SUCH_ALGORITHM_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 323
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "IMAP_FOLDER_NOT_OPEN_ERROR"

    const/16 v2, 0x58

    const-string/jumbo v3, "folder_not_open_error"

    const-string/jumbo v4, "IMAP Folder\u6253\u5f00\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FOLDER_NOT_OPEN_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 325
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "IMAP_FETCH_RESPONSE_PARAMETER_ERROR"

    const/16 v2, 0x59

    const-string/jumbo v3, "imap_fetch_response_parameter_error"

    const-string/jumbo v4, "FETCH\u54cd\u5e94\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FETCH_RESPONSE_PARAMETER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 327
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "INVALID_MESSAGE_SET_ERROR"

    const/16 v2, 0x5a

    const-string/jumbo v3, "invalid_message_set_error"

    const-string/jumbo v4, "\u65e0\u6548\u7684\u6d88\u606fID\u96c6\u5408"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->INVALID_MESSAGE_SET_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 329
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FETCH_NOT_SUPPORT_SYNC_TYPE_ERROR"

    const/16 v2, 0x5b

    const-string/jumbo v3, "fetch_not_support_sync_type_error"

    const-string/jumbo v4, "\u65e0\u6cd5Fetch, \u4e0d\u652f\u6301\u7684\u540c\u6b65\u7c7b\u578b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NOT_SUPPORT_SYNC_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 331
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FETCH_NON_POP3_MESSAGE_ERROR"

    const/16 v2, 0x5c

    const-string/jumbo v3, "fetch_non_pop3_message_error"

    const-string/jumbo v4, "Fetch\u975ePOP3 Message"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_POP3_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 333
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FETCH_NON_WEBDAV_MESSAGE_ERROR"

    const/16 v2, 0x5d

    const-string/jumbo v3, "fetch_non_webdav_message_error"

    const-string/jumbo v4, "Fetch \u975eWebDav Message"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_WEBDAV_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 335
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MESSAGE_NOT_FOUND_ERROR"

    const/16 v2, 0x5e

    const-string/jumbo v3, "message_not_found_error"

    const-string/jumbo v4, "Message not found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MESSAGE_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 337
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "TRASH_FOLDER_NOT_CREATEDED_ERROR"

    const/16 v2, 0x5f

    const-string/jumbo v3, "trash_folder_not_created_error"

    const-string/jumbo v4, "Trash \u6587\u4ef6\u5939\u672a\u80fd\u521b\u5efa"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->TRASH_FOLDER_NOT_CREATEDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 339
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "REMOTE_FOLDER_NOT_CREATED_ERROR"

    const/16 v2, 0x60

    const-string/jumbo v3, "remote_folder_not_created_error"

    const-string/jumbo v4, "\u6587\u4ef6\u5939\u521b\u5efa\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->REMOTE_FOLDER_NOT_CREATED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 341
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "NOT_IMAP_FOLDER_ERROR"

    const/16 v2, 0x61

    const-string/jumbo v3, "not_imap_folder_error"

    const-string/jumbo v4, "\u64cd\u4f5c\u7684\u4e0d\u662fIMAP\u6587\u4ef6\u5939"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->NOT_IMAP_FOLDER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 343
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "FOLDER_NOT_EXISTED_ERROR"

    const/16 v2, 0x62

    const-string/jumbo v3, "folder_not_existed_error"

    const-string/jumbo v4, "\u6587\u4ef6\u5939\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->FOLDER_NOT_EXISTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 345
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "MESSAGE_COUNT_NOT_FOUND_ERROR"

    const/16 v2, 0x63

    const-string/jumbo v3, "message_count_not_found_error"

    const-string/jumbo v4, "Message Count not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->MESSAGE_COUNT_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 347
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "UNKNOW_PART_TYPE_ERROR"

    const/16 v2, 0x64

    const-string/jumbo v3, "unknow_part_type_error"

    const-string/jumbo v4, "\u65e0\u6cd5\u8bc6\u522b\u7684Part\u7c7b\u578b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNKNOW_PART_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 349
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "UNAVAILABLE_STORAGE_ERROR"

    const/16 v2, 0x65

    const-string/jumbo v3, "unavailable_storage_error"

    const-string/jumbo v4, "\u4e0d\u53ef\u7528\u7684Storage"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNAVAILABLE_STORAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 351
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SEARCH_NOT_SUPPORT_ERROR"

    const/16 v2, 0x66

    const-string/jumbo v3, "search_not_support"

    const-string/jumbo v4, "\u65e0\u6cd5\u652f\u6301\u641c\u7d22"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SEARCH_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 353
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "UNRECOGNIZED_RECIPIENT_TYPE_ERROR"

    const/16 v2, 0x67

    const-string/jumbo v3, "unrecognized_recipient_error"

    const-string/jumbo v4, "\u65e0\u6cd5\u8bc6\u522b\u7684\u6536\u4ef6\u4eba\u7c7b\u578b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNRECOGNIZED_RECIPIENT_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 355
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "USE_7BIT_TRANSPORT_ERROR"

    const/16 v2, 0x68

    const-string/jumbo v3, "use_7bit_transport_error"

    const-string/jumbo v4, "Use 7bit Transport Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->USE_7BIT_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 357
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "METHOD_NOT_IMPLEMENTED_ERROR"

    const/16 v2, 0x69

    const-string/jumbo v3, "method_not_implemented_error"

    const-string/jumbo v4, "\u65b9\u6cd5\u672a\u5b9e\u73b0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->METHOD_NOT_IMPLEMENTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 359
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "BODY_ENCODING_CONVERT_ERROR"

    const/16 v2, 0x6a

    const-string/jumbo v3, "body_encoding_convert_error"

    const-string/jumbo v4, "BODY\u7f16\u7801\u8f6c\u6362\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->BODY_ENCODING_CONVERT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 361
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "UNSUPPORT_ENCODING_ERROR"

    const/16 v2, 0x6b

    const-string/jumbo v3, "unsupport_encoding_error"

    const-string/jumbo v4, "\u4e0d\u652f\u6301\u7684\u7f16\u7801"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORT_ENCODING_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 363
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "BOUNDARY_NOT_CONTAINED_IN_MULTIPART_ERROR"

    const/16 v2, 0x6c

    const-string/jumbo v3, "boundary_not_contained_error"

    const-string/jumbo v4, "\u6ca1\u6709\u5305\u542bboundary"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->BOUNDARY_NOT_CONTAINED_IN_MULTIPART_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 365
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "EMPTY_UIDS_ERROR"

    const/16 v2, 0x6d

    const-string/jumbo v3, "empty_uids_error"

    const-string/jumbo v4, "UID\u4e3a\u7a7a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->EMPTY_UIDS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 367
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "LOGIN_DOMAIN_NOT_EXIST_ERROR"

    const/16 v2, 0x6e

    const-string/jumbo v3, "login_domain_not_exist_error"

    const-string/jumbo v4, "\u767b\u5f55\u7684\u57df\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->LOGIN_DOMAIN_NOT_EXIST_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 369
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "USERNAME_OR_PASSWORD_ERROR"

    const/16 v2, 0x6f

    const-string/jumbo v3, "user_password_error"

    const-string/jumbo v4, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 371
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "QQMAIL_AUTHORIZED_CODE_ERROR"

    const/16 v2, 0x70

    const-string/jumbo v3, "qqmail_authorized_code_error"

    const-string/jumbo v4, "QQ\u90ae\u7bb1\u9700\u8981\u4f7f\u7528\u6388\u6743\u5417"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->QQMAIL_AUTHORIZED_CODE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 373
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "NETEASE_PULL_MAIL_PREVENT_ERROR"

    const/16 v2, 0x71

    const-string/jumbo v3, "netease_pull_mail_prevent"

    const-string/jumbo v4, "163\u90ae\u7bb1\u963b\u6b62\u6536\u4fe1"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->NETEASE_PULL_MAIL_PREVENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 375
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "USER_SUSPENDED_ERROR"

    const/16 v2, 0x72

    const-string/jumbo v3, "user_suspend_error"

    const-string/jumbo v4, "\u64cd\u4f5c\u88ab\u7528\u6237\u6302\u8d77"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->USER_SUSPENDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 377
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "GENERNAL_AUTHENTICATE_ERROR"

    const/16 v2, 0x73

    const-string/jumbo v3, "authenticate_error"

    const-string/jumbo v4, "\u8ba4\u8bc1\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 379
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "WEBDA_LOGIN_URL_ERROR"

    const/16 v2, 0x74

    const-string/jumbo v3, "webdav_login_url_error"

    const-string/jumbo v4, "WebDav Login URL Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->WEBDA_LOGIN_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 381
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "WEBDAV_SAX_ERROR"

    const/16 v2, 0x75

    const-string/jumbo v3, "sax_error"

    const-string/jumbo v4, "SAX Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_SAX_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 383
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "WEBDAV_PARSE_CONFIG_ERROR"

    const/16 v2, 0x76

    const-string/jumbo v3, "parse_config_error"

    const-string/jumbo v4, "WebDav Parse Config Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_PARSE_CONFIG_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 385
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "WEBDAV_MESSAGE_GET_URL_ERROR"

    const/16 v2, 0x77

    const-string/jumbo v3, "message_get_url_error"

    const-string/jumbo v4, "WebDav Get URL Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_MESSAGE_GET_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 387
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "ILLEGAL_ARGUMENT_ERROR"

    const/16 v2, 0x78

    const-string/jumbo v3, "illegal_argument_error"

    const-string/jumbo v4, "\u5b58\u5728\u4e0d\u5408\u6cd5\u7684\u53c2\u6570"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->ILLEGAL_ARGUMENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 389
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SMTP_NO_AUTHENTICATE_FOUND_ERROR"

    const/16 v2, 0x79

    const-string/jumbo v3, "smtp_no_authenticate_found_error"

    const-string/jumbo v4, "\u627e\u4e0d\u5230SMTP\u7684\u8ba4\u8bc1\u65b9\u5f0f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SMTP_NO_AUTHENTICATE_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 391
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SMTP_TOO_MANY_ADDRESS_ERROR"

    const/16 v2, 0x7a

    const-string/jumbo v3, "smtp_too_many_address_error"

    const-string/jumbo v4, "\u53d1\u9001\u54df\u4ef6\u7684\u6536\u4ef6\u4eba\u8fc7\u591a"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SMTP_TOO_MANY_ADDRESS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 393
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SMTP_SEND_ERROR"

    const/16 v2, 0x7b

    const-string/jumbo v3, "smtp_send_error"

    const-string/jumbo v4, "\u53d1\u9001\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SMTP_SEND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 395
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SMTP_RESPONSE_FORMAT_ERROR"

    const/16 v2, 0x7c

    const-string/jumbo v3, "smtp_response_format_error"

    const-string/jumbo v4, "SMTP\u54cd\u5e94\u683c\u5f0f\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SMTP_RESPONSE_FORMAT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 397
    new-instance v0, Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v1, "SMTP_BAD_RESPONSE_ERROR"

    const/16 v2, 0x7d

    const-string/jumbo v3, "smtp_bad_response_error"

    const-string/jumbo v4, "SMTP\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/framework/SDKError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->SMTP_BAD_RESPONSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    .line 8
    const/16 v0, 0x7e

    new-array v0, v0, [Lcom/alibaba/alimei/framework/SDKError;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->AccountHasLogin:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->FolderNotFound:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->MailNotFoundInLocal:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->SpaceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->RpcBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->RpcServerResultError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->NetworkError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DBError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SdCardError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->STDProtocolNotSupportAction:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryCreateBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryCopyBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryDeleteBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryMoveBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryRenameBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryRestoreBusinessError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryFileUploadError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryFileInfoError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentrySyncError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentrySearchError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentrySaveError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceUpdateError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryNameTooLong:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryNameIllegal:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryParentDirNotFound:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryPathUnEnable:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryExist:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentrySpaceFull:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryTempUrlNotFound:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewDocError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryNotAuth:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryPreviewFileTooLarge:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->DentryServiceUpgrade:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteParamError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteRightError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteNotFoundError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FavriteUnKnownError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountAuthError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountIncomingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountOutgoingAuthError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CommonOAuthGetTokenFailed:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CommonAccountConnectionError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateUnkownError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotExistSourceAccount:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateImapIpOrPortError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateImapPasswordError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotSupportPop:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotStartByServer:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotSetSourceAccountByServer:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateAccountAllreadyExist:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotFoundParentFolder:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateAccountAuthorError:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateUserTooMuch:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateNotAllowByServer:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateTimeOut:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MigrateUpdateDataNotValid:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->OUTING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SSL_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->PLAIN_CONNECTION_NOT_AVAILABLE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->HOST_NOT_RESOLVE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORED_PROTOCOL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_IMAP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_POP3_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x45

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_WEBDAV_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x46

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_SMTP_URI_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_STORE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->LOCATE_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_VALIDATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_ADD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_SECURITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->PLAIN_AUTHENTICATION_DISALLOWED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNABLE_SUPPORT_ID_COMMAND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->TLS_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_CAPABILITY_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IMAP_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->POP3_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_COMMAND_EXECUTE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->NEOGOTIATING_CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CRAM_MD5_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->NO_SUCH_ALGORITHM_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FOLDER_NOT_OPEN_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FETCH_RESPONSE_PARAMETER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_MESSAGE_SET_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NOT_SUPPORT_SYNC_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_POP3_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FETCH_NON_WEBDAV_MESSAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MESSAGE_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->TRASH_FOLDER_NOT_CREATEDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x60

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->REMOTE_FOLDER_NOT_CREATED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x61

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->NOT_IMAP_FOLDER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x62

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->FOLDER_NOT_EXISTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x63

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->MESSAGE_COUNT_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x64

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNKNOW_PART_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x65

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNAVAILABLE_STORAGE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x66

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SEARCH_NOT_SUPPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x67

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNRECOGNIZED_RECIPIENT_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x68

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->USE_7BIT_TRANSPORT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x69

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->METHOD_NOT_IMPLEMENTED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->BODY_ENCODING_CONVERT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->UNSUPPORT_ENCODING_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->BOUNDARY_NOT_CONTAINED_IN_MULTIPART_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->EMPTY_UIDS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->LOGIN_DOMAIN_NOT_EXIST_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->USERNAME_OR_PASSWORD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x70

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->QQMAIL_AUTHORIZED_CODE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x71

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->NETEASE_PULL_MAIL_PREVENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x72

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->USER_SUSPENDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x73

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->GENERNAL_AUTHENTICATE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x74

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDA_LOGIN_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x75

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_SAX_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x76

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_PARSE_CONFIG_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x77

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->WEBDAV_MESSAGE_GET_URL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x78

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->ILLEGAL_ARGUMENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x79

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SMTP_NO_AUTHENTICATE_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SMTP_TOO_MANY_ADDRESS_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SMTP_SEND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SMTP_RESPONSE_FORMAT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->SMTP_BAD_RESPONSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/framework/SDKError;->$VALUES:[Lcom/alibaba/alimei/framework/SDKError;

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
    .line 399
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 400
    iput-object p3, p0, Lcom/alibaba/alimei/framework/SDKError;->mErrorCode:Ljava/lang/String;

    .line 401
    iput-object p4, p0, Lcom/alibaba/alimei/framework/SDKError;->mErrorMsg:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/framework/SDKError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/SDKError;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/framework/SDKError;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->$VALUES:[Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/framework/SDKError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/framework/SDKError;

    return-object v0
.end method


# virtual methods
.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alibaba/alimei/framework/SDKError;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alibaba/alimei/framework/SDKError;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/alimei/framework/SDKError;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[ errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/framework/SDKError;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/framework/SDKError;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
