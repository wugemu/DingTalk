.class final Lxl$5;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "AccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxl;->queryAccountSetting(Ljava/lang/String;Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Lcom/alibaba/alimei/framework/model/AccountSettingModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lxl;


# direct methods
.method constructor <init>(Lxl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lxl;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 633
    iput-object p1, p0, Lxl$5;->a:Lxl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 10
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 637
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/framework/db/Account;

    const-string/jumbo v6, "almfwork.db"

    const-string/jumbo v7, "account"

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v6, "signature"

    aput-object v6, v3, v5

    const-string/jumbo v6, "autoViewPicType"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    const-string/jumbo v7, "forwardWithAttach"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "notifyMailOn"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "notifyCalendarOn"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "notifyCallOn"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "audioEnableType"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "senderAddress"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "autoDownloadContentType"

    aput-object v7, v3, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 642
    const-string/jumbo v3, "_id=?"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    new-instance v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/framework/model/AccountSettingModel;-><init>()V

    .line 645
    .local v1, "model":Lcom/alibaba/alimei/framework/model/AccountSettingModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/db/Account;

    .line 646
    .local v0, "accountEntry":Lcom/alibaba/alimei/framework/db/Account;
    if-eqz p2, :cond_0

    .line 647
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->mAutoViewPicType:I

    iput v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->autoViewImageType:I

    .line 648
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/Account;->mSignature:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->signature:Ljava/lang/String;

    .line 649
    iget-boolean v3, v0, Lcom/alibaba/alimei/framework/db/Account;->mForwardWithAttachment:Z

    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->forwardWithAttachment:Z

    .line 650
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->notifyMailOn:I

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyMailOn:Z

    .line 651
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->notifyCalendarOn:I

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyCalendarOn:Z

    .line 652
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->notifyCallOn:I

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->notifyCallOn:Z

    .line 653
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->audioEnableType:I

    if-nez v3, :cond_4

    :goto_3
    iput-boolean v4, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->isAudioEnnable:Z

    .line 654
    iget-object v3, v0, Lcom/alibaba/alimei/framework/db/Account;->senderAddress:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->senderAddress:Ljava/lang/String;

    .line 655
    iget v3, v0, Lcom/alibaba/alimei/framework/db/Account;->downloadContentType:I

    iput v3, v1, Lcom/alibaba/alimei/framework/model/AccountSettingModel;->downloadContentType:I

    .line 657
    :cond_0
    iput-object v1, p1, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    .line 658
    return-void

    :cond_1
    move v3, v5

    .line 650
    goto :goto_0

    :cond_2
    move v3, v5

    .line 651
    goto :goto_1

    :cond_3
    move v3, v5

    .line 652
    goto :goto_2

    :cond_4
    move v4, v5

    .line 653
    goto :goto_3
.end method
