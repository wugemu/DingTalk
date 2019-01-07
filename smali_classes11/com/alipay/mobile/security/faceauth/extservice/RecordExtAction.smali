.class public final enum Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;
.super Ljava/lang/Enum;
.source "RecordExtAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_ALERT_APPEAR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_ALERT_CHOOSE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_BIG_PIC_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_CALLBACK_VERIFY_SYSTEM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_CLICK_START_CAPTURE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_DEVICE_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_DEV_TECH_SEED:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_ENTER_DETECTION_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_ENTER_DETECTION_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_ENTER_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_ENTRY_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_EXIT_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_EYE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_FACE_ALGORITHM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_FACE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_LOAD_ALG_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_NOTICE_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_POSE_CHECK_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_POSE_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_POSE_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_SENSOR_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_UPLOAD_AVARRIABLE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_UPLOAD_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

.field public static final enum RECORD_UPLOAD_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_ENTRY_SDK"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTRY_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 6
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_EXIT_SDK"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 7
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_ENTER_GUIDE_PAGE"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 8
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_EXIT_GUIDE_PAGE"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 9
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_DEV_TECH_SEED"

    invoke-direct {v0, v1, v7}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEV_TECH_SEED:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 10
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_CLICK_START_CAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CLICK_START_CAPTURE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 11
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_DEVICE_ERR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEVICE_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 12
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_LOAD_ALG_ERR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LOAD_ALG_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 13
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_ENTER_DETECTION_START"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 14
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_ENTER_DETECTION_END"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 15
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_DETECT_COND_START"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 16
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_DETECT_COND_END"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 17
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_POSE_START"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 18
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_POSE_END"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 19
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_LIVE_BODY_START"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 20
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_LIVE_BODY_END"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 21
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_UPLOAD_START"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 22
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_UPLOAD_END"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 23
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_FACE_SLICE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 24
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_EYE_SLICE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EYE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 25
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_SENSOR_SLICE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_SENSOR_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 26
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_ALERT_APPEAR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_APPEAR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 27
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_ALERT_CHOOSE"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_CHOOSE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 28
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_NOTICE_EXIT_SDK"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_NOTICE_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 29
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_CALLBACK_VERIFY_SYSTEM"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CALLBACK_VERIFY_SYSTEM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 30
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 31
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_UPLOAD_AVARRIABLE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_AVARRIABLE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 32
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_BIG_PIC_SLICE"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_BIG_PIC_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 33
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_FACE_ALGORITHM"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_ALGORITHM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 34
    new-instance v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    const-string/jumbo v1, "RECORD_POSE_CHECK_END"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_CHECK_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    .line 4
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTRY_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEV_TECH_SEED:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CLICK_START_CAPTURE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEVICE_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LOAD_ALG_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EYE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_SENSOR_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_APPEAR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_CHOOSE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_NOTICE_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CALLBACK_VERIFY_SYSTEM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_AVARRIABLE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_BIG_PIC_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_ALGORITHM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_CHECK_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->$VALUES:[Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->$VALUES:[Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v0}, [Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    return-object v0
.end method
