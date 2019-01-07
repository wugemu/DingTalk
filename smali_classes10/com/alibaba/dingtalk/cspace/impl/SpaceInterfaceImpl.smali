.class public Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;
.super Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
.source "SpaceInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lgrc;
    .param p3, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p4, "uploadListener"    # Lgqt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 586
    if-nez p4, :cond_0

    .line 661
    :goto_0
    return-void

    .line 590
    :cond_0
    if-nez p2, :cond_1

    .line 592
    const-string/jumbo v0, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "uploadFinalFile2Space"

    const-string/jumbo v2, "uploadFinalFile2Space param is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8080
    :cond_1
    iget-object v0, p2, Lgrc;->d:Ljava/lang/String;

    .line 597
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    const-string/jumbo v0, ""

    sget v1, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "uploadFinalFile2Space"

    const-string/jumbo v2, "uploadFile2Space and localUrl is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9056
    :cond_2
    iget-object v0, p2, Lgrc;->a:Ljava/lang/String;

    .line 604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9112
    iget-object v0, p2, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 604
    if-nez v0, :cond_3

    .line 606
    const-string/jumbo v0, ""

    sget v1, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, v1}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "uploadFinalFile2Space"

    const-string/jumbo v2, "uploadFile2Space and spaceId and targetConersation is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_3
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;

    invoke-direct {v0, p0, p4}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$19;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lgqt;)V

    invoke-static {p3, p2, v0, p1}, Lfzu;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgrc;Lgpe$b;Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lgrc;
    .param p3, "x3"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p4, "x4"    # Lgqt;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "srcUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 2148
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "sdevice_cloud_printer_is_preview_entrance_visiable_for_everyone"

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    .local v0, "previewEnabled":Z
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceInterfaceImpl"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "SpaceInterfaceImpl"

    aput-object v5, v3, v4

    const-string/jumbo v4, " previewEnabled = "

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 2150
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2149
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    if-nez v0, :cond_0

    .line 2152
    invoke-static {p1, p2}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    .line 2188
    :goto_0
    return-void

    .line 2155
    :cond_0
    invoke-static {}, Lgom;->a()Lgom;

    move-result-object v1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    new-instance v4, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;

    invoke-direct {v4, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$10;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Ljava/lang/String;Lcma;)V

    .line 29038
    new-instance v5, Lgom$1;

    invoke-direct {v5, v1, v4}, Lgom$1;-><init>(Lgom;Lcma;)V

    .line 29056
    iget-object v1, v1, Lgom;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CloudPrintIService;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/alibaba/dingtalk/cspace/idl/service/CloudPrintIService;->isUserCanPrint(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 984
    const-wide/16 v2, 0x0

    .line 985
    .local v2, "orgId":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 986
    const-string/jumbo v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 987
    .local v1, "tokens":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 989
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 995
    .end local v1    # "tokens":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 990
    .restart local v1    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ZZ)Lgqy;
    .locals 6
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "readOnly"    # Z
    .param p3, "isCrypt"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 2468
    const-string/jumbo v3, "getHybridEditSupportModel:readOnly=%b,isCrypt=%b,extension=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2469
    invoke-static {p1}, Lgpx;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 2471
    .local v1, "isOnlineEditSupport":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2472
    const-string/jumbo v3, "isOnlineEditSupport=true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2473
    sget-object v2, Lgfg;->a:Lgqy;

    .line 2483
    :goto_1
    return-object v2

    .end local v1    # "isOnlineEditSupport":Z
    :cond_0
    move v1, v2

    .line 2469
    goto :goto_0

    .line 2476
    .restart local v1    # "isOnlineEditSupport":Z
    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lglr;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lgpx;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2477
    .local v0, "isLocalEditSupport":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 2478
    const-string/jumbo v3, "isLocalEditSupport=true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2479
    sget-object v2, Lgfg;->b:Lgqy;

    goto :goto_1

    .end local v0    # "isLocalEditSupport":Z
    :cond_2
    move v0, v2

    .line 2476
    goto :goto_2

    .line 2482
    .restart local v0    # "isLocalEditSupport":Z
    :cond_3
    const-string/jumbo v3, "unsupport"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lgpp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2483
    sget-object v2, Lgfg;->c:Lgqy;

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lgrd;
    .locals 7
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2488
    .line 32021
    if-nez p1, :cond_0

    .line 32022
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 32024
    :cond_0
    new-instance v6, Lgrd;

    invoke-direct {v6}, Lgrd;-><init>()V

    .line 32026
    invoke-static {p1}, Lgoc;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 32027
    invoke-static {v0}, Lgpx;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)I

    move-result v0

    .line 33019
    iput v0, v6, Lgrd;->a:I

    .line 32030
    invoke-static {p1}, Lgqf;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Ljava/lang/String;

    move-result-object v0

    .line 33027
    iput-object v0, v6, Lgrd;->b:Ljava/lang/String;

    .line 33037
    if-nez p1, :cond_1

    .line 33038
    const-string/jumbo v0, ""

    .line 34035
    :goto_1
    iput-object v0, v6, Lgrd;->c:Ljava/lang/String;

    move-object v0, v6

    .line 2488
    goto :goto_0

    .line 33040
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceType:Ljava/lang/String;

    .line 33042
    invoke-static {v1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceName:Ljava/lang/String;

    .line 33044
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->isRootFolder()Z

    move-result v3

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->filePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    .line 33040
    invoke-static/range {v0 .. v5}, Lgpv;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lgrg;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1933
    .line 22656
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 22661
    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return-object v0

    .line 22659
    .restart local p2    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    check-cast p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p2    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 22660
    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 22661
    goto :goto_0

    .line 22663
    :cond_2
    new-instance v1, Lgrg;

    invoke-direct {v1}, Lgrg;-><init>()V

    .line 22664
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 22665
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 23026
    iput-object v2, v1, Lgrg;->b:Ljava/lang/String;

    .line 22666
    const-string/jumbo v2, "https://qr.dingtalk.com/action/messagejump"

    const-string/jumbo v3, "objectId"

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22667
    const-string/jumbo v3, "objectType"

    const-string/jumbo v4, "0"

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22668
    const-string/jumbo v3, "objectContainer"

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22669
    const-string/jumbo v3, "orgId"

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22670
    const-string/jumbo v3, "name"

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/alibaba/doraemon/utils/UrlUtil;->addParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24018
    iput-object v0, v1, Lgrg;->a:Ljava/lang/String;

    move-object v0, v1

    .line 1933
    goto :goto_0
.end method

.method public final a(J)Ljava/lang/String;
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 2282
    invoke-static {p1, p2}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1151
    invoke-static {p1, p2, p3}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "isCrypt"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2117
    const-string/jumbo v1, "https://h5.dingtalk.com/cloudprinter/index.html#/printset?fileType=%1$s&spaceId=%2$s&fileId=%3$s&isEncrypt=%4$s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "1"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    const/4 v3, 0x3

    if-eqz p3, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 4122
    new-instance v0, Lxo;

    invoke-direct {v0}, Lxo;-><init>()V

    .line 4123
    new-instance v1, Lgpp$a;

    invoke-direct {v1}, Lgpp$a;-><init>()V

    .line 5019
    iput-object v1, v0, Lxo;->a:Lyj;

    .line 174
    invoke-static {v0}, Lxn;->a(Lxo;)V

    .line 175
    new-instance v0, Lfzp;

    invoke-direct {v0}, Lfzp;-><init>()V

    invoke-static {v0}, Lxn;->a(Lxx;)V

    .line 176
    new-instance v0, Lgok;

    invoke-direct {v0}, Lgok;-><init>()V

    .line 177
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v0

    const-class v1, Lcom/alibaba/wukong/sync/SyncService;

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/im/context/IMModule;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/sync/SyncService;

    sget-object v1, Lcom/alibaba/wukong/sync/SyncType;->SYNC_A:Lcom/alibaba/wukong/sync/SyncType;

    new-instance v2, Lgol;

    invoke-direct {v2}, Lgol;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wukong/sync/SyncService;->addEventListener(Lcom/alibaba/wukong/sync/SyncType;Lcom/alibaba/wukong/sync/SyncEventListener;)V

    .line 178
    return-void
.end method

.method public final a(JJLcma;)V
    .locals 7
    .param p1, "spaceId"    # J
    .param p3, "fileId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcma",
            "<",
            "Lgrh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2103
    .local p5, "listener":Lcma;, "Lcma<Lgrh;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lgon;->a(JJLcma;)V

    .line 2104
    return-void
.end method

.method public final a(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fileOwnerId"    # J

    .prologue
    .line 2277
    invoke-static {p1, p2, p3}, Lfzu;->a(Landroid/app/Activity;J)V

    .line 2278
    return-void
.end method

.method public final a(Landroid/app/Activity;JLcma;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2354
    .local p4, "apiListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 2355
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_processing_please_wait:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x258

    const/4 v6, 0x0

    move-object v1, p1

    .line 2354
    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    move-result-object v0

    .line 2358
    .local v0, "ddProgressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
    new-instance v6, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;

    invoke-direct {v6, p0, p4, v0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$11;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;)V

    .line 2383
    .local v6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$12;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/app/Activity;JLcma;)V

    .line 2425
    .local v1, "getTeamAlbumlistener":Lcma;, "Lcma<Lgog;>;"
    const-class v2, Lcma;

    invoke-static {v1, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "getTeamAlbumlistener":Lcma;, "Lcma<Lgog;>;"
    check-cast v1, Lcma;

    .line 2426
    .restart local v1    # "getTeamAlbumlistener":Lcma;, "Lcma<Lgog;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    .line 31423
    if-eqz v1, :cond_0

    .line 31427
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_1

    .line 31428
    const-string/jumbo v2, "20170720"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v3}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 31429
    :cond_0
    :goto_0
    return-void

    .line 31432
    :cond_1
    new-instance v3, Lgjr;

    invoke-direct {v3}, Lgjr;-><init>()V

    .line 31433
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lgjr;->a:Ljava/lang/Long;

    .line 31435
    new-instance v4, Lgon$66;

    invoke-direct {v4, v2, v1}, Lgon$66;-><init>(Lgon;Lcma;)V

    .line 31442
    iget-object v2, v2, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getTeamAlbumAppInfo(Lgjr;Liyv;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;JLcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "appid"    # J
    .param p4, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 390
    move-object v1, p1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 391
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    const-string/jumbo v3, "com.workapp.msg.send"

    move-wide v4, p2

    move-object v6, p4

    .line 390
    invoke-static/range {v1 .. v6}, Lfzu;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;)V

    .line 393
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcma;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1241
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$2;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1279
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "orgId"    # J
    .param p5, "messageId"    # J
    .param p7, "conversationId"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super/range {p0 .. p8}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;)V

    .line 321
    invoke-static/range {p7 .. p7}, Lgpt;->b(Ljava/lang/String;)Z

    move-result v10

    .line 322
    .local v10, "isFileHelper":Z
    if-eqz v10, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 5109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide p3

    .line 325
    :cond_0
    move-wide v4, p3

    .line 385
    .local v4, "finalOrgId":J
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-object v6, p1

    move-wide/from16 v7, p5

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLandroid/app/Activity;JLandroid/os/Bundle;)V

    .line 5329
    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5330
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a()V

    .line 5331
    :goto_0
    return-void

    .line 5337
    :cond_1
    new-instance v2, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;

    invoke-direct {v2, v0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a$1;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;)V

    .line 5360
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2493
    if-nez p2, :cond_0

    .line 2494
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 2512
    :goto_0
    return-void

    .line 2497
    :cond_0
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    const-string/jumbo v2, "folder"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2498
    invoke-static {}, Lglr;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2499
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v0

    .line 2500
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 2501
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 2502
    invoke-static {p1, v0, v3, v4}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    goto :goto_0

    .line 2505
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->create()Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    move-result-object v0

    .line 2506
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setSpaceId(Ljava/lang/String;)V

    .line 2507
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setDentryId(Ljava/lang/String;)V

    .line 2508
    invoke-static {p1, v0, v3, v4}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;ZLcma;)V

    goto :goto_0

    .line 2510
    .end local v0    # "args":Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    :cond_2
    invoke-static {p1, p2}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2614
    .local p4, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    new-instance v0, Lglj$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lglj$a;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    invoke-virtual {v0}, Lglj$a;->d()V

    .line 2615
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .prologue
    .line 417
    invoke-static {p1, p2}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V

    .line 418
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    .prologue
    .line 2272
    invoke-static {p1, p2}, Lfzu;->b(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V

    .line 2273
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 289
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$9;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/app/Activity;)V

    invoke-static {p1, p2, v0, v1}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V

    .line 310
    return-void
.end method

.method public final a(Landroid/app/Activity;Lgqz;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "localEditParam"    # Lgqz;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2441
    invoke-static {}, Lgfg;->a()Lgfg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lgfg;->a(Landroid/app/Activity;Lgqz;Lcma;)V

    .line 2442
    return-void
.end method

.method public final a(Landroid/app/Activity;Lgrb;Lcma;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "args"    # Lgrb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lgrb;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2010
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lgfg;->a()Lgfg;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lgfg;->a(Landroid/app/Activity;Lgrb;JLcma;)V

    .line 2011
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;IILcma;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cursor"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "II",
            "Lcma",
            "<",
            "Lchr;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1208
    .line 19037
    .local p5, "listener":Lcma;, "Lcma<Lchr;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19038
    const/4 v0, 0x0

    invoke-static {p5, v0}, Lfzn;->a(Lcma;Ljava/lang/Object;)V

    .line 19039
    :goto_0
    return-void

    .line 19041
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    .line 19042
    new-instance v0, Lfzn$1;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lfzn$1;-><init>(Ljava/lang/String;IILcma;Landroid/app/Activity;)V

    .line 19086
    if-eqz p1, :cond_1

    .line 19087
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v2, Lcma;

    invoke-interface {v1, v0, v2, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19089
    :cond_1
    invoke-virtual {v6, p1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p1, p2, p3}, Lgpr;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    .line 1374
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "localPath"    # Ljava/lang/String;

    .prologue
    .line 1973
    invoke-static {p1, p2, p3}, Lgpr;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "actionFlag"    # Ljava/lang/String;
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "isCopy"    # Z
    .param p5, "max"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 407
    new-instance v0, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;-><init>()V

    .line 408
    .local v0, "param":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    invoke-virtual {v0, p2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setIntentAction(Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setTargetSpaceId(Ljava/lang/String;)V

    .line 410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setCopy(Z)V

    .line 411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setMax(I)V

    .line 412
    invoke-static {p1, v0}, Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V

    .line 413
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcma;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;",
            "Lcma",
            "<",
            "Lcko;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2226
    .local p2, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    .local p4, "listener":Lcma;, "Lcma<Lcko;>;"
    if-nez p4, :cond_0

    .line 2254
    :goto_0
    return-void

    .line 2230
    :cond_0
    new-instance v2, Lcko;

    invoke-direct {v2}, Lcko;-><init>()V

    .line 2231
    .local v2, "permissionCheckResult":Lcko;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2233
    :cond_1
    const/4 v4, 0x1

    .line 30020
    iput-boolean v4, v2, Lcko;->a:Z

    .line 2234
    invoke-interface {p4, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2238
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2240
    .local v3, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2241
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    instance-of v5, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v5, :cond_3

    .line 2245
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 2246
    .local v1, "object":Ljava/lang/Object;
    instance-of v5, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v5, :cond_3

    .line 2250
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2253
    :cond_4
    invoke-static {}, Lgqe;->a()Lgqe;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p3, p4}, Lgqe;->a(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2287
    invoke-static {p1}, Lfzu;->e(Landroid/content/Context;)V

    .line 2288
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 422
    invoke-static {p1, p2, p3}, Lfzu;->b(Landroid/content/Context;J)V

    .line 423
    return-void
.end method

.method public final a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "mode"    # I
    .param p5, "spaceId"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "localPath"    # Ljava/lang/String;
    .param p9, "conversationName"    # Ljava/lang/String;
    .param p10, "needShowDialog"    # Z
    .param p11, "isSpaceAdmin"    # Z
    .param p12, "actionFlag"    # Ljava/lang/String;
    .param p14, "spaceType"    # I
    .param p15, "fromConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1177
    .local p8, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .local p13, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 1179
    .local v8, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1180
    .restart local v8    # "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1181
    .local v16, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static/range {v16 .. v16}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1182
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1185
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v16    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p5

    invoke-static/range {v1 .. v15}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V

    .line 1188
    return-void
.end method

.method public final a(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    .line 1022
    .local v4, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v6, 0x0

    .line 1023
    .local v6, "src":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 1024
    const-string/jumbo v0, "data"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1025
    .restart local v4    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v0, "space_transfer_src"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v1, p1

    move-wide v2, p2

    move-object v5, p5

    move-object v7, p6

    .line 1028
    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1029
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 1047
    invoke-static {p1, p2, p3, p4}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 1048
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Lcma;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "lastMsgTip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v6, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;Lcma;Z)V

    .line 1133
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "downloadUrl"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1041
    invoke-super/range {p0 .. p5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-static {p1, p2, p3, p4, p5}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    .line 1043
    return-void
.end method

.method public final a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "folderId"    # Ljava/lang/String;
    .param p6, "folderName"    # Ljava/lang/String;
    .param p7, "spaceType"    # I
    .param p8, "isAdmin"    # Z

    .prologue
    .line 2297
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2298
    :cond_0
    sget v0, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 2305
    :goto_0
    return-void

    .line 2302
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2303
    .local v6, "pathInfo":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v5, p4

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v14, p7

    invoke-static/range {v1 .. v15}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;JLjava/util/List;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationOrgId"    # J
    .param p5, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-super/range {p0 .. p5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;JLjava/util/List;Landroid/os/Bundle;)V

    .line 1065
    const/4 v6, 0x0

    .line 1066
    .local v6, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1067
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .restart local v6    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1069
    .local v13, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {v13}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v2

    .line 1070
    .local v2, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1073
    .end local v2    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v13    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    const/4 v8, 0x0

    .line 1074
    .local v8, "src":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1075
    .local v9, "statisticKey":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1076
    .local v10, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz p5, :cond_1

    .line 1077
    const-string/jumbo v3, "space_transfer_src"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1078
    const-string/jumbo v3, "space_statistic_key"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1079
    const-string/jumbo v3, "message"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1080
    const-string/jumbo v3, "message"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    .end local v10    # "message":Lcom/alibaba/wukong/im/Message;
    check-cast v10, Lcom/alibaba/wukong/im/Message;

    .line 1083
    .restart local v10    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v12, p5

    invoke-static/range {v3 .. v12}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1084
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1093
    const/4 v1, 0x0

    .line 1094
    .local v1, "modelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v2, 0x0

    .line 1095
    .local v2, "src":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1096
    .local v3, "statisticKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1098
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    const-string/jumbo v4, "data"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1099
    const-string/jumbo v4, "space_transfer_src"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1100
    const-string/jumbo v4, "space_statistic_key"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1101
    const-string/jumbo v4, "message"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1102
    const-string/jumbo v4, "message"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1105
    .restart local v0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    invoke-static {p1, v1, v2, v3, v0}, Lfzu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1106
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "conversationOrgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1115
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 1116
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz p2, :cond_0

    .line 1117
    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .restart local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    move-object v0, p1

    move-wide v2, p3

    move-object v4, p2

    move-object v5, p5

    .line 1119
    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLandroid/os/Bundle;Lcma;)V

    .line 1120
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;Lcma;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1161
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 1163
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const-string/jumbo v2, "data"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1166
    .restart local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const/4 v0, 0x0

    .line 1167
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_0

    .line 1168
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1170
    :cond_0
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V

    .line 1171
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 1137
    invoke-static {p1}, Lfzu;->a(Landroid/content/Context;)V

    .line 1138
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "downloadUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const/4 v1, 0x0

    .line 1012
    .local v1, "src":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1013
    const-string/jumbo v2, "data"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1014
    .restart local v0    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    const-string/jumbo v2, "space_transfer_src"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    :cond_0
    invoke-static {p1, v0, p4, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 1289
    invoke-static {p1, p2}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1290
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "orgId"    # J

    .prologue
    const/4 v5, 0x0

    .line 1033
    if-eqz p2, :cond_0

    .line 1034
    invoke-static {p2}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v4

    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    move-object v1, p1

    move-wide v2, p3

    move-object v6, v5

    move-object v7, v5

    .line 1035
    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1037
    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 198
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 199
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    .line 282
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1625
    if-nez p2, :cond_1

    .line 1626
    if-eqz p3, :cond_0

    .line 1627
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->space_save_param_error:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1632
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1633
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1636
    :try_start_0
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1637
    .local v2, "longSourceSpaceId":Ljava/lang/Long;
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1646
    .local v3, "longFileId":Ljava/lang/Long;
    new-instance v6, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$5;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$5;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 1686
    .local v6, "listener":Lcma;, "Lcma<Lgin;>;"
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 1687
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v4, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-interface {v1, v6, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "listener":Lcma;, "Lcma<Lgin;>;"
    check-cast v6, Lcma;

    .line 1690
    .restart local v6    # "listener":Lcma;, "Lcma<Lgin;>;"
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    invoke-static/range {v0 .. v6}, Lgop;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZZLcma;)V

    goto :goto_0

    .line 1638
    .end local v2    # "longSourceSpaceId":Ljava/lang/Long;
    .end local v3    # "longFileId":Ljava/lang/Long;
    .end local v6    # "listener":Lcma;, "Lcma<Lgin;>;"
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 1639
    .local v7, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1640
    if-eqz p3, :cond_0

    .line 1641
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v4, Lfzs$h;->space_save_param_error:I

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    .prologue
    .line 2257
    invoke-static {p1, p2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    .line 2258
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .prologue
    .line 2267
    invoke-static {p1, p2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V

    .line 2268
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p4, "callback"    # Lcma;

    .prologue
    .line 428
    new-instance v0, Lgli;

    invoke-direct {v0, p1, p2, p3, p4}, Lgli;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V

    .line 429
    .local v0, "forwardManager":Lgli;
    invoke-virtual {v0}, Lgli;->a()V

    .line 430
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;Lcma;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p4, "callback"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v9, 0x67

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 948
    new-instance v0, Lgll;

    invoke-direct {v0, p1, p3, p2, p4}, Lgll;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 14065
    .local v0, "saveMessageManager":Lgll;
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lgll;->c:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_2

    .line 14374
    :cond_0
    iget-object v1, v0, Lgll;->d:Lcma;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lgll;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 14375
    iget-object v1, v0, Lgll;->d:Lcma;

    const-string/jumbo v2, ""

    iget-object v3, v0, Lgll;->a:Landroid/content/Context;

    sget v4, Lfzs$h;->cspace_save_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 14088
    :cond_1
    :goto_0
    return-void

    .line 14069
    :cond_2
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    iput-object v1, v0, Lgll;->e:Lcom/alibaba/wukong/im/MessageContent;

    .line 14070
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    iput-wide v4, v0, Lgll;->h:J

    .line 14071
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    iput-boolean v1, v0, Lgll;->g:Z

    .line 14072
    iget-object v1, v0, Lgll;->e:Lcom/alibaba/wukong/im/MessageContent;

    if-eqz v1, :cond_1

    .line 14073
    iget-object v1, v0, Lgll;->e:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    iput v1, v0, Lgll;->f:I

    .line 14074
    iget v1, v0, Lgll;->f:I

    if-eq v1, v8, :cond_3

    iget v1, v0, Lgll;->f:I

    if-eq v1, v7, :cond_3

    iget v1, v0, Lgll;->f:I

    if-eq v1, v9, :cond_3

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xca

    if-eq v1, v3, :cond_3

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xfb

    if-eq v1, v3, :cond_3

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xfd

    if-eq v1, v3, :cond_3

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xfe

    if-ne v1, v3, :cond_d

    .line 15207
    :cond_3
    iget v1, v0, Lgll;->f:I

    if-eq v1, v7, :cond_4

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xfb

    if-ne v1, v3, :cond_7

    .line 15208
    :cond_4
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1}, Lhcg;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v8

    .line 15209
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/alibaba/wukong/im/MessageContent$ImageContent;

    .line 15210
    if-eqz v5, :cond_13

    .line 15211
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15212
    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->filename()Ljava/lang/String;

    move-result-object v1

    move-object v7, v8

    .line 15238
    :goto_1
    if-eqz v7, :cond_5

    .line 15239
    const-string/jumbo v3, "&from=tfs"

    invoke-static {v7, v1, v3}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15242
    :cond_5
    iget-boolean v1, v0, Lgll;->g:Z

    if-nez v1, :cond_c

    .line 15243
    iget-object v1, v0, Lgll;->a:Landroid/content/Context;

    .line 15244
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v3, v0, Lgll;->i:Ljava/lang/String;

    .line 15243
    invoke-static {v1, v2, v7, v3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 15214
    :cond_6
    invoke-static {v5}, Lgll;->a(Lcom/alibaba/wukong/im/MessageContent$ImageContent;)Ljava/lang/String;

    move-result-object v3

    .line 15215
    iget v1, v0, Lgll;->f:I

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getWidth()I

    move-result v4

    invoke-interface {v5}, Lcom/alibaba/wukong/im/MessageContent$ImageContent;->getHeight()I

    move-result v5

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lgll;->a(ILjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v7, v8

    .line 15218
    goto :goto_1

    :cond_7
    iget v1, v0, Lgll;->f:I

    if-ne v1, v8, :cond_8

    .line 15219
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 15220
    if-eqz v1, :cond_12

    .line 15221
    iget v3, v0, Lgll;->f:I

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileType()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v8, 0x0

    move v7, v6

    invoke-static/range {v3 .. v9}, Lgll;->a(ILjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 15222
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->url()Ljava/lang/String;

    move-result-object v1

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_3
    move-object v7, v3

    .line 15224
    goto :goto_1

    :cond_8
    iget v1, v0, Lgll;->f:I

    if-eq v1, v9, :cond_9

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xfd

    if-ne v1, v3, :cond_a

    .line 15225
    :cond_9
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$VideoContent;

    .line 15226
    if-eqz v1, :cond_11

    .line 15227
    iget v3, v0, Lgll;->f:I

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->fileType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$VideoContent;->size()J

    move-result-wide v8

    move v7, v6

    invoke-static/range {v3 .. v9}, Lgll;->a(ILjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 15228
    iget-object v4, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v4}, Liaf;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    :goto_4
    move-object v7, v3

    .line 15230
    goto/16 :goto_1

    :cond_a
    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xca

    if-eq v1, v3, :cond_b

    iget v1, v0, Lgll;->f:I

    const/16 v3, 0xfe

    if-ne v1, v3, :cond_10

    .line 15231
    :cond_b
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;

    .line 15232
    if-eqz v1, :cond_10

    .line 15233
    iget v3, v0, Lgll;->f:I

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->fileType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$CommonVideoContent;->size()J

    move-result-wide v8

    move v7, v6

    invoke-static/range {v3 .. v9}, Lgll;->a(ILjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object v3

    .line 15234
    iget-object v4, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v4}, Liaf;->a(Lcom/alibaba/wukong/im/MessageContent$MediaContent;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v3

    goto/16 :goto_1

    .line 15247
    :cond_c
    iget-object v3, v0, Lgll;->a:Landroid/content/Context;

    iget-wide v4, v0, Lgll;->h:J

    iget-object v8, v0, Lgll;->i:Ljava/lang/String;

    sget-object v9, Lfzu;->d:Lcma;

    move-object v6, v2

    invoke-static/range {v3 .. v9}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 14082
    :cond_d
    const/16 v1, 0x1f5

    iget v2, v0, Lgll;->f:I

    if-eq v1, v2, :cond_e

    const/16 v1, 0x1f4

    iget v2, v0, Lgll;->f:I

    if-eq v1, v2, :cond_e

    iget v1, v0, Lgll;->f:I

    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_1

    .line 14086
    :cond_e
    iget-object v1, v0, Lgll;->a:Landroid/content/Context;

    invoke-static {v1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 15380
    iget-object v1, v0, Lgll;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lgll;->d:Lcma;

    if-eqz v1, :cond_1

    .line 15381
    iget-object v1, v0, Lgll;->d:Lcma;

    const-string/jumbo v2, ""

    iget-object v3, v0, Lgll;->a:Landroid/content/Context;

    sget v4, Lfzs$h;->network_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 14091
    :cond_f
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v1, :cond_1

    .line 16099
    iget-object v1, v0, Lgll;->b:Lcom/alibaba/wukong/im/Message;

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 16100
    instance-of v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_1

    .line 16101
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 16102
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    .line 16103
    if-eqz v3, :cond_1

    .line 16104
    iget-object v2, v0, Lgll;->a:Landroid/content/Context;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 16105
    new-instance v2, Lgll$1;

    invoke-direct {v2, v0, v3, v1}, Lgll$1;-><init>(Lgll;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-static {v2}, Lfzu;->a(Lgqq;)V

    goto/16 :goto_0

    :cond_10
    move-object v1, v2

    move-object v7, v2

    goto/16 :goto_1

    :cond_11
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_4

    :cond_12
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_3

    :cond_13
    move-object v1, v2

    goto/16 :goto_2
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 514
    invoke-static {p1, p2, p3}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callback"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 559
    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$18;

    invoke-direct {v1, p0, p4}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$18;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;)V

    .line 579
    .local v1, "uploadListener":Lgqt;
    new-instance v0, Lgrc;

    invoke-direct {v0}, Lgrc;-><init>()V

    .line 6116
    .local v0, "param":Lgrc;
    iput-object p2, v0, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 7084
    iput-object p3, v0, Lgrc;->d:Ljava/lang/String;

    .line 582
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V

    .line 583
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "fileUrl"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "callback"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 850
    if-eqz p2, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 851
    :cond_0
    if-eqz p5, :cond_1

    if-eqz p1, :cond_1

    .line 852
    const-string/jumbo v1, ""

    sget v2, Lfzs$h;->alm_cmail_recipeint_status_fail:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    :cond_1
    :goto_0
    return-void

    .line 857
    :cond_2
    move-object/from16 v12, p3

    .line 858
    .local v12, "realUrlTemp":Ljava/lang/String;
    move-object/from16 v11, p3

    .line 859
    .local v11, "realUrl":Ljava/lang/String;
    move-object/from16 v10, p4

    .line 861
    .local v10, "realFileName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v1, "&from=mail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 862
    const/4 v1, 0x0

    const-string/jumbo v2, "&from=mail"

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 863
    const-string/jumbo v1, "&"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 864
    .local v9, "index":I
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 865
    add-int/lit8 v1, v9, 0xa

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 871
    .end local v9    # "index":I
    :cond_3
    :goto_1
    move-object v6, v11

    .line 872
    .local v6, "finalRealUrl":Ljava/lang/String;
    move-object v7, v10

    .line 943
    .local v7, "finalRealFileName":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;

    move-object v2, p0

    move-object/from16 v3, p5

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Lcom/alibaba/wukong/im/Conversation;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13881
    new-instance v2, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;

    invoke-direct {v2, v1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c$1;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;)V

    .line 13903
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$c;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v2}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0

    .line 867
    .end local v6    # "finalRealUrl":Ljava/lang/String;
    .end local v7    # "finalRealFileName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 868
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "callback"    # Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Lcma;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 434
    .local p3, "spaceDos":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    .line 436
    const-string/jumbo v2, ""

    sget v3, Lfzs$h;->send_fail:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$17;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;)V

    .line 497
    .local v0, "onPreTransferListener":Lgln$a;
    new-instance v1, Lgln;

    invoke-direct {v1, p1, p2, p3, p4}, Lgln;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/LinkedList;Lcma;)V

    .line 5446
    .local v1, "spaceTransferManager":Lgln;
    iput-object v0, v1, Lgln;->d:Lgln$a;

    .line 499
    invoke-virtual {v1}, Lgln;->a()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "spaceImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p4, "otherImageMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v2, 0x0

    .line 955
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$20;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$20;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;)V

    .line 974
    .local v0, "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 975
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    const-class v4, Lcma;

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v3, v0, v4, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 978
    .restart local v0    # "callback":Lcma;, "Lcma<Ljava/lang/Void;>;"
    :cond_0
    new-instance v7, Lglk;

    invoke-direct {v7, p1, p2, v0}, Lglk;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 17047
    .local v7, "manager":Lglk;
    iget-object v1, v7, Lglk;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, v7, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_2

    .line 17048
    :cond_1
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "SpaceSaveBatchMessageManager"

    const-string/jumbo v3, "saveBatchImageMessage: mContext or mConversation is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17050
    invoke-virtual {v7}, Lglk;->a()V

    .line 17071
    :goto_0
    return-void

    .line 17054
    :cond_2
    if-nez p3, :cond_5

    move v3, v2

    .line 17055
    :goto_1
    if-nez p4, :cond_6

    move v1, v2

    .line 17056
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    add-int v5, v3, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17058
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 17059
    invoke-virtual {v7, p3, v4}, Lglk;->a(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 17062
    :cond_3
    if-eqz p4, :cond_4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 17063
    invoke-virtual {v7, p4, v4}, Lglk;->b(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 17066
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 17067
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "SpaceSaveBatchMessageManager"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v8, "saveBatchImageMessage: no valid image file messages ! spaceImageMessages.size() = "

    aput-object v8, v6, v2

    const/4 v2, 0x1

    .line 17069
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", otherImageMessages.size() = "

    aput-object v3, v6, v2

    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    .line 17067
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17070
    invoke-virtual {v7}, Lglk;->a()V

    goto :goto_0

    .line 17054
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    move v3, v1

    goto :goto_1

    .line 17055
    :cond_6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    .line 17074
    :cond_7
    iget-object v1, v7, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v5

    .line 17075
    iget-object v1, v7, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 17076
    iget-object v1, v7, Lglk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v6

    .line 17078
    iget-object v1, v7, Lglk;->a:Landroid/content/Context;

    if-eqz v6, :cond_8

    :goto_3
    iget-object v6, v7, Lglk;->c:Lcma;

    if-nez v6, :cond_9

    sget-object v6, Lfzu;->d:Lcma;

    :goto_4
    invoke-static/range {v1 .. v6}, Lfzu;->a(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, 0x0

    goto :goto_3

    :cond_9
    iget-object v6, v7, Lglk;->c:Lcma;

    goto :goto_4
.end method

.method public final a(Landroid/content/Context;Lgrc;Lgqt;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lgrc;
    .param p3, "listener"    # Lgqt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 730
    if-nez p3, :cond_0

    .line 838
    :goto_0
    return-void

    .line 10080
    :cond_0
    iget-object v0, p2, Lgrc;->d:Ljava/lang/String;

    .line 740
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    const-string/jumbo v0, ""

    sget v1, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "uploadFile2Space"

    const-string/jumbo v2, "uploadFile2Space and spaceId is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11056
    :cond_1
    iget-object v0, p2, Lgrc;->a:Ljava/lang/String;

    .line 746
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11112
    iget-object v0, p2, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 746
    if-nez v0, :cond_2

    .line 747
    const-string/jumbo v0, ""

    sget v1, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "uploadFile2Space"

    const-string/jumbo v2, "uploadFile2Space and spaceId and targetConersation is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11120
    :cond_2
    iget-boolean v0, p2, Lgrc;->i:Z

    .line 752
    if-nez v0, :cond_3

    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgqt;)V

    goto :goto_0

    .line 837
    :cond_3
    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lgrc;Lgqt;Landroid/content/Context;)V

    .line 11765
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a:Lgrc;

    .line 12112
    iget-object v2, v0, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 11766
    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;->a:Lgrc;

    .line 13080
    iget-object v0, v0, Lgrc;->d:Ljava/lang/String;

    .line 11766
    invoke-static {v0}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11767
    invoke-static {v3}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xcb

    .line 11770
    :goto_1
    new-instance v4, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;

    invoke-direct {v4, v1, v3, v0}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b$1;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$b;Ljava/lang/String;I)V

    .line 11793
    const/4 v1, 0x1

    invoke-static {v2, v1, v0, v4}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V

    goto :goto_0

    .line 11767
    :cond_4
    const/16 v0, 0x1f6

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shareLink"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2563
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$15;

    invoke-direct {v0, p0, p1, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$15;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/content/Context;Lcma;)V

    .line 2596
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 35040
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35041
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lgon$80;

    invoke-direct {v3, v1, v0}, Lgon$80;-><init>(Lgon;Lcma;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 35047
    :goto_0
    return-void

    .line 35050
    :cond_0
    new-instance v2, Lgju;

    invoke-direct {v2}, Lgju;-><init>()V

    .line 35051
    iput-object p2, v2, Lgju;->a:Ljava/lang/String;

    .line 35052
    const-string/jumbo v3, ""

    iput-object v3, v2, Lgju;->b:Ljava/lang/String;

    .line 35054
    new-instance v3, Lgon$82;

    invoke-direct {v3, v1, v0, p2}, Lgon$82;-><init>(Lgon;Lcma;Ljava/lang/String;)V

    .line 35109
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->infoAclShare(Lgju;Liyv;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-static {p1, p2, p3}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "objectType"    # I
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1794
    const/4 v4, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1795
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "objectType"    # I
    .param p5, "msgId"    # Ljava/lang/String;
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "title"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1799
    invoke-static/range {p1 .. p8}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1800
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1057
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1058
    invoke-static {p1, p2, p3, p4}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1059
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2656
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/16 v1, 0x82

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v0

    .line 2657
    .local v0, "handler":Lgly;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgnb;

    if-nez v1, :cond_1

    .line 2658
    :cond_0
    const-string/jumbo v1, "invalid handler"

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 36120
    .end local v0    # "handler":Lgly;
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 2661
    .restart local v0    # "handler":Lgly;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    check-cast v0, Lgnb;

    .line 36113
    .end local v0    # "handler":Lgly;
    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36114
    :cond_2
    if-eqz p4, :cond_3

    .line 36115
    const-string/jumbo v1, "null param"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 36116
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 36115
    invoke-static {v1, v2, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 36118
    :cond_3
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 36123
    :cond_4
    new-instance v1, Lgnb$1;

    invoke-direct {v1, v0, p1, p4}, Lgnb$1;-><init>(Lgnb;Landroid/content/Context;Lcma;)V

    .line 36151
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 36152
    const-class v2, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v1, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 36154
    :cond_5
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v1}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lgqt;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "callback"    # Lgqt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1569
    if-nez p4, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1573
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1574
    :cond_1
    const-string/jumbo v1, ""

    sget v2, Lfzs$h;->msg_space_upload_failed:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lgqt;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "uploadFile2Space"

    const-string/jumbo v3, "uploadFile2Space and spaceId is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1579
    :cond_2
    new-instance v0, Lgrc;

    invoke-direct {v0}, Lgrc;-><init>()V

    .line 21060
    .local v0, "param":Lgrc;
    iput-object p2, v0, Lgrc;->a:Ljava/lang/String;

    .line 21084
    iput-object p3, v0, Lgrc;->d:Ljava/lang/String;

    .line 1582
    const/4 v1, 0x0

    new-instance v2, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;

    invoke-direct {v2, p0, p4}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$4;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lgqt;)V

    invoke-static {p1, v0, v1, v2}, Lfzu;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "fileUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2451
    new-instance v5, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$13;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$13;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Landroid/content/Context;)V

    .line 2462
    .local v5, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->queryLocalDirtyDentry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lxv;)V

    .line 2463
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "dentryId"    # Ljava/lang/String;
    .param p4, "dentryName"    # Ljava/lang/String;
    .param p5, "dentryExtension"    # Ljava/lang/String;
    .param p6, "enableEdit"    # Z
    .param p7, "newBorn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2745
    .local p8, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V

    .line 2746
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    .line 2015
    if-nez p1, :cond_0

    .line 24755
    :goto_0
    return-void

    .line 2019
    :cond_0
    const-string/jumbo v1, "intent_key_space_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2020
    .local v5, "spaceId":Ljava/lang/String;
    const-string/jumbo v1, "intent_key_file_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2021
    .local v6, "fileId":Ljava/lang/String;
    const-string/jumbo v1, "message_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2022
    .local v8, "msgId":Ljava/lang/String;
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2023
    .local v3, "conversationId":Ljava/lang/String;
    const-string/jumbo v1, "intent_key_space_type"

    const/4 v7, -0x1

    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2024
    .local v4, "spaceType":I
    const-string/jumbo v1, "intent_key_online_edit_modified_by_me"

    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2026
    .local v2, "isModifiedByMe":Z
    if-eqz v2, :cond_1

    .line 2027
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v7, "CommonWebViewActivity"

    const-string/jumbo v9, "cspace_chat_msg_preview_click"

    const/4 v10, 0x0

    invoke-interface {v1, v7, v9, v10}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2030
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$8;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2090
    .local v0, "listener":Lcma;, "Lcma<Lgoe;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 25109
    invoke-static {v5, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 24753
    cmp-long v7, v10, v12

    if-lez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 24754
    :cond_2
    const-string/jumbo v1, "20170720"

    const-string/jumbo v7, "param error"

    invoke-interface {v0, v1, v7}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24758
    :cond_3
    new-instance v7, Lgji;

    invoke-direct {v7}, Lgji;-><init>()V

    .line 26109
    invoke-static {v5, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 24759
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v7, Lgji;->a:Ljava/lang/Long;

    .line 24760
    iput-object v6, v7, Lgji;->b:Ljava/lang/String;

    .line 27109
    invoke-static {v8, v12, v13}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 24761
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v7, Lgji;->f:Ljava/lang/Long;

    .line 24763
    new-instance v9, Lgon$48;

    invoke-direct {v9, v1, v0}, Lgon$48;-><init>(Lgon;Lcma;)V

    .line 24770
    iget-object v1, v1, Lgon;->e:Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;

    invoke-interface {v1, v7, v9}, Lcom/alibaba/dingtalk/cspace/idl/service/OnlineDocIService;->saveOnlineDoc(Lgji;Liyv;)V

    goto/16 :goto_0
.end method

.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2112
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    .line 28067
    if-eqz p1, :cond_0

    .line 28071
    new-instance v1, Lgon$57;

    invoke-direct {v1, v0, p1}, Lgon$57;-><init>(Lgon;Lcma;)V

    .line 28093
    iget-object v0, v0, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v0, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->getTempSpace(Liyv;)V

    .line 2113
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;J)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p3, "chooseAction"    # Ljava/lang/String;
    .param p4, "appId"    # J

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lfzu;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;J)V

    .line 398
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 1620
    invoke-static {}, Lgpc;->a()Lgpc;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    invoke-static {p1}, Lgpc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1621
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcma;)V
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLcma;)V

    .line 1520
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 7
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "listener"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x3

    .line 2707
    const/4 v0, 0x0

    .line 39114
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 39115
    :cond_0
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "AliFileManager"

    const-string/jumbo v3, "sendAliFileToConversation: null param"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39116
    const-string/jumbo v1, "null spaceDo or conversation"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 39117
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 39116
    invoke-static {v1, v2, v0}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 39139
    :goto_0
    return-void

    .line 39121
    :cond_1
    invoke-static {p1}, Lgpx;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 39122
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "AliFileManager"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "sendAliFileToConversation: invalid aliFile"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ", spaceId: "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string/jumbo v4, ", fileId: "

    aput-object v4, v3, v6

    const/4 v4, 0x4

    iget-object v5, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, ", contentType: "

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, ", fileExtension: "

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-object v5, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39128
    const-string/jumbo v1, "invalid aliFile"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 39129
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 39128
    invoke-static {v1, v2, v0}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 39133
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->contentType:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lgla;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    move-result-object v1

    .line 39135
    iget-object v2, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->linkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39136
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "AliFileManager"

    const-string/jumbo v3, "sendAliFileToConversation: null msgDo or linkUrl"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39137
    const-string/jumbo v1, "null msgDo or linkUrl"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 39138
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 39137
    invoke-static {v1, v2, v0}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 39142
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;-><init>()V

    .line 39143
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->linkUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->url:Ljava/lang/String;

    .line 39144
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->title:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->title:Ljava/lang/String;

    .line 39145
    iget-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->content:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->text:Ljava/lang/String;

    .line 39146
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;->iconUrl:Ljava/lang/String;

    iput-object v1, v2, Lcom/alibaba/android/dingtalkim/base/IMInterface$LinkMessageObject;->picUrl:Ljava/lang/String;

    .line 39148
    new-instance v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 39149
    iput v6, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 39150
    iput-object v2, v1, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 39152
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2, p2, v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLcma;)V
    .locals 4
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "isNotifyProgress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1524
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1528
    :cond_0
    new-instance v1, Lgpa;

    invoke-direct {v1}, Lgpa;-><init>()V

    .line 1529
    .local v1, "param":Lgpa;
    iput-object p1, v1, Lgpa;->a:Ljava/lang/Object;

    .line 1530
    iput-boolean p2, v1, Lgpa;->e:Z

    .line 1532
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$3;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$3;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;)V

    .line 1549
    .local v0, "downloadCallback":Lgqr;
    invoke-static {}, Lgpc;->a()Lgpc;

    move-result-object v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lgpc;->a(Landroid/content/Context;Lgpa;Lgqr;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZLgqr;)V
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "isNotifyProgress"    # Z
    .param p3, "callback"    # Lgqr;

    .prologue
    .line 1554
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLgqr;)V

    .line 1555
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLgqr;)V
    .locals 3
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "isNotifyProgress"    # Z
    .param p3, "immediately"    # Z
    .param p4, "callback"    # Lgqr;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1559
    new-instance v0, Lgpa;

    invoke-direct {v0}, Lgpa;-><init>()V

    .line 1560
    .local v0, "param":Lgpa;
    iput-object p1, v0, Lgpa;->a:Ljava/lang/Object;

    .line 1561
    iput-boolean p2, v0, Lgpa;->e:Z

    .line 1562
    iput-boolean p3, v0, Lgpa;->d:Z

    .line 1564
    invoke-static {}, Lgpc;->a()Lgpc;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p4}, Lgpc;->a(Landroid/content/Context;Lgpa;Lgqr;)V

    .line 1565
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2619
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$16;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2639
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2640
    return-void
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1875
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lgpt;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1877
    :cond_0
    if-eqz p3, :cond_1

    .line 1878
    const-string/jumbo v2, "13020005"

    .line 1879
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_conversation_setting_just_org_group:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1878
    invoke-interface {p3, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    :cond_1
    :goto_0
    return-void

    .line 1884
    :cond_2
    new-instance v0, Lcem;

    invoke-direct {v0}, Lcem;-><init>()V

    .line 1885
    .local v0, "orgConversationModel":Lcem;
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcem;->a:Ljava/lang/String;

    .line 1886
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcem;->c:Ljava/util/Map;

    .line 1887
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcem;->b:Ljava/lang/String;

    .line 1889
    new-instance v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$7;

    invoke-direct {v1, p0, p3, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$7;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Ljava/lang/String;)V

    .line 1914
    .local v1, "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lgps;->a(Lcem;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JLcma;)V
    .locals 9
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "totalFileSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcma",
            "<",
            "Lgre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "fileNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "checkListener":Lcma;, "Lcma<Lgre;>;"
    const/4 v3, 0x0

    .line 2692
    invoke-static {}, Lgpe;->a()Lgpe;

    move-result-object v2

    .line 38237
    if-eqz p5, :cond_0

    .line 38240
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "cspace_upload_check_space_size_enable"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38241
    invoke-interface {p5, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 38248
    :cond_0
    :goto_0
    return-void

    .line 38244
    :cond_1
    if-nez p1, :cond_2

    .line 38245
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "UploadProxy"

    const-string/jumbo v2, "checkBeforeUpload: conversation is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38247
    invoke-interface {p5, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 38251
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->f(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v7

    .line 38252
    if-eqz v7, :cond_3

    const/16 v0, 0x1f6

    .line 38255
    :goto_1
    new-instance v1, Lgpe$2;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lgpe$2;-><init>(Lgpe;Ljava/util/List;JLcma;)V

    .line 38278
    invoke-static {p1, v7, v0, v1}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V

    goto :goto_0

    .line 38252
    :cond_3
    const/16 v0, 0x1f4

    goto :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 0
    .param p1, "uploadParams"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p2, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    invoke-static {p1, p2}, Lfzu;->a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V

    .line 846
    return-void
.end method

.method public final a(Lgqq;)V
    .locals 0
    .param p1, "checkAccountLoginListener"    # Lgqq;

    .prologue
    .line 1968
    invoke-static {p1}, Lfzu;->a(Lgqq;)V

    .line 1969
    return-void
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1779
    .local p3, "callback":Lcma;, "Lcma<Lgqw;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    .line 21663
    if-eqz p3, :cond_0

    .line 21667
    new-instance v1, Lgon$19;

    invoke-direct {v1, v0, p3}, Lgon$19;-><init>(Lgon;Lcma;)V

    .line 21680
    iget-object v0, v0, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;->cancelLike(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V

    .line 1780
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 13
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "replayId"    # J
    .param p7, "content"    # Ljava/lang/String;
    .param p8, "msgId"    # Ljava/lang/String;
    .param p9, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1750
    .local p6, "ats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p10, "callback":Lcma;, "Lcma<Lgqw;>;"
    if-nez p10, :cond_0

    .line 1760
    :goto_0
    return-void

    .line 1754
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1755
    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_ding_peg_content_not_null_tip:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p10

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1759
    :cond_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    const-wide/16 v6, 0x0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lgon;->a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Lcma;)V
    .locals 7
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p4, "callback":Lcma;, "Lcma<Lgqw;>;"
    const/4 v4, 0x0

    .line 1764
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1765
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1769
    .local p5, "callback":Lcma;, "Lcma<Lgqw;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1770
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 8
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .param p3, "objectContainerId"    # Ljava/lang/String;
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1774
    .local p6, "callback":Lcma;, "Lcma<Lgqw;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 21634
    if-eqz p6, :cond_0

    .line 21638
    new-instance v0, Lgon$18;

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lgon$18;-><init>(Lgon;ILjava/lang/String;Ljava/lang/String;Lcma;)V

    .line 21656
    iget-object v1, v1, Lgon;->b:Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/dingtalk/cspace/idl/service/CommentIService;->createLikeV1(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 1775
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2143
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, "srcUrl":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->b(Ljava/lang/String;Lcma;)V

    .line 2145
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dentryHostUrl"    # Ljava/lang/String;
    .param p2, "previewHostUrl"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    .line 5102
    iput-object p1, v0, Lgqc;->a:Ljava/lang/String;

    .line 5103
    iput-object p2, v0, Lgqc;->b:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1700
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1702
    new-instance v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$6;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    .local v0, "listener":Lgqq;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    .line 1736
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcma;)V
    .locals 6
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "authFlag"    # Ljava/lang/String;
    .param p4, "conflictType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2528
    .local p5, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-nez p5, :cond_0

    .line 2548
    :goto_0
    return-void

    .line 2531
    :cond_0
    new-instance v3, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;

    invoke-direct {v3, p0, p5}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$14;-><init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;Lcma;)V

    .line 2547
    .local v3, "dentryListener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "mediaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lgra;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2431
    .local p4, "listener":Lcma;, "Lcma<Lgra;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    .line 31522
    if-eqz p4, :cond_1

    .line 31526
    const-string/jumbo v0, "file"

    .line 31528
    invoke-static {p3}, Lgpx;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31529
    const-string/jumbo v0, "video"

    .line 31534
    :cond_0
    :goto_0
    new-instance v6, Lghs;

    invoke-direct {v6}, Lghs;-><init>()V

    .line 31535
    iput-object p1, v6, Lghs;->a:Ljava/lang/String;

    .line 31536
    iput-object p2, v6, Lghs;->b:Ljava/lang/String;

    .line 31537
    iput-object v0, v6, Lghs;->d:Ljava/lang/String;

    .line 31539
    new-instance v0, Lgon$69;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgon$69;-><init>(Lgon;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31573
    iget-object v1, v1, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    invoke-interface {v1, v6, v0}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->playMedia(Lghs;Liyv;)V

    .line 2432
    :cond_1
    return-void

    .line 31530
    :cond_2
    invoke-static {p3}, Lgpx;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31531
    const-string/jumbo v0, "audio"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLcma;)V
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "isCrypt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2122
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2123
    .local v0, "srcUrl":Ljava/lang/String;
    invoke-direct {p0, v0, p4}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->b(Ljava/lang/String;Lcma;)V

    .line 2124
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1228
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-nez p1, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1231
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v1, "dentryModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1233
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {v2}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 1234
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1236
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lgon;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 504
    invoke-static {p1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 1457
    invoke-static {p1, p2}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 509
    invoke-static {p1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 2601
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1294
    invoke-static {p1, p2, p3}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1213
    .line 20035
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lfzt;->a:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 1215
    .local v1, "dentryModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1216
    .local v3, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1217
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1218
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v0}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 1219
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20039
    .end local v0    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v1    # "dentryModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v3    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_1
    sget-object v4, Lfzt;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 20041
    if-eqz v4, :cond_0

    .line 20047
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20048
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1222
    .restart local v1    # "dentryModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .restart local v3    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :cond_2
    return-object v3
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2516
    if-nez p2, :cond_0

    .line 2517
    sget v1, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 2524
    :goto_0
    return-void

    .line 2520
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->create()Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;

    move-result-object v0

    .line 2521
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setSpaceId(Ljava/lang/String;)V

    .line 2522
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->parentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "0"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->setDentryId(Ljava/lang/String;)V

    .line 2523
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;ZLcma;)V

    goto :goto_0

    .line 2522
    :cond_1
    iget-object v1, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->parentId:Ljava/lang/String;

    goto :goto_1
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2644
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lglj$c;

    invoke-direct {v0, p1, p2, p3}, Lglj$c;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    .line 35578
    .local v0, "recaller":Lglj$c;
    iput-object p4, v0, Lglj$c;->b:Lcma;

    .line 2646
    invoke-virtual {v0}, Lglj$c;->d()V

    .line 2647
    return-void
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2739
    .line 40157
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_alidoc_contact_sendmsg_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 40159
    if-eqz p1, :cond_0

    .line 40163
    sget v0, Lfzs$h;->cmail_compose_success:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40164
    sget v0, Lfzs$h;->dt_cspace_jump_to_chat:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 40165
    sget v0, Lfzs$h;->dt_cspace_stay_in_ding_drive:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40166
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceShareSuccessDialog;->show()V

    .line 2740
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orgId"    # J

    .prologue
    .line 1488
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b(Landroid/content/Context;J)V

    .line 1490
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "contact_servewindow_cspace_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1491
    sget v0, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->c:I

    invoke-static {p1, p2, p3, v0}, Lfzu;->a(Landroid/content/Context;JI)V

    .line 1492
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "conversationOrgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 1144
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    check-cast v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1146
    .restart local v1    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLandroid/os/Bundle;Lcma;)V

    .line 1147
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 1695
    invoke-static {p1, p2}, Lfzu;->c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 1696
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2666
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/16 v1, 0x23

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v0

    .line 2667
    .local v0, "handler":Lgly;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgnn;

    if-nez v1, :cond_1

    .line 2668
    :cond_0
    const-string/jumbo v1, "invalid handler"

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 37088
    .end local v0    # "handler":Lgly;
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 2671
    .restart local v0    # "handler":Lgly;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    check-cast v0, Lgnn;

    .line 37081
    .end local v0    # "handler":Lgly;
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37082
    :cond_2
    if-eqz p4, :cond_3

    .line 37083
    const-string/jumbo v1, "null param"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 37084
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 37083
    invoke-static {v1, v2, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 37086
    :cond_3
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    goto :goto_0

    .line 38054
    :cond_4
    new-instance v2, Lgaf$a;

    invoke-direct {v2}, Lgaf$a;-><init>()V

    .line 38067
    iput-object p2, v2, Lgaf$a;->a:Ljava/lang/String;

    .line 38076
    iput-object p3, v2, Lgaf$a;->b:Ljava/lang/String;

    .line 38103
    const/4 v1, 0x1

    iput-boolean v1, v2, Lgaf$a;->d:Z

    .line 38130
    const/4 v1, 0x0

    iput-boolean v1, v2, Lgaf$a;->g:Z

    .line 37096
    new-instance v1, Lgnn$1;

    invoke-direct {v1, v0, p2, p1, p4}, Lgnn$1;-><init>(Lgnn;Ljava/lang/String;Landroid/content/Context;Lcma;)V

    .line 37121
    const-class v3, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v1, v3, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 37122
    invoke-static {v2, v1}, Lgaf;->a(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;ILcma;)V
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Lgqx;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1809
    .local p3, "callback":Lcma;, "Lcma<Lgqx;>;"
    if-nez p3, :cond_0

    .line 1814
    :goto_0
    return-void

    .line 1813
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p3}, Lgon;->b(Ljava/lang/String;ILcma;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "dentryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2718
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2719
    .local v1, "dentryModelList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;-><init>()V

    .line 2720
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSpaceId(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setServerId(Ljava/lang/String;)V

    .line 2722
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2724
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Lgon;->a(Ljava/util/List;Lcma;)V

    .line 2725
    return-void
.end method

.method public final b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z
    .locals 1
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 2697
    invoke-static {p1}, Lgpx;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "orgId"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "isPreview"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2211
    if-eqz p3, :cond_0

    .line 2212
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "sdevice_cloud_printer_is_preview_entrance_visiable_for_everyone"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2214
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Landroid/content/Context;)Z

    move-result v0

    .line 2215
    .local v0, "isCurrentUserOverseas":Z
    if-nez v0, :cond_0

    .line 2217
    invoke-static {p2}, Lgpx;->p(Ljava/lang/String;)Z

    move-result v1

    .line 2221
    .end local v0    # "isCurrentUserOverseas":Z
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl;->m(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2332
    if-nez p1, :cond_0

    .line 2333
    const/4 v0, -0x1

    .line 2344
    :goto_0
    return v0

    .line 2336
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2337
    const/4 v0, 0x5

    goto :goto_0

    .line 2340
    :cond_1
    invoke-static {p1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2341
    const/4 v0, 0x3

    goto :goto_0

    .line 2344
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1983
    invoke-static {p1, p2, p3}, Lgpx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)J
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1284
    invoke-static {p1}, Lfzu;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2676
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/16 v1, 0xa0

    invoke-static {v1}, Lglz;->a(I)Lgly;

    move-result-object v0

    .line 2677
    .local v0, "handler":Lgly;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lgno;

    if-nez v1, :cond_1

    .line 2678
    :cond_0
    const-string/jumbo v1, "invalid handler"

    sget v2, Lfzs$h;->dt_cspace_fail_tip:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 38180
    .end local v0    # "handler":Lgly;
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 2681
    .restart local v0    # "handler":Lgly;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    check-cast v0, Lgno;

    .line 38175
    .end local v0    # "handler":Lgly;
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_previewpage_sendtocontact_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 38177
    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38178
    :cond_2
    const-string/jumbo v1, "null param"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 38179
    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 38178
    invoke-static {v1, v2, p4}, Lgpr;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 38183
    :cond_3
    new-instance v1, Lgno$2;

    invoke-direct {v1, v0, p1, p4}, Lgno$2;-><init>(Lgno;Landroid/content/Context;Lcma;)V

    .line 38205
    const-class v2, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v1, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 38206
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v1}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1515
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    .line 20393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20394
    :cond_0
    :goto_0
    return-void

    .line 20396
    :cond_1
    iget-object v1, v0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    iget-object v0, v0, Lgoj;->c:Lxv;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->deleteLocalCache(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1
    .param p1, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 1378
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfzv;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1978
    invoke-static {p1, p2}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authMediaId"    # Ljava/lang/String;
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;

    .prologue
    .line 2686
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1110
    invoke-static {}, Lfzu;->c()Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1988
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgpx;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final e()Lcma;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    sget-object v0, Lfzu;->d:Lcma;

    return-object v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;
    .locals 2
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2712
    .line 40041
    invoke-static {p3}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40042
    const-string/jumbo v1, "alidoc"

    invoke-static {p1, p2, p3, v0, v1}, Lgla;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/AliFileMsgDo;

    move-result-object v0

    .line 2712
    return-object v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1496
    invoke-static {p1}, Lgpx;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2192
    const-string/jumbo v0, "https://h5.dingtalk.com/cloudprinter/index.html#/printerfilelist?sn=%1$s&serviceId=%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1192
    invoke-static {}, Lglb;->a()Lglb;

    .line 18246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 18034
    invoke-interface {v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 18035
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 18036
    invoke-static {v0}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->clearCache()V

    .line 1193
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1501
    invoke-static {p1}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0xa

    .line 1462
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 1463
    .local v1, "calendar":Ljava/util/Calendar;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1464
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1465
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1466
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 1467
    .local v3, "m":I
    if-ge v3, v6, :cond_0

    .line 1468
    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1471
    :cond_0
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1472
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1473
    .local v2, "day":I
    if-ge v2, v6, :cond_1

    .line 1474
    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1476
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1477
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 1505
    invoke-static {p1}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1918
    const-string/jumbo v0, "_"

    .line 21923
    invoke-static {p1, v0}, Lgpv;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1918
    return-object v0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1482
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->h()V

    .line 1483
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    .line 20340
    iget-object v1, v0, Lfzv;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 20341
    iget-object v1, v0, Lfzv;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20343
    :cond_0
    iget-object v1, v0, Lfzv;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 20344
    iget-object v1, v0, Lfzv;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20346
    :cond_1
    iget-object v1, v0, Lfzv;->c:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 20347
    iget-object v1, v0, Lfzv;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20349
    :cond_2
    iget-object v1, v0, Lfzv;->d:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 20350
    iget-object v1, v0, Lfzv;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20352
    :cond_3
    iget-object v1, v0, Lfzv;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 20353
    iget-object v1, v0, Lfzv;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20355
    :cond_4
    iget-object v1, v0, Lfzv;->f:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 20356
    iget-object v1, v0, Lfzv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20358
    :cond_5
    iget-object v1, v0, Lfzv;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 20359
    iget-object v1, v0, Lfzv;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20360
    :cond_6
    iget-object v1, v0, Lfzv;->i:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 20361
    iget-object v1, v0, Lfzv;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20363
    :cond_7
    iget-object v1, v0, Lfzv;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_8

    .line 20364
    iget-object v1, v0, Lfzv;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 20366
    :cond_8
    iget-object v1, v0, Lfzv;->k:Ljava/util/HashMap;

    if-eqz v1, :cond_9

    .line 20367
    iget-object v0, v0, Lfzv;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1484
    :cond_9
    return-void
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1928
    invoke-static {p1}, Lgpw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2314
    invoke-static {}, Lgpv;->d()V

    .line 2315
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    .line 30619
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceProxy"

    const-string/jumbo v3, "clearAllEncryptDentryLocalCache start"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30620
    iget-object v1, v0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v2, Lgoj$4;

    invoke-direct {v2, v0}, Lgoj$4;-><init>(Lgoj;)V

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->clearAllEncryptDentryLocalCache(Lxv;)V

    .line 2316
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 1300
    return-void
.end method

.method public final j()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2321
    invoke-static {}, Lgpv;->d()V

    .line 2324
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v0

    .line 30637
    const-string/jumbo v1, "CSpace"

    const-string/jumbo v2, "CSpaceProxy"

    const-string/jumbo v3, "clearAllDentryLocalCache start"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30638
    iget-object v1, v0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v2, Lgoj$5;

    invoke-direct {v2, v0}, Lgoj$5;-><init>(Lgoj;)V

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->clearAllDentryLocalCache(Lxv;)V

    .line 2327
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lth;->c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;->deleteRecentOperations(J)I

    .line 2328
    return-void
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 1998
    invoke-static {p1}, Lgpx;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2552
    invoke-static {}, Lgpr;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 2108
    invoke-static {p1}, Lgpx;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2128
    .line 2130
    move-object v1, p1

    .local v1, "mediaIdEncoded":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2132
    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2138
    :cond_0
    :goto_0
    const-string/jumbo v2, "https://h5.dingtalk.com/cloudprinter/index.html#/printset?fileType=%1$s&mediaId=%2$s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "2"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2133
    :catch_0
    move-exception v0

    .line 2134
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public final l()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40051
    const-string/jumbo v2, "pref_key_space_sync_drive_guide_close_clicked"

    invoke-static {v2}, Lcpl;->c(Ljava/lang/String;)Z

    move-result v2

    .line 40052
    const-string/jumbo v3, "isSyncDriveGuideCloseClicked=%b"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lgpp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40054
    invoke-static {}, Lggq;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2729
    goto :goto_0
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40065
    const-string/jumbo v0, "clickSpaceSyncDriveGuide"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lgpp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40066
    const-string/jumbo v0, "pref_key_space_sync_drive_guide_close_clicked"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpl;->a(Ljava/lang/String;Z)V

    .line 2735
    return-void
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 3
    .param p1, "extension"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2197
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_cloud_printer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2199
    const/4 v0, 0x0

    .line 2206
    :goto_0
    return v0

    .line 2202
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "cloud_printer_is_entrance_visiable_for_everyone"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2204
    invoke-static {p1}, Lgpx;->p(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 2206
    :cond_1
    invoke-static {p1}, Lgpr;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final n(Ljava/lang/String;)I
    .locals 1
    .param p1, "spaceTypeServer"    # Ljava/lang/String;

    .prologue
    .line 2292
    invoke-static {p1}, Lgqu;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 2436
    invoke-static {p1}, Lgpx;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final p(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2446
    invoke-static {p1}, Lgoc;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2557
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/impl/statistics/unify/model/FileUnifyStatisticsModel;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 2651
    invoke-static {p1}, Lgow;->a(Ljava/lang/String;)V

    .line 2652
    return-void
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2702
    invoke-static {p1}, Lgpx;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgpx;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
