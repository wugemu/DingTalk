.class public Lcom/alibaba/wukong/WKConstants$ErrorCode;
.super Ljava/lang/Object;
.source "WKConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/WKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCode"
.end annotation


# static fields
.field public static final ERR_CODE_BAD_REQUEST:Ljava/lang/String; = "400"

.field public static final ERR_CODE_BLACKLIST:Ljava/lang/String; = "101008"

.field public static final ERR_CODE_BUSY:Ljava/lang/String; = "101003"

.field public static final ERR_CODE_CANCELED:Ljava/lang/String; = "101010"

.field public static final ERR_CODE_DATABASE:Ljava/lang/String; = "101007"

.field public static final ERR_CODE_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "500"

.field public static final ERR_CODE_LOGIN_CONFLICT:Ljava/lang/String; = "101011"

.field public static final ERR_CODE_NETWORK_BROKEN:Ljava/lang/String; = "600"

.field public static final ERR_CODE_NOT_ENOUGH_SPACE:Ljava/lang/String; = "101006"

.field public static final ERR_CODE_NOT_FOUND:Ljava/lang/String; = "404"

.field public static final ERR_CODE_NOT_LOGIN:Ljava/lang/String; = "101004"

.field public static final ERR_CODE_OK:Ljava/lang/String; = "200"

.field public static final ERR_CODE_PARAMS:Ljava/lang/String; = "101002"

.field public static final ERR_CODE_REQUEST_CANCELLED:Ljava/lang/String; = "422"

.field public static final ERR_CODE_REQUEST_TIMEOUT:Ljava/lang/String; = "408"

.field public static final ERR_CODE_SERVICE_UNAVAILABLE:Ljava/lang/String; = "505"

.field public static final ERR_CODE_TRYING:Ljava/lang/String; = "100"

.field public static final ERR_CODE_UNAUTHORIZED:Ljava/lang/String; = "401"

.field public static final ERR_CODE_UNKNOWN:Ljava/lang/String; = "101001"

.field public static final ERR_CODE_UPLOADFAILED:Ljava/lang/String; = "101005"

.field public static final ERR_DESC_BAD_REQUEST:Ljava/lang/String; = "BAD_REQUEST_ERR"

.field public static final ERR_DESC_BLACKLIST:Ljava/lang/String; = "BLACKLIST_ERR"

.field public static final ERR_DESC_BUSY:Ljava/lang/String; = "SYSTEM_BUSY_ERR"

.field public static final ERR_DESC_CANCELED:Ljava/lang/String; = "CANCELED_ERR"

.field public static final ERR_DESC_DATABASE:Ljava/lang/String; = "DATABASE_ERR"

.field public static final ERR_DESC_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "INTERNAL_SERVER_ERR"

.field public static final ERR_DESC_LOGIN_CONFLICT:Ljava/lang/String; = "LOGIN_CONFLICT_ERR"

.field public static final ERR_DESC_NETWORK_BROKEN:Ljava/lang/String; = "NETWORK_BROKEN_ERR"

.field public static final ERR_DESC_NOT_ENOUGH_SPACE:Ljava/lang/String; = "NOT_ENOUGH_SPACE_ERR"

.field public static final ERR_DESC_NOT_FOUND:Ljava/lang/String; = "NOT_FOUND_ERR"

.field public static final ERR_DESC_NOT_LOGIN:Ljava/lang/String; = "NOT_LOGIN_ERR"

.field public static final ERR_DESC_OK:Ljava/lang/String; = "OK"

.field public static final ERR_DESC_PARAMS:Ljava/lang/String; = "PARAMETER_ERR"

.field public static final ERR_DESC_REQUEST_CANCELLED:Ljava/lang/String; = "REQUEST_CANCELLED_ERR"

.field public static final ERR_DESC_REQUEST_TIMEOUT:Ljava/lang/String; = "REQUEST_TIMEOUT_ERR"

.field public static final ERR_DESC_SERVICE_UNAVAILABLE:Ljava/lang/String; = "SERVICE_UNAVAILABLE_ERR"

.field public static final ERR_DESC_TRYING:Ljava/lang/String; = "TRYING_ERR"

.field public static final ERR_DESC_UNAUTHORIZED:Ljava/lang/String; = "UNAUTHORIZED_ERR"

.field public static final ERR_DESC_UNKNOWN:Ljava/lang/String; = "UNKNOWN_ERR"

.field public static final ERR_DESC_UPLOADFAILED:Ljava/lang/String; = "UPLOAD_ERR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
