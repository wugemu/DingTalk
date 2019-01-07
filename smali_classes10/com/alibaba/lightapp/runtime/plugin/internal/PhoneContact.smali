.class public Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "PhoneContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;
    }
.end annotation


# instance fields
.field private final PERMISSION_DENY:Ljava/lang/String;

.field private final PERMISSION_GRANT:Ljava/lang/String;

.field private final PERMISSION_HAS:Ljava/lang/String;

.field private final PERMISSION_NEVER_ASK:Ljava/lang/String;

.field private final TRACE_MODULE:Ljava/lang/String;

.field private mAddCallbackId:Ljava/lang/String;

.field private mAvatarUrlDownloadSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneContactEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchi;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 42
    const-string/jumbo v0, "phonecontact"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->TRACE_MODULE:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->PERMISSION_HAS:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "2"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->PERMISSION_GRANT:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "3"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->PERMISSION_DENY:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "4"

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->PERMISSION_NEVER_ASK:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAvatarUrlDownloadSet:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mPhoneContactEntries:Ljava/util/List;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mPhoneContactEntries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAvatarUrlDownloadSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.WRITE_CONTACTS"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v8

    const-string/jumbo v9, "SmartWork"

    const-string/jumbo v10, "addContact"

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v8, v9, v10, v12, v13}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 72
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x3

    const-string/jumbo v11, "invocation is limited"

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 121
    :goto_0
    return-object v8

    .line 76
    :cond_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;

    .line 79
    :try_start_0
    iget-object v8, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v9, "phoneContacts"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 80
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_5

    .line 81
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mPhoneContactEntries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 82
    const/4 v1, 0x1

    .line 83
    .local v1, "callbackImmediately":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 84
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 85
    .local v6, "jsonObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 88
    new-instance v7, Lchi;

    invoke-direct {v7}, Lchi;-><init>()V

    .line 89
    .local v7, "localContactNewObject":Lchi;
    const-string/jumbo v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lchi;->a:Ljava/lang/String;

    .line 90
    const-string/jumbo v8, "phones"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lcoo;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v7, Lchi;->b:Ljava/util/List;

    .line 91
    iget-object v8, v7, Lchi;->a:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v7, Lchi;->b:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, v7, Lchi;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 92
    :cond_1
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "callbackImmediately":Z
    .end local v3    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "localContactNewObject":Lchi;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v10, 0x2

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "callbackImmediately":Z
    .restart local v3    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "localContactNewObject":Lchi;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "avatar"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "avatarUrl":Ljava/lang/String;
    iput-object v0, v7, Lchi;->d:Ljava/lang/String;

    .line 96
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mPhoneContactEntries:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 98
    const/4 v1, 0x0

    .line 99
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAvatarUrlDownloadSet:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 100
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAvatarUrlDownloadSet:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v0    # "avatarUrl":Ljava/lang/String;
    .end local v7    # "localContactNewObject":Lchi;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 104
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    if-eqz v1, :cond_6

    .line 105
    new-instance v8, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v9, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v10, ""

    invoke-direct {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 106
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .end local v1    # "callbackImmediately":Z
    .end local v3    # "i":I
    :cond_5
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v8

    goto/16 :goto_0

    .line 108
    .restart local v1    # "callbackImmediately":Z
    .restart local v3    # "i":I
    :cond_6
    :try_start_2
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAvatarUrlDownloadSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .restart local v0    # "avatarUrl":Ljava/lang/String;
    const-string/jumbo v9, "REQUEST"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/request/Request;

    .line 110
    .local v4, "imageRequest":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v4, v0}, Lcom/alibaba/doraemon/request/Request;->setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v9

    invoke-interface {v9, v0}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v9

    sget-object v10, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    .line 111
    invoke-interface {v9, v10}, Lcom/alibaba/doraemon/request/Request;->setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v9

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mResponseReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    invoke-interface {v9, v10}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 112
    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Request;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public checkPermissionAndUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 126
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 128
    .local v0, "callbackId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->getContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string/jumbo v1, "phonecontact"

    const-string/jumbo v2, "PhoneContact"

    const-string/jumbo v3, "checkPermissionAndUpload and has permission already, the followed is to upload contact"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e()V

    .line 131
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-object v1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 135
    const-string/jumbo v1, "phonecontact"

    const-string/jumbo v2, "PhoneContact"

    const-string/jumbo v3, "checkPermissionAndUpload and context not activity"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "inner error"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v5

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v3}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    .line 163
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mResponseReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    .line 58
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mAddCallbackId:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->mResponseReceiver:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    .line 65
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 66
    return-void
.end method
