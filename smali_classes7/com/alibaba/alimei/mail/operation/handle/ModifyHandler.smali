.class public Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;
.super Ljava/lang/Object;
.source "ModifyHandler.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/operation/handle/OperationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/mail/operation/handle/OperationHandler",
        "<",
        "Lcom/alibaba/alimei/mail/operation/OperationData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModifyHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/operation/OperationData;
    .param p2, "x2"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleResult(Lcom/alibaba/alimei/mail/operation/OperationData;Z)V

    return-void
.end method

.method private handleClearCalendarData(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleClearCalendarData fail for data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 158
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v1

    .line 159
    .local v1, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-eqz v1, :cond_1

    .line 160
    new-instance v2, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$4;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$4;-><init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->removeCalendarAccount(Lxv;)V

    goto :goto_0

    .line 172
    :cond_1
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleClearCalendarData fail for calendarApi is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleClearFolderSynckey(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 79
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleClearFolderSyncKey fail for data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 84
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 85
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-eqz v0, :cond_0

    .line 86
    const-string/jumbo v2, "0"

    new-instance v3, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$1;-><init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->updateFolderSynckey(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method private handleClearLoginModel(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    const-string/jumbo v0, "ModifyHandler"

    const-string/jumbo v1, "handleClearLoginModel fail for data is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    .line 1458
    :try_start_0
    const-string/jumbo v0, "pref_key_mail_login_mode"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lacr;->a(I)V

    .line 1308
    const/4 v0, 0x0

    iput-object v0, v1, Lacr;->c:Labx;

    .line 1309
    invoke-virtual {v1}, Lacr;->p()V

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleResult(Lcom/alibaba/alimei/mail/operation/OperationData;Z)V

    goto :goto_0

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    const-string/jumbo v2, "MultiMailManager"

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private handleClearMailUidCache(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 177
    invoke-static {}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a()V

    .line 178
    invoke-static {}, Lpn;->a()Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;

    move-result-object v0

    .line 179
    .local v0, "mailUidApi":Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;
    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$5;-><init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;->clearUidCache(Lxv;)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const-string/jumbo v1, "ModifyHandler"

    const-string/jumbo v2, "handleClearMailUidCache fail for mailUidApi is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleClearSearchHistory(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleClearSearchHistory fail for data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 204
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lpn;->b(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/search/displayer/MailSearchHistoryDisplayer;->release()V

    .line 205
    invoke-static {v0}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v1

    .line 206
    .local v1, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v1, :cond_1

    .line 207
    new-instance v2, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$6;-><init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->clearHistory(Lxv;)V

    goto :goto_0

    .line 220
    :cond_1
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleClearSearchHistory fail for searchApi is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleClearTagSynckey(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 102
    if-nez p1, :cond_1

    .line 103
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleClearTagSynckey fail for data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 108
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 109
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v2, "0"

    new-instance v3, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$2;-><init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->updateTagSynckey(Ljava/lang/String;Ljava/lang/String;Lxv;)V

    goto :goto_0
.end method

.method private handleRemoveAccount(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleRemoveAccount fail for data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->email:Ljava/lang/String;

    .line 2246
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 133
    .local v0, "accountApi":Lcom/alibaba/alimei/framework/account/AccountApi;
    if-eqz v0, :cond_1

    .line 134
    new-instance v2, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler$3;-><init>(Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;Lcom/alibaba/alimei/mail/operation/OperationData;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 147
    :cond_1
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "handleRemoveAccount fail for accountApi is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleResult(Lcom/alibaba/alimei/mail/operation/OperationData;Z)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;
    .param p2, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 225
    new-instance v0, Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;-><init>()V

    .line 226
    .local v0, "resultModel":Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;
    if-eqz p2, :cond_0

    .line 227
    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;->setResult(Ljava/lang/String;)V

    .line 232
    :goto_0
    invoke-static {}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    move-result-object v1

    invoke-static {v0}, Lcor;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V

    .line 233
    return-void

    .line 229
    :cond_0
    const-string/jumbo v1, "fail"

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/operation/model/result/OpsModifyResultModel;->setResult(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/alibaba/alimei/mail/operation/OperationData;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "modify handle fail for data is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->subOption:Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;

    .line 36
    .local v0, "subOps":Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;
    if-nez v0, :cond_1

    .line 37
    const-string/jumbo v2, "ModifyHandler"

    const-string/jumbo v3, "modify handle fail for subOperation is null"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    iget v1, v0, Lcom/alibaba/alimei/mail/operation/OperationData$SubOperation;->type:I

    .line 42
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearLoginModel(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 47
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearFolderSynckey(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 50
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearTagSynckey(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 53
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleRemoveAccount(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 56
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearCalendarData(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearMailUidCache(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 62
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/operation/handle/ModifyHandler;->handleClearSearchHistory(Lcom/alibaba/alimei/mail/operation/OperationData;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
