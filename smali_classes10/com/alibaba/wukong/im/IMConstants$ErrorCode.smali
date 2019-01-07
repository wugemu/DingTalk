.class public Lcom/alibaba/wukong/im/IMConstants$ErrorCode;
.super Lcom/alibaba/wukong/WKConstants$ErrorCode;
.source "IMConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/IMConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorCode"
.end annotation


# static fields
.field public static final ERR_CODE_AT_ALL_RESTRICTED:Ljava/lang/String; = "400004"

.field public static final ERR_CODE_COMPRESS_FAILED:Ljava/lang/String; = "101020"

.field public static final ERR_CODE_DISBAND:Ljava/lang/String; = "130012"

.field public static final ERR_CODE_FORBIDDEN:Ljava/lang/String; = "130015"

.field public static final ERR_CODE_FORBIDDEN0:Ljava/lang/String; = "130100"

.field public static final ERR_CODE_FREQUENT:Ljava/lang/String; = "130101"

.field public static final ERR_CODE_KICKED_OFF:Ljava/lang/String; = "130003"

.field public static final ERR_CODE_MSG_DECRYPT_FAIL:Ljava/lang/String; = "130102"

.field public static final ERR_CODE_MSG_NOT_EXIST:Ljava/lang/String; = "130011"

.field public static final ERR_CODE_MSG_NOT_EXIST0:Ljava/lang/String; = "130001"

.field public static final ERR_CODE_SAVE_DECRYPT_MSG_FAIL:Ljava/lang/String; = "130103"

.field public static final ERR_CODE_VIDEO_TOO_LARGE:Ljava/lang/String; = "101021"

.field public static final ERR_DESC_COMPRESS_FAILED:Ljava/lang/String; = "COMPRESS_FAILED"

.field public static final ERR_DESC_FORBIDDEN:Ljava/lang/String; = "FORBIDDEN_ERR"

.field public static final ERR_DESC_FREQUENT:Ljava/lang/String; = "FREQUENT_ERR"

.field public static final ERR_DESC_MSG_DECRYPT_FAIL:Ljava/lang/String; = "DECRYPT_FAIL"

.field public static final ERR_DESC_MSG_NOT_EXIST:Ljava/lang/String; = "FORWARD_MSG_ERR"

.field public static final ERR_DESC_SAVE_DECRYPT_MSG_FAIL:Ljava/lang/String; = "SAVE_DECRYPT_MSG_FAIL"

.field public static final ERR_DESC_VIDEO_TOO_LARGE:Ljava/lang/String; = "VIDEO_TOO_LARGE"


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/im/IMConstants;


# direct methods
.method public constructor <init>(Lcom/alibaba/wukong/im/IMConstants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/IMConstants;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/wukong/im/IMConstants$ErrorCode;->this$0:Lcom/alibaba/wukong/im/IMConstants;

    invoke-direct {p0}, Lcom/alibaba/wukong/WKConstants$ErrorCode;-><init>()V

    return-void
.end method
