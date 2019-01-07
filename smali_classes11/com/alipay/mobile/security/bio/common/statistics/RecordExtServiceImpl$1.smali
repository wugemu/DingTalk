.class Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;
.super Ljava/util/Hashtable;
.source "RecordExtServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;",
        "Lcom/alipay/mobile/security/bio/common/record/MetaRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;)V
    .locals 7
    .param p1, "this$0"    # Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;

    .prologue
    const/4 v5, 0x1

    .line 18
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->this$0:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 21
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTRY_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcEntrySDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_GET_PARAM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcGetParameters"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTRY_CERT_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcEntryCertSDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTER_H5_PAGE:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-04"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcEnterH5Page"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_EXIT_H5_PAGE:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-05"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcExitH5Page"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_DEVICE_CHECK_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-07"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcDeviceCheckStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_DEVICE_CHECK_END:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-08"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcDeviceCheckEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ALERT_APPEAR:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-09"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcAlertAppear"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ALERT_CHOOSE:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-10"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcAlertChoose"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTER_DETECTION_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-11"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcEnterDetectionStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTER_DETECTION_END:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-12"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcEnterDetectionEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CERT_CHECK_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-13"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCertCheckStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CERT_CHECK_END:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-14"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCertCheckEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CLICK_BUTTON:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-15"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcClickButton"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CERT_QUALITY_ALERT_APPEAR:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-18"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCertQualityAlertAppear"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CERT_QUALITY_ALERT_CHOOSE:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-19"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCertQualityAlertChoose"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_UPLOAD_CERT_AVARRIABLE:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-20"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcUploadCertAvailable"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_UPLOAD_CERT_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-21"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcUploadCertStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_UPLOAD_CERT_END:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-22"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcUploadCertEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CERT_GET_SERVER_RESULT:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-23"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCertGetServerResult"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_ENTER_CERT_BACK_FILL:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-24"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcEnterCertBackfill"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_EXIT_CERT_BACK_FILL_ERROR:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-25"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcExitCertBackfillError"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_EXIT_CERT_BACK_FILL_NORMAL:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-26"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcExitCertBackfillNormal"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CERT_CALL_BACK_BIS_SYSTEM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-27"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCertCallbackBisSystem"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_EXIT_CERT_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-28"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcExitCertSDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_FACE_GET_SERVER_RESULT:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-29"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcFaceGetServerResult"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_FACE_CMPR_CERT_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-30"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcFaceCmprCertStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_FACE_CALL_BACK_BIS_SYSTEM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-31"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcFaceCallbackBisSystem"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_CALL_BACK_VERITY_SYSTEM:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-32"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcCallbackVeritySystem"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_FC_EXIT_SDK:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-33"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "fcExitSDK"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_HANDLE_PROTOCOL_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-34"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "handleProtocolStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->RECORD_HANDLE_PROTOCOL_END:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-35"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "handleProtocolEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->ALGORITHM_RESULT:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-36"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "algorithmResult"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->COMPRESS_CERT_START:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-37"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "compressCertStart"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v6, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;->COMPRESS_CERT_END:Lcom/alipay/mobile/security/bio/common/statistics/RecordExtAction;

    new-instance v0, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;

    const-string/jumbo v1, "UC-RZHY-170118-37"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "compressCertEnd"

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/bio/common/record/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/bio/common/statistics/RecordExtServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method
