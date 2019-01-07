.class public final Lafv;
.super Ljava/lang/Object;
.source "AlimeiSDK.java"


# static fields
.field private static a:Lafy;

.field private static b:Lafy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lafy;

    invoke-direct {v0}, Lafy;-><init>()V

    .line 66
    sput-object v0, Lafv;->b:Lafy;

    .line 1264
    const/4 v1, 0x0

    iput-boolean v1, v0, Lafy;->h:Z

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lxn;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/FolderDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v0, Lcom/alibaba/alimei/sdk/displayer/FolderDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/FolderDisplayer;

    return-object v0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/io/File;
    .locals 1
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 199
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    invoke-static {p0}, Lafz;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lafy;)V
    .locals 0
    .param p0, "config"    # Lafy;

    .prologue
    .line 78
    sput-object p0, Lafv;->a:Lafy;

    .line 79
    return-void
.end method

.method public static a(Ljava/lang/Class;Lxm;)V
    .locals 0
    .param p1, "observer"    # Lxm;
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
    .line 105
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {p0, p1}, Lxn;->a(Ljava/lang/Class;Lxm;)V

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 170
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lafz;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 171
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "messageContent"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/alibaba/alimei/sdk/push/handler/PushDispatcher;->dispatcher(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v1, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;->DividerType:Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;

    .line 1154
    const-class v0, Lcom/alibaba/alimei/sdk/displayer/MailDisplayer;

    .line 1155
    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;

    .line 1156
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer;->setMailDisplayerType(Lcom/alibaba/alimei/sdk/displayer/AbsMailDisplayer$MailDisplayerType;)V

    .line 149
    return-object v0
.end method

.method public static b(Ljava/lang/Class;Lxm;)V
    .locals 0
    .param p1, "observer"    # Lxm;
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
    .line 113
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {p0, p1}, Lxn;->b(Ljava/lang/Class;Lxm;)V

    .line 114
    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 179
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0, p1}, Lafz;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 180
    return-void
.end method

.method public static c()Lafy;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lafv;->a:Lafy;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lafv;->b:Lafy;

    .line 88
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lafv;->a:Lafy;

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/api/impl/CalendarApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/CalendarApi;

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 189
    invoke-static {}, Lxn;->b()Landroid/content/Context;

    invoke-static {p0, p1}, Lafz;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/api/impl/FolderApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/FolderApi;

    return-object v0
.end method

.method public static d()Lya;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lcom/alibaba/alimei/framework/account/AccountApi;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lxn;->h()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/api/impl/MailApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/MailApi;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/api/impl/MailAdditionalApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->buildAllAccountReleaseCmmd()Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;

    move-result-object v0

    .line 239
    .local v0, "command":Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/task/cmmd/ReleaseMailSpaceCommand;->executeCommand()V

    .line 242
    :cond_0
    return-void
.end method

.method public static g()Lcom/alibaba/alimei/sdk/api/AccountAdditionalApi;
    .locals 3

    .prologue
    .line 321
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/alibaba/alimei/sdk/api/impl/AccountAdditionalApiImpl;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/AccountAdditionalApi;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 361
    const-class v0, Lcom/alibaba/alimei/sdk/displayer/MailProxyDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 370
    const-class v0, Lcom/alibaba/alimei/sdk/displayer/TagDisplayer;

    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DisplayerFactory;->getInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/sdk/displayer/Displayer;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/api/impl/TagApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/TagApi;

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/SettingApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 384
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/api/impl/SettingApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/api/SettingApi;

    return-object v0
.end method
