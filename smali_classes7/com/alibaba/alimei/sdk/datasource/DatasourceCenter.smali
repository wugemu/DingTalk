.class public Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;
.super Ljava/lang/Object;
.source "DatasourceCenter.java"


# static fields
.field private static sInstance:Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getAccountAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/AccountAdditionalDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;

    return-object v0
.end method

.method public static getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    return-object v0
.end method

.method public static getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/AttachmentDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    return-object v0
.end method

.method public static getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/CalendarDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    return-object v0
.end method

.method public static getContactDatasource()Lcom/alibaba/alimei/contact/datasource/ContactDatasource;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/contact/datasource/ContactDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/contact/datasource/ContactDatasource;

    return-object v0
.end method

.method public static getFrequentContactDataSource()Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/FrequentContactDataSourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/FrequentContactDataSource;

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->sInstance:Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->sInstance:Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    .line 34
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->sInstance:Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    return-object v0
.end method

.method public static getMailAdditionalDatasource()Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/MailAdditionalDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/MailAdditionalDatasource;

    return-object v0
.end method

.method public static getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    return-object v0
.end method

.method public static getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/MessageDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    return-object v0
.end method

.method public static getSettingDatasource()Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;

    return-object v0
.end method

.method public static getSysCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/SysCalendarDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/SysCalendarDatasource;

    return-object v0
.end method

.method public static getTagDatasource()Lcom/alibaba/alimei/sdk/datasource/TagDatasource;
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/datasource/impl/TagDatasourceImpl;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/datasource/TagDatasource;

    return-object v0
.end method


# virtual methods
.method public notifyFolderChanged(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V
    .locals 2
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 42
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 43
    return-void
.end method

.method public notifyMailChanged(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V
    .locals 2
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 39
    return-void
.end method

.method public notifySettingChanged(Lcom/alibaba/alimei/sdk/model/SettingGroupModel;)V
    .locals 2
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 51
    return-void
.end method

.method public notifyTagChanged(Lcom/alibaba/alimei/sdk/model/TagGroupModel;)V
    .locals 2
    .param p1, "groupModel"    # Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/TagGroupModel;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->postContentChanged(Ljava/lang/Class;Lcom/alibaba/alimei/framework/datasource/DataGroupModel;)V

    .line 47
    return-void
.end method

.method public registerContentObserver(Ljava/lang/Class;Lxm;)V
    .locals 1
    .param p2, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->registerContentObserver(Ljava/lang/Class;Lxm;)V

    .line 61
    return-void
.end method

.method public unregisterContentObserver(Ljava/lang/Class;Lxm;)V
    .locals 1
    .param p2, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->registerContentObserver(Ljava/lang/Class;Lxm;)V

    .line 69
    return-void
.end method
