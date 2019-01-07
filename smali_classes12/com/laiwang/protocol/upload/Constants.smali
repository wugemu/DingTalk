.class public Lcom/laiwang/protocol/upload/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/protocol/upload/Constants$a;,
        Lcom/laiwang/protocol/upload/Constants$b;
    }
.end annotation


# static fields
.field public static final AUTH_MEDIA_ID:Ljava/lang/String; = "up-auth-media"

.field public static final MEDIA_ID:Ljava/lang/String; = "up-media"

.field public static final PENDING_BUF_SIZE:I = 0x100000

.field public static final PENDING_FILE_SIZE:I = 0x3

.field public static final UPLOAD_BEGIN:Ljava/lang/String; = "/up/pre"

.field public static final UPLOAD_BEGIN_NG:Ljava/lang/String; = "/r/FileUpload/pre"

.field public static final UPLOAD_COMMIT:Ljava/lang/String; = "/up/ci"

.field public static final UPLOAD_COMMIT_NG:Ljava/lang/String; = "/r/FileUpload/ci"

.field public static final UPLOAD_EXECUTE:Ljava/lang/String; = "/up/frag"

.field public static final UPLOAD_EXECUTE_NG:Ljava/lang/String; = "/r/FileUpload/frag"

.field public static final UPLOAD_ID:Ljava/lang/String; = "upId"

.field public static final UPLOAD_ROLLBACK:Ljava/lang/String; = "/up/abt"

.field public static final UPLOAD_START_ID:Ljava/lang/String; = "-1"

.field public static final UP_EXPIRED_TIME:Ljava/lang/String; = "up-expired-time"

.field public static final UP_IP:Ljava/lang/String; = "uip"

.field public static final UP_NET:Ljava/lang/String; = "net-type"

.field public static final UP_REQUEST:Ljava/lang/String; = "up-req"

.field public static final UP_RESPONSE:Ljava/lang/String; = "up-resp"

.field public static final UP_VERSION:Ljava/lang/String; = "up-ver"

.field public static final URI:Ljava/lang/String; = "up-uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method
