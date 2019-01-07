.class Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;
.super Ljava/util/Hashtable;
.source "RecordServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobile/security/faceauth/model/MetaRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;)V
    .locals 8
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->this$0:Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 18
    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-03"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "facevoicestate"

    const-string/jumbo v5, ""

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/16 v0, 0xbb9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "entryBeh"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/16 v0, 0xbba

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150511-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "passBeh"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/16 v0, 0xbbb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-10"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "timeOutBeh"

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/16 v0, 0xbbc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-19"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "returnBeh"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/16 v0, 0xbbd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150511-06"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "exitBeh"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/16 v0, 0xbbe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150511-07"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "zpbhg"

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/16 v0, 0xbbf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150511-08"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "sbzhs"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/16 v0, 0xbc0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150511-09"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "yhklhs"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v0, 0xbc1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "yjyjtiaj"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v0, 0xbc2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-15"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "css"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v0, 0xbc3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-07"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "facemine"

    const-string/jumbo v5, ""

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/16 v0, 0xbc4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150511-13"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "faceupload"

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/16 v0, 0xbc5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-05"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "facedzks"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/16 v0, 0xbc6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-08"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "facedzcg"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v0, 0xbce

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-17"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "faceuploadtoken"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const/16 v0, 0xbd1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150720-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "faceproperty"

    const-string/jumbo v5, ""

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v0, 0xbd2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-151229-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "webnavinfo"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/16 v0, 0xbcf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150720-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "facenavpageexit"

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/16 v0, 0xbd0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150720-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "facenavpagestart"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/16 v0, 0xbc7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-13"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "picScore"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const/16 v0, 0xbc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-14"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "picUpload"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v0, 0xbc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-20"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "SystemCutBeh"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v0, 0xbca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-21"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "exitSDK"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v0, 0xbcb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-22"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "entrySDK"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v0, 0xbcc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-04"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "faceproperty-mirror"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v0, 0xbcd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-150829-06"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "faceproperty-action"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v0, 0xbd3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-151224-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "navUrlLoadFail"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v0, 0xbd4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-RLSB-160118-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "protocolSign"

    const-string/jumbo v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v0, 0xbd5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-160315-01"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "enterGuidePage"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v0, 0xbd6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-160315-02"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "exitGuidePage"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const/16 v0, 0xbd7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-160315-03"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "EnterDetectionComplete"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v0, 0xbd9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-151214-09"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "picUpload"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v0, 0xbd8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-160315-04"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "callbackVerifySystem"

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v0, 0xbda

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;

    const-string/jumbo v1, "UC-YWRLSB-151214-17"

    const-string/jumbo v2, "event"

    const-string/jumbo v3, "20000189"

    const-string/jumbo v4, "entrySDK"

    const-string/jumbo v5, ""

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/security/faceauth/model/MetaRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7, v0}, Lcom/alipay/mobile/security/faceauth/biz/RecordServiceImpl$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method
