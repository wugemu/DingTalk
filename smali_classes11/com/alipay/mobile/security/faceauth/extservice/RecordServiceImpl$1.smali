.class Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;
.super Ljava/util/Hashtable;
.source "RecordServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;",
        "Lcom/alipay/mobile/security/bio/common/record/MetaRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;)V
    .locals 7
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;

    .prologue
    const/4 v5, 0x1

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->this$0:Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 23
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTRY_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "entrySDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "enterGuidePage"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "exitGuidePage"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEV_TECH_SEED:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fromH5"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CLICK_START_CAPTURE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-04"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "clickStartCapture"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DEVICE_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-05"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "deviceErr"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LOAD_ALG_ERR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-06"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "loadAlgorithmErr"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-07"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "EnterDetectionStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ENTER_DETECTION_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-08"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "EnterDetectionEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-09"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "detectCondStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_DETECT_COND_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-10"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "detectCondEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-11"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "poseStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-12"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "poseEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-13"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "livebodyStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_LIVE_BODY_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-14"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "livebodyEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_START:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-15"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "uploadStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-16"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "uploadEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_GUIDE_PAGE_PROMPT_COPY_POINT:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-17"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "promptCopyPoint"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-18"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "faceSlice"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EYE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-19"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "eyeSlice"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_SENSOR_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-20"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "sensorSlice"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_APPEAR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-21"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "AlertAppear"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_CHOOSE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-22"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "AlertChoose"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_CALLBACK_VERIFY_SYSTEM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-23"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "callbackVerifySystem"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_NOTICE_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-26"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "noticeExitSDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_EXIT_SDK:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-24"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "exitSDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_UPLOAD_AVARRIABLE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-25"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "uploadAvarriable"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_BIG_PIC_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-26"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "bigPicSlice"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_ALGORITHM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-27"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "Algorithm"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v6, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_POSE_CHECK_END:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-161114-28"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "poseCheckEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method
