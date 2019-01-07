.class public Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "SettingDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/datasource/SettingDatasource;


# static fields
.field private static final PREF_AUTO_DOWNLOAD_MAIL_DETAIL:Ljava/lang/String; = "auto_download_mail_detail"

.field private static final PREF_COPY_SENT_MAIL:Ljava/lang/String; = "copy_sent_mail"

.field private static final PREF_FOLDER_TYPE_SYNC:Ljava/lang/String; = "folder_sync_server"

.field private static final PREF_SENDER_MAIL:Ljava/lang/String; = "sender_mail"

.field private static final PREF_SHOWN_TYPE:Ljava/lang/String; = "mail_list_show_type"

.field private static final PREF_SHOW_ADVANCE_SETTING:Ljava/lang/String; = "show_advance_setting"

.field private static final PREF_USER_DEFINE_TYPE:Ljava/lang/String; = "folder_user_define_type"

.field private static final TAG:Ljava/lang/String; = "SettingDatasourceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private static getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p0, ""

    .end local p0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_mail_setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "prefName":Ljava/lang/String;
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    .line 202
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 203
    const/4 v2, 0x0

    .line 205
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getAutoDownloadMailDetail(Ljava/lang/String;)I
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 182
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    .local v0, "pref":Landroid/content/SharedPreferences;
    const/4 v1, 0x2

    .line 184
    .local v1, "status":I
    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v2, "auto_download_mail_detail"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 190
    :goto_0
    const-string/jumbo v2, "SettingDatasourceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAutoDownloadMailDetail result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v1

    .line 187
    :cond_0
    const-string/jumbo v2, "SettingDatasourceImpl"

    const-string/jumbo v3, "getAutoDownloadMailDetail fail for pref is null"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCopySentMailHasSet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "copy_sent_mail"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderByUserDefineType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-object v2

    .line 139
    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "folder_user_define_type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "-"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getIsCopySentMail(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 100
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "copy_sent_mail"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getIsFolderTypeSync2Server(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 177
    :goto_0
    return v2

    .line 175
    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "folder_sync_server"

    aput-object v4, v3, v2

    const-string/jumbo v2, "-"

    aput-object v2, v3, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public getSenderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "sender_mail"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShowAdvanceSetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 210
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 211
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 215
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "show_advance_setting"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getShownType()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return v1

    :cond_0
    const-string/jumbo v2, "mail_list_show_type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public setAutoDownloadMailDetail(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 158
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 159
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 160
    const-string/jumbo v1, "SettingDatasourceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAutoDownloadMailDetail fail for pref is null, autoDownload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    .line 165
    :goto_0
    return v1

    .line 163
    :cond_0
    const-string/jumbo v1, "SettingDatasourceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setAutoDownloadMailDetail autoDownload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "auto_download_mail_detail"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 165
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setFolderTypeSync2Server(Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderType"    # I
    .param p3, "sync2Server"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 153
    :goto_0
    return v2

    .line 150
    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "folder_sync_server"

    aput-object v5, v4, v2

    const-string/jumbo v2, "-"

    aput-object v2, v4, v3

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v3

    .line 153
    goto :goto_0
.end method

.method public setFolderUserDefineType(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "folderServerId"    # Ljava/lang/String;
    .param p3, "folderType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 121
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "folder_user_define_type"

    aput-object v5, v4, v2

    const-string/jumbo v2, "-"

    aput-object v2, v4, v3

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v3

    .line 126
    goto :goto_0
.end method

.method public setIsCopySentMail(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "copySentMail"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 105
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 111
    :goto_0
    return v1

    .line 109
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "copy_sent_mail"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "sendMail"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "sender_mail"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    const/4 v1, 0x1

    return v1
.end method

.method public setShowAdvanceSetting(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    invoke-static {p1}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    .local v0, "pref":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "show_advance_setting"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public setShownType(I)Z
    .locals 4
    .param p1, "shownType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/SettingDatasourceImpl;->getSharedPreference(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, "pref":Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 82
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "mail_list_show_type"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    new-instance v0, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;-><init>()V

    .line 79
    .local v0, "groupModel":Lcom/alibaba/alimei/sdk/model/SettingGroupModel;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;->setMailShownType(I)V

    .line 80
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifySettingChanged(Lcom/alibaba/alimei/sdk/model/SettingGroupModel;)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0
.end method
