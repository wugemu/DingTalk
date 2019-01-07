.class public Lcom/alipay/android/h5appmanager/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alipay/android/h5appmanager/AppInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_DOWNLOADED:I = 0x2

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_INSTALLED:I = 0x4

.field public static final STATUS_INSTALLING:I = 0x3

.field public static final STATUS_NOT_DOWNLOADED:I


# instance fields
.field public appId:Ljava/lang/String;

.field public auto_install:Z

.field public cdn_url:Ljava/lang/String;

.field public client_max:Ljava/lang/String;

.field public client_min:Ljava/lang/String;

.field public created_time:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public extend_info:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public icon_url:Ljava/lang/String;

.field public launch_params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public launch_url:Ljava/lang/String;

.field public modified_time:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public online:Ljava/lang/String;

.field public sdk_max:Ljava/lang/String;

.field public sdk_min:Ljava/lang/String;

.field public size:I

.field public status:I

.field public system_max:Ljava/lang/String;

.field public system_min:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private isVersionFormatValid()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    const/4 v2, 0x1

    .line 281
    .local v2, "isValid":Z
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 283
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 284
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    .local v0, "c":C
    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_1

    .line 286
    const/4 v2, 0x0

    .line 283
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    const/4 v2, 0x0

    .line 293
    :cond_3
    return v2
.end method


# virtual methods
.method public compareTo(Lcom/alipay/android/h5appmanager/AppInfo;)I
    .locals 17
    .param p1, "another"    # Lcom/alipay/android/h5appmanager/AppInfo;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v11, 0x1

    .line 276
    :goto_0
    return v11

    .line 240
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/android/h5appmanager/AppInfo;->isVersionFormatValid()Z

    move-result v9

    .line 241
    .local v9, "thisValid":Z
    invoke-direct/range {p1 .. p1}, Lcom/alipay/android/h5appmanager/AppInfo;->isVersionFormatValid()Z

    move-result v2

    .line 242
    .local v2, "anotherValid":Z
    if-nez v9, :cond_2

    .line 243
    if-eqz v2, :cond_1

    .line 244
    const/4 v11, -0x1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 251
    :cond_2
    if-nez v2, :cond_3

    .line 252
    const/4 v11, 0x1

    goto :goto_0

    .line 257
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    const-string/jumbo v16, "\\."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "thisVers":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    const-string/jumbo v16, "\\."

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "anotherVers":[Ljava/lang/String;
    array-length v8, v10

    .line 260
    .local v8, "sizeThis":I
    array-length v7, v3

    .line 261
    .local v7, "sizeAnother":I
    const/4 v6, 0x0

    .line 262
    .local v6, "iThis":I
    const/4 v5, 0x0

    .line 263
    .local v5, "iAnother":I
    :goto_1
    if-ge v6, v8, :cond_6

    if-ge v5, v7, :cond_6

    .line 264
    aget-object v11, v10, v6

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 265
    .local v14, "vThis":J
    aget-object v11, v3, v5

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 266
    .local v12, "vAnother":J
    cmp-long v11, v14, v12

    if-eqz v11, :cond_5

    .line 267
    cmp-long v11, v14, v12

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_0

    :cond_4
    const/4 v11, -0x1

    goto :goto_0

    .line 263
    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 271
    .end local v3    # "anotherVers":[Ljava/lang/String;
    .end local v5    # "iAnother":I
    .end local v6    # "iThis":I
    .end local v7    # "sizeAnother":I
    .end local v8    # "sizeThis":I
    .end local v10    # "thisVers":[Ljava/lang/String;
    .end local v12    # "vAnother":J
    .end local v14    # "vThis":J
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-virtual {p0, p1}, Lcom/alipay/android/h5appmanager/AppInfo;->compareTo(Lcom/alipay/android/h5appmanager/AppInfo;)I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCdn_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->cdn_url:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_max()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->client_max:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_min()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->client_min:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->created_time:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend_info()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    return-object v0
.end method

.method public getIcon_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->icon_url:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunch_params()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->launch_params:Ljava/util/Map;

    return-object v0
.end method

.method public getLaunch_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->launch_url:Ljava/lang/String;

    return-object v0
.end method

.method public getModified_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->modified_time:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->online:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_max()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_max:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk_min()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_min:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->size:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    return v0
.end method

.method public getSystem_max()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->system_max:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_min()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->system_min:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAuto_install()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/alipay/android/h5appmanager/AppInfo;->auto_install:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setAuto_install(Z)V
    .locals 0
    .param p1, "auto_install"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->auto_install:Z

    .line 137
    return-void
.end method

.method public setCdn_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdn_url"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->cdn_url:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setClient_max(Ljava/lang/String;)V
    .locals 0
    .param p1, "client_max"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->client_max:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setClient_min(Ljava/lang/String;)V
    .locals 0
    .param p1, "client_min"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->client_min:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCreated_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "created_time"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->created_time:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->desc:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setExtend_info(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "extend_info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    .line 129
    return-void
.end method

.method public setIcon_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon_url"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->icon_url:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLaunch_params(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "launch_params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->launch_params:Ljava/util/Map;

    .line 121
    return-void
.end method

.method public setLaunch_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "launch_url"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->launch_url:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setModified_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "modified_time"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->modified_time:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->name:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOnline(Ljava/lang/String;)V
    .locals 0
    .param p1, "online"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->online:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSdk_max(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdk_max"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_max:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSdk_min(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdk_min"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->sdk_min:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->size:I

    .line 113
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->status:I

    .line 225
    return-void
.end method

.method public setSystem_max(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_max"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->system_max:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSystem_min(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_min"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->system_min:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->url:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    .line 81
    return-void
.end method
