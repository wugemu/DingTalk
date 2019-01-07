.class public Lcom/alibaba/alimei/restfulapi/constant/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ACCOUNT_TYPE_GROUP:I = 0x2

.field public static final ACCOUNT_TYPE_MAIL:I = 0x1

.field public static final Account:Ljava/lang/String; = "Account"

.field public static final AccountType:Ljava/lang/String; = "AccountType"

.field public static final CONFIG_SWITCH_CMAIL_HTTP_DNS_ENABLE:Ljava/lang/String; = "mail_enable_dns"

.field public static final CONFIG_SWITCH_CMAIL_LWP_ENABLE:Ljava/lang/String; = "f_config_cmail_lwp_enable"

.field public static final CONFIG_SWITCH_CMAIL_OKHTTP_ENABLE:Ljava/lang/String; = "f_config_cmail_okhttp_enable"

.field public static final CONFIG_SWITCH_CSPACE_HTTP_DNS_ENABLE:Ljava/lang/String; = "cspace_http_dns_enable_android"

.field public static DEV_DAILY:I = 0x0

.field public static DEV_ONLINE:I = 0x0

.field public static DEV_PREPUB:I = 0x0

.field public static final ErrorCode:Ljava/lang/String; = "ErrorCode"

.field public static final ErrorMsg:Ljava/lang/String; = "ErrorMsg"

.field public static final InputEAddr:Ljava/lang/String; = "InputEAddr"

.field public static final MAIL_MIMETYPE:Ljava/lang/String; = "alimail_mt_mail"

.field public static final MODULE:Ljava/lang/String; = "CMail"

.field public static final Name:Ljava/lang/String; = "Name"

.field public static final REVOKE_MAIL_RETURNED_ERROR:I = 0x5

.field public static final REVOKE_NOT_FOUND_MAIL_ERROR:I = 0x4

.field public static final REVOKE_NOT_SUPPORT_MAIL_LIST_ERROR:I = 0x3

.field public static final REVOKE_OTHER_MAIL_ERROR:I = 0x2

.field public static final REVOKE_READ_ERROR:I = 0x1

.field public static final Status:Ljava/lang/String; = "Status"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_DAILY:I

    .line 93
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_PREPUB:I

    .line 94
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/alimei/restfulapi/constant/Constant;->DEV_ONLINE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
