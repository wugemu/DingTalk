.class public final Lcom/alibaba/alimei/restfulapi/support/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final APP_SETTING:Ljava/lang/String; = "alm_restfulapi.properties"

.field private static DEFAULT_CHAR_SET:Ljava/lang/String; = null

.field private static final DEFAULT_SETTING:Ljava/lang/String; = "alm_restfulapi_default.properties"

.field public static final INTERNAL_ACCOUNT_NAME:Ljava/lang/String; = "_NOACCOUNTNAME"

.field private static final KEY_DEFAULT_CHATSET:Ljava/lang/String; = "default_charset"

.field public static final KEY_HOST_NAME_API:Ljava/lang/String; = "HOST_NAME_API"

.field public static final KEY_HOST_NAME_AUTH:Ljava/lang/String; = "HOST_NAME_AUTH"

.field public static final KEY_HOST_NAME_DENTRY:Ljava/lang/String; = "HOST_NAME_DENTRY"

.field public static final KEY_HOST_NAME_FILE:Ljava/lang/String; = "HOST_NAME_FILE"

.field public static final KEY_HOST_NAME_LOCATION:Ljava/lang/String; = "HOST_NAME_LOCATION"

.field public static final KEY_HOST_NAME_PREVIEW:Ljava/lang/String; = "HOST_NAME_PREVIEW"

.field public static final KEY_HOST_NAME_SPACE_PREVIEW:Ljava/lang/String; = "HOST_NAME_SPACE_PREVIEW"

.field public static final KEY_HOST_NAME_WEBMAIL:Ljava/lang/String; = "HOST_NAME_WEBMAIL"

.field public static final KEY_HOST_URL_API:Ljava/lang/String; = "HOST_URL_API"

.field public static final KEY_HOST_URL_AUTH:Ljava/lang/String; = "HOST_URL_AUTH"

.field public static final KEY_HOST_URL_DENTRY:Ljava/lang/String; = "HOST_URL_DENTRY"

.field public static final KEY_HOST_URL_FILE:Ljava/lang/String; = "HOST_URL_FILE"

.field public static final KEY_HOST_URL_LOCATION:Ljava/lang/String; = "HOST_URL_LOCATION"

.field public static final KEY_HOST_URL_PREVIEW:Ljava/lang/String; = "HOST_URL_PREVIEW"

.field public static final KEY_HOST_URL_SPACE_PREVIEW:Ljava/lang/String; = "HOST_URL_SPACE_PREVIEW"

.field public static final KEY_HOST_URL_WEBMAIL:Ljava/lang/String; = "HOST_URL_WEBMAIL"

.field private static hostMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentAccountName:Ljava/lang/String;

.field private static mHostUrlInit:Z

.field private static properties:Ljava/util/Properties;

.field private static propertyLock:Z

.field private static sDefaultUrls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHostNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHostUrls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHttpDnsOn:Ljava/lang/Boolean;

.field private static sharedPreferences:Landroid/content/SharedPreferences;

.field private static spaceDentryHostUrl:Ljava/lang/String;

.field private static spacePreivewHostUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x1388

    const/16 v7, 0xfa0

    const/16 v6, 0xbb8

    const/16 v5, 0x7d0

    const/16 v4, 0x3e8

    .line 104
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->mHostUrlInit:Z

    .line 114
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    .line 138
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_URL_API"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://alimei-api.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_URL_AUTH"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://alimei-auth.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_URL_FILE"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://alimei-content.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_URL_DENTRY"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://space.dingtalk.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_URL_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://alimei-preview.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1770

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v3, "HOST_URL_SPACE_PREVIEW"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://preview.dingtalk.com"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1b58

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v3, "HOST_URL_LOCATION"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://alimei-auth.alibaba.com"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v3, "HOST_URL_WEBMAIL"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https://webmail.alibaba-inc.com"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 150
    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_NAME_API"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alimei-api.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_NAME_AUTH"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alimei-auth.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_NAME_FILE"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alimei-content.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_NAME_DENTRY"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "space.dingtalk.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HOST_NAME_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "alimei-preview.alibaba.com"

    invoke-static {v1, v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    const/16 v1, 0x1770

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v3, "HOST_NAME_SPACE_PREVIEW"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "preview.dingtalk.com"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    const/16 v1, 0x1b58

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v3, "HOST_NAME_LOCATION"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alimei-auth.alibaba.com"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v3, "HOST_NAME_WEBMAIL"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webmail.alibaba-inc.com"

    invoke-static {v2, v3}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHttpDnsOn:Ljava/lang/Boolean;

    .line 282
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->DEFAULT_CHAR_SET:Ljava/lang/String;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method

.method public static getDefaultCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->DEFAULT_CHAR_SET:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v1, "default_charset"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->DEFAULT_CHAR_SET:Ljava/lang/String;

    .line 291
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->DEFAULT_CHAR_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static getHostName(I)Ljava/lang/String;
    .locals 3
    .param p0, "domainType"    # I

    .prologue
    .line 243
    const/16 v1, 0xfa0

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1770

    if-ne p0, v1, :cond_2

    .line 244
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getHostName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_1
    :goto_0
    return-object v0

    .line 247
    :cond_2
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostNames:Landroid/util/SparseArray;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public static getHostUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "domainType"    # I

    .prologue
    const/16 v3, 0xfa0

    .line 202
    if-eq p1, v3, :cond_0

    const/16 v2, 0x1770

    if-ne p1, v2, :cond_5

    .line 203
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getHostUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "dentryMethodHostUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 235
    .end local v0    # "dentryMethodHostUrl":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 209
    .restart local v0    # "dentryMethodHostUrl":Ljava/lang/String;
    :cond_1
    if-ne p1, v3, :cond_3

    .line 210
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->spaceDentryHostUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->spaceDentryHostUrl:Ljava/lang/String;

    goto :goto_0

    .line 213
    :cond_3
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->spacePreivewHostUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->spacePreivewHostUrl:Ljava/lang/String;

    goto :goto_0

    .line 216
    .end local v0    # "dentryMethodHostUrl":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x1b58

    if-ne p1, v2, :cond_7

    .line 217
    :cond_6
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_7
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->mCurrentAccountName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "_NOACCOUNTNAME"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 223
    :cond_8
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "value":Ljava/lang/String;
    :goto_1
    sput-object p0, Lcom/alibaba/alimei/restfulapi/support/Settings;->mCurrentAccountName:Ljava/lang/String;

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move-object v2, v1

    .line 232
    goto :goto_0

    .line 225
    .end local v1    # "value":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->getInstance()Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/alibaba/alimei/restfulapi/domain/DomainDataSourceImpl;->queryDomainInfo(Ljava/lang/String;)Lcom/alibaba/alimei/restfulapi/domain/Domain;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/alimei/restfulapi/support/Settings;->setPropertyValues(Lcom/alibaba/alimei/restfulapi/domain/Domain;)V

    .line 226
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 235
    :cond_a
    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 301
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/alimei/restfulapi/support/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static isHttpDnsSwitchOn(Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Z
    .locals 4
    .param p0, "openApiMethods"    # Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;

    .prologue
    .line 169
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;->domainType:I

    const/16 v2, 0xfa0

    if-ne v1, v2, :cond_0

    .line 170
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v1

    const-string/jumbo v2, "cspace_http_dns_enable_android"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getConfigSwitch(Ljava/lang/String;Z)Z

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 173
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHttpDnsOn:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 174
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    const-string/jumbo v2, "HTTPDNS_SWITCH_OFF"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHttpDnsOn:Ljava/lang/Boolean;

    .line 178
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHttpDnsOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private static loadProperties(Ljava/lang/String;)Ljava/util/Properties;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 261
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 277
    :goto_0
    return-object v0

    .line 264
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 265
    .local v0, "_properties":Ljava/util/Properties;
    const-class v3, Lcom/alibaba/alimei/restfulapi/support/Settings;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 266
    .local v1, "stream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 271
    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 275
    .end local v0    # "_properties":Ljava/util/Properties;
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    move-object v0, v2

    goto :goto_0

    .line 277
    :catch_1
    move-exception v3

    move-object v0, v2

    goto :goto_0
.end method

.method public static setPropertyLock(Z)V
    .locals 0
    .param p0, "propertyLock"    # Z

    .prologue
    .line 396
    sput-boolean p0, Lcom/alibaba/alimei/restfulapi/support/Settings;->propertyLock:Z

    .line 397
    return-void
.end method

.method public static setPropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 381
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 365
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_API"

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_AUTH"

    const/16 v3, 0xbb8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_FILE"

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_DENTRY"

    const/16 v3, 0xfa0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_PREVIEW"

    const/16 v3, 0x1388

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_SPACE_PREVIEW"

    const/16 v3, 0x1770

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_WEBMAIL"

    const/16 v3, 0x1f40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    const-string/jumbo v2, "HOST_URL_LOCATION"

    const/16 v3, 0x1b58

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_1
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->hostMappings:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 375
    .local v0, "hostType":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 376
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    invoke-static {p1, v0}, Lcom/alibaba/alimei/restfulapi/support/Settings;->updateSpaceHostUrl(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    :cond_2
    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->properties:Ljava/util/Properties;

    invoke-virtual {v1, p0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static setPropertyValues(Lcom/alibaba/alimei/restfulapi/domain/Domain;)V
    .locals 7
    .param p0, "domain"    # Lcom/alibaba/alimei/restfulapi/domain/Domain;

    .prologue
    const/16 v6, 0x1388

    const/16 v5, 0xfa0

    const/16 v4, 0xbb8

    const/16 v3, 0x7d0

    const/16 v2, 0x3e8

    .line 308
    sget-boolean v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->propertyLock:Z

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 312
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getApiDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getApiDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getAuthDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getAuthDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getFileDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 325
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getFileDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    :goto_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getDentryDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 331
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getDentryDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    :goto_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getPreviewDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 337
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getPreviewDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    :goto_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getSpacePreviewDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 343
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1770

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getSpacePreviewDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    :goto_6
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getWebmailDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 349
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/domain/Domain;->getWebmailDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 315
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 321
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 327
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 333
    :cond_4
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 339
    :cond_5
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    sget-object v1, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    .line 345
    :cond_6
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1770

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    const/16 v3, 0x1770

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 351
    :cond_7
    sget-object v0, Lcom/alibaba/alimei/restfulapi/support/Settings;->sHostUrls:Landroid/util/SparseArray;

    const/16 v1, 0x1f40

    sget-object v2, Lcom/alibaba/alimei/restfulapi/support/Settings;->sDefaultUrls:Landroid/util/SparseArray;

    const/16 v3, 0x1f40

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private static updateSpaceHostUrl(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "hostType"    # Ljava/lang/Integer;

    .prologue
    .line 384
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_2

    .line 388
    sput-object p0, Lcom/alibaba/alimei/restfulapi/support/Settings;->spaceDentryHostUrl:Ljava/lang/String;

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1770

    if-ne v0, v1, :cond_0

    .line 390
    sput-object p0, Lcom/alibaba/alimei/restfulapi/support/Settings;->spacePreivewHostUrl:Ljava/lang/String;

    goto :goto_0
.end method
