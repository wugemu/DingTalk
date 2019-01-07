.class public final Lpp;
.super Ljava/lang/Object;
.source "AlimeiAdapterSDK.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lpp;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/MailApi;

    return-object v0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
    .locals 1
    .param p0, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 68
    new-instance v0, Lcom/alibaba/alimei/adpater/display/CommonDefaultMailDisplayer;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/adpater/display/CommonDefaultMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    return-object v0
.end method

.method public static a()Lpq;
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-string/jumbo v1, ""

    const-class v2, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lpq;

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJJ)V
    .locals 9
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "accountId"    # J
    .param p3, "uid"    # J
    .param p5, "folderId"    # J

    .prologue
    .line 117
    new-instance v0, Lpv;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lpv;-><init>(Ljava/lang/String;JJJ)V

    .line 118
    .local v0, "model":Lpv;
    invoke-static {}, Lpx;->a()Lpx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lpx;->a(Lpv;)V

    .line 119
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 5
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 97
    invoke-static {p0}, Lpr;->a(Ljava/lang/String;)Lpr;

    move-result-object v0

    .line 1099
    new-instance v1, Lyc;

    const-string/jumbo v2, "basic_AttachmentDownload"

    iget-object v3, v0, Lpr;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Lpr;->b:Lyc;

    .line 1100
    iget-object v1, v0, Lpr;->b:Lyc;

    iput-object p1, v1, Lyc;->g:Ljava/lang/Object;

    .line 1101
    iget-object v1, v0, Lpr;->c:Lya;

    iget-object v2, v0, Lpr;->b:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 1103
    if-nez p1, :cond_0

    .line 1104
    iget-object v1, v0, Lpr;->b:Lyc;

    const/4 v2, 0x2

    iput v2, v1, Lyc;->c:I

    .line 1105
    iget-object v1, v0, Lpr;->c:Lya;

    iget-object v0, v0, Lpr;->b:Lyc;

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 1106
    :goto_0
    return-void

    .line 1109
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->HIGH:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v1}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v1

    new-instance v2, Lpr$1;

    invoke-direct {v2, v0, p0, p1}, Lpr$1;-><init>(Lpr;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    invoke-interface {v1, v2}, Laie;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 8
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "payload"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 156
    const-string/jumbo v0, "null"

    .line 157
    .local v0, "encodeEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-static {p0}, Lyw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    const-string/jumbo v1, "AlimeiAdapterSDK"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "push --> common account "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lqh;->a()Lqh;

    move-result-object v2

    invoke-static {}, Lxn;->b()Landroid/content/Context;

    .line 4290
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 4291
    if-eqz v1, :cond_2

    .line 4292
    invoke-interface {v1, p0}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasLogin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4293
    const-string/jumbo v1, "CommonAccountPushDispatcher"

    const-string/jumbo v2, "push --> dispatch but account not login"

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    :cond_1
    :goto_0
    return-void

    .line 4298
    :cond_2
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 4299
    const-string/jumbo v3, "data"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 4301
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 4302
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 4303
    invoke-static {v1, v3}, Lcom/alibaba/alimei/sdk/push/data/PushData;->parsePushData(Ljava/lang/String;Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/sdk/push/data/PushData;

    move-result-object v1

    .line 4304
    instance-of v3, v1, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    if-eqz v3, :cond_1

    .line 4305
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4306
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4308
    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    .line 4309
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;->getFolders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;

    .line 4310
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderImapPath()Ljava/lang/String;

    move-result-object v6

    .line 4311
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 4313
    invoke-virtual {v2, v6}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4314
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4315
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4319
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderType()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_3

    .line 4320
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/push/data/ChangedFolders$ChangedFolder;->getFolderType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4324
    :cond_5
    invoke-virtual {v2, p0, v4, v3}, Lqh;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4325
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 4326
    invoke-virtual {v2, p0, v4}, Lqh;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 4328
    :cond_6
    invoke-virtual {v2, p0, v3}, Lqh;->b(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static a(Lps;)V
    .locals 1
    .param p0, "parser"    # Lps;

    .prologue
    .line 138
    const-string/jumbo v0, "default"

    invoke-static {v0}, Lpr;->a(Ljava/lang/String;)Lpr;

    .line 3090
    sput-object p0, Lqq;->d:Lps;

    .line 139
    return-void
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "enableEml"    # Z

    .prologue
    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lpp;->a:Z

    .line 143
    invoke-static {}, Lpx;->a()Lpx;

    move-result-object v0

    sget-boolean v1, Lpp;->a:Z

    .line 4055
    iput-boolean v1, v0, Lpx;->a:Z

    .line 144
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/adpater/api/impl/CommonFolderApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/FolderApi;

    return-object v0
.end method

.method public static b(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
    .locals 1
    .param p0, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 72
    new-instance v0, Lcom/alibaba/alimei/adpater/display/CommonTiledMailDisplayer;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/adpater/display/CommonTiledMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lpw;->a()Lpw;

    move-result-object v0

    invoke-virtual {v0}, Lpw;->b()V

    .line 151
    invoke-static {}, Lqa;->a()Lqa;

    move-result-object v0

    invoke-virtual {v0}, Lqa;->b()V

    .line 152
    invoke-static {}, Lpu;->a()Lpu;

    move-result-object v0

    invoke-virtual {v0}, Lpu;->b()V

    .line 153
    return-void
.end method

.method public static b(Ljava/lang/String;JJJ)V
    .locals 9
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "accountId"    # J
    .param p3, "uid"    # J
    .param p5, "folderId"    # J

    .prologue
    .line 129
    new-instance v0, Lpt;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lpt;-><init>(Ljava/lang/String;JJJ)V

    .line 130
    .local v0, "model":Lpt;
    invoke-static {p0}, Lpr;->a(Ljava/lang/String;)Lpr;

    .line 2094
    new-instance v1, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;

    invoke-direct {v1, v0}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;-><init>(Lpt;)V

    .line 2095
    invoke-virtual {v1}, Lcom/alibaba/alimei/adpater/task/cmmd/FetchCalendarCommand;->executeCommand()V

    .line 131
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/alibaba/alimei/adpater/display/CommonFolderDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/alibaba/alimei/adpater/display/CommonFolderDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/adpater/display/CommonFolderDisplayer;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/alibaba/alimei/adpater/display/CommonMailProxyDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/alimei/adpater/display/CommonTagDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    return-object v0
.end method
