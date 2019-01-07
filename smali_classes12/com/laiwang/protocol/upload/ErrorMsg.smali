.class public interface abstract Lcom/laiwang/protocol/upload/ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;,
        Lcom/laiwang/protocol/upload/ErrorMsg$Code;
    }
.end annotation


# static fields
.field public static final CHECKSUM_NOT_MATCH:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final CLIENT_INTERRUPT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final FILE_READ_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final FILE_SIZE_ZERO:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final LWP_NETWORK_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final NG_UPLOAD_INVALID:Ljava/lang/String; = "4004"

.field public static final NG_UPLOAD_RETRY:Ljava/lang/String; = "5000"

.field public static final UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final UNSUPPORT_FILE_FORMAT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final UPLOAD_CANCEL:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final UPLOAD_PARAMETER_EMPTY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final UPLOAD_RETRY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final UPLOAD_SERVER_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

.field public static final UPLOAD_TIMEOUT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$1;

    const v1, 0x9c41

    const-string/jumbo v2, "File not found"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$1;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_NOT_FOUND:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 16
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$2;

    const v1, 0x9c42

    const-string/jumbo v2, "File size zero"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$2;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_SIZE_ZERO:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 17
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$3;

    const v1, 0x9c43

    const-string/jumbo v2, "Upload parameter empty"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$3;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_PARAMETER_EMPTY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 18
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$4;

    const v1, 0x9c45

    const-string/jumbo v2, "Upload timeout"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$4;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_TIMEOUT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 19
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$5;

    const v1, 0x9c46

    const-string/jumbo v2, "LWP protocol network error"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$5;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->LWP_NETWORK_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 20
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$6;

    const v1, 0x9c47

    const-string/jumbo v2, "Upload server error"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$6;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_SERVER_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 21
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$7;

    const v1, 0x9c48

    const-string/jumbo v2, "File checksum not match"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$7;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->CHECKSUM_NOT_MATCH:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 22
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$8;

    const v1, 0x9c49

    const-string/jumbo v2, "Client interrupt upload"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$8;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->CLIENT_INTERRUPT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 23
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$9;

    const v1, 0x9c4a

    const-string/jumbo v2, "File read error"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$9;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->FILE_READ_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 24
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$10;

    const v1, 0x9c4b

    const-string/jumbo v2, "Unsupport file error"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$10;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UNSUPPORT_FILE_FORMAT:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 25
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$11;

    const v1, 0x9c4c

    const-string/jumbo v2, "upload cancel"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$11;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_CANCEL:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 26
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$12;

    const v1, 0x9c4d

    const-string/jumbo v2, "upload retry"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$12;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UPLOAD_RETRY:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    .line 27
    new-instance v0, Lcom/laiwang/protocol/upload/ErrorMsg$13;

    const v1, 0x9c54

    const-string/jumbo v2, "Unknown error"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/upload/ErrorMsg$13;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/laiwang/protocol/upload/ErrorMsg;->UNKNOWN_ERROR:Lcom/laiwang/protocol/upload/ErrorMsg$EStatus;

    return-void
.end method
