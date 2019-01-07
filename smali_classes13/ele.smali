.class public Lele;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lele;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lele;->a:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcpy;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lele;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0926b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 75
    .line 1322
    const-string/jumbo v1, "connectivity"

    .line 1323
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1324
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1325
    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 75
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "10"

    .line 76
    .local v0, "netStates":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1329
    .end local v0    # "netStates":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo v0, "1"

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Lelc;->a:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 289
    sget-object v2, Lelc;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "String"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 292
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    :cond_0
    :goto_0
    const/16 v2, 0x9

    invoke-static {v2}, Lele;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    return-void

    .line 293
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "Integer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 295
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "Boolean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 297
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "Float"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    check-cast p1, Ljava/lang/Float;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 299
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v2, "Long"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 306
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 2
    .param p0, "apiLevel"    # I

    .prologue
    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upgrade version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 369
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "check_update_hold_version_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "check_update_hold_version_name"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "holdVersionCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upgrade hold version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    .line 378
    .end local v0    # "holdVersionCode":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 169
    .local v0, "currentVersion":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string/jumbo v0, "2.10.0"

    .line 173
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 174
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 175
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static b()Ljay;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 189
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "has_new_version"

    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 190
    .local v2, "hasNewVersion":Z
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "md5"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "md5":Ljava/lang/String;
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "apkSize"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "apkSize":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 193
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "versionName"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "versionName":Ljava/lang/String;
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "versionDesc"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, "versionDesc":Ljava/lang/String;
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "downloadUrl"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "downloadUrl":Ljava/lang/String;
    sget-object v10, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "verImportanceLevel"

    const-string/jumbo v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "verImportanceLevel":Ljava/lang/String;
    new-instance v4, Ljay;

    invoke-direct {v4}, Ljay;-><init>()V

    .line 198
    .local v4, "updateInfo":Ljay;
    iput-object v1, v4, Ljay;->b:Ljava/lang/String;

    .line 199
    iput-object v7, v4, Ljay;->f:Ljava/lang/String;

    .line 200
    iput-object v6, v4, Ljay;->h:Ljava/lang/String;

    .line 201
    iput-object v3, v4, Ljay;->i:Ljava/lang/String;

    .line 203
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v4, Ljay;->d:J

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Ljay;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    :goto_0
    iget-object v10, v4, Ljay;->f:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v4, Ljay;->h:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, v4, Ljay;->b:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2048
    :cond_0
    const/4 v9, 0x1

    .line 207
    :cond_1
    if-eqz v9, :cond_2

    move-object v4, v8

    .line 212
    .end local v1    # "downloadUrl":Ljava/lang/String;
    .end local v4    # "updateInfo":Ljay;
    .end local v5    # "verImportanceLevel":Ljava/lang/String;
    .end local v6    # "versionDesc":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    :cond_3
    move-object v4, v8

    goto :goto_1

    .restart local v1    # "downloadUrl":Ljava/lang/String;
    .restart local v4    # "updateInfo":Ljay;
    .restart local v5    # "verImportanceLevel":Ljava/lang/String;
    .restart local v6    # "versionDesc":Ljava/lang/String;
    .restart local v7    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4
    .param p0, "versionName"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upgrade version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 384
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "check_update_3g_hold_version_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "check_update_3g_hold_version_name"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "holdVersionCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upgrade hold version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x1

    .line 393
    .end local v0    # "holdVersionCode":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "dir":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 269
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :goto_0
    return-object v0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 273
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 221
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lelc;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "has_new_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "versionName"

    .line 224
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "versionDesc"

    .line 225
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "downloadUrl"

    .line 226
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "verImportanceLevel"

    .line 227
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "md5"

    .line 228
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "apkSize"

    .line 229
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    const/16 v1, 0x9

    invoke-static {v1}, Lele;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static final d()Z
    .locals 2

    .prologue
    .line 439
    const-string/jumbo v0, "rimet"

    invoke-static {}, Lele;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
