.class public final Ljgj;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljgj$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Ljgj;->a:Landroid/net/Uri;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljgj$a;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-static {p0}, Ljgj;->b(Landroid/content/Context;)Ljgj$a;

    move-result-object v0

    .line 129
    .local v0, "winfo":Ljgj$a;
    if-nez v0, :cond_1

    .line 1235
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1236
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 1253
    .end local v0    # "winfo":Ljgj$a;
    :cond_1
    :goto_0
    return-object v0

    .line 1242
    .restart local v0    # "winfo":Ljgj$a;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0    # "winfo":Ljgj$a;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v2

    .line 130
    goto :goto_0

    .line 1242
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1243
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_3

    .line 1244
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3

    .line 1245
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1246
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1250
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1251
    invoke-static {p0, v1}, Ljgj;->c(Landroid/content/Context;Ljava/lang/String;)Ljgj$a;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljgj$a;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 103
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, v1

    .line 117
    :cond_1
    :goto_0
    return-object v0

    .line 107
    :cond_2
    invoke-static {p0, p1}, Ljgj;->c(Landroid/content/Context;Ljava/lang/String;)Ljgj$a;

    move-result-object v0

    .line 108
    .local v0, "info":Ljgj$a;
    if-nez v0, :cond_1

    .line 112
    invoke-static {p0}, Ljgj;->b(Landroid/content/Context;)Ljgj$a;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    iget-object v2, v0, Ljgj$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1
    .param p0, "supportApi"    # I

    .prologue
    .line 91
    const/16 v0, 0x286e

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljgj$a;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x0

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 191
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Ljgj;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 192
    if-nez v6, :cond_2

    .line 219
    if-eqz v6, :cond_0

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v13, v14

    .line 224
    :cond_1
    :goto_0
    return-object v13

    .line 196
    :cond_2
    :try_start_1
    const-string/jumbo v1, "support_api"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 197
    .local v11, "supportApiIndex":I
    const-string/jumbo v1, "package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 198
    .local v8, "packageIndex":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    const/4 v12, -0x1

    .line 200
    .local v12, "supportApiInt":I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 202
    .local v10, "supportApi":Ljava/lang/String;
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v12

    .line 207
    :goto_1
    :try_start_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0, v9}, Ljgj;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    new-instance v13, Ljgj$a;

    invoke-direct {v13}, Ljgj$a;-><init>()V

    .line 210
    .local v13, "winfo":Ljgj$a;
    iput-object v9, v13, Ljgj$a;->a:Ljava/lang/String;

    .line 211
    iput v12, v13, Ljgj$a;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    if-eqz v6, :cond_1

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 203
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v13    # "winfo":Ljgj$a;
    :catch_0
    move-exception v7

    .line 204
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 215
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "packageIndex":I
    .end local v10    # "supportApi":Ljava/lang/String;
    .end local v11    # "supportApiIndex":I
    .end local v12    # "supportApiInt":I
    :catch_1
    move-exception v7

    .line 216
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    const-string/jumbo v1, "ApiUtils"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    if-eqz v6, :cond_3

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    move-object v13, v14

    .line 224
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v1

    .line 219
    if-eqz v6, :cond_4

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_4
    throw v1

    .line 219
    .restart local v8    # "packageIndex":I
    .restart local v11    # "supportApiIndex":I
    :cond_5
    if-eqz v6, :cond_3

    .line 220
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 148
    const/16 v3, 0x40

    .line 147
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string/jumbo v4, "18da2bf10352443a00a5e046d9fca6bd"

    .line 2165
    if-nez v3, :cond_1

    .line 2173
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 2169
    .restart local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    array-length v5, v3

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v6, v3, v2

    .line 2170
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljhh;->a([B)Ljava/lang/String;

    move-result-object v6

    .line 2171
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2172
    const-string/jumbo v1, "ApiUtils"

    const-string/jumbo v2, "check pass"

    invoke-static {v1, v2}, Ljhg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    const/4 v1, 0x1

    goto :goto_0

    .line 2169
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljgj$a;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    const/4 v9, 0x0

    .line 269
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v8, v9

    .line 317
    :cond_1
    :goto_0
    return-object v8

    .line 273
    :cond_2
    const/4 v2, 0x0

    .line 276
    .local v2, "is":Ljava/io/InputStream;
    const/4 v10, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 279
    .local v7, "weiboContext":Landroid/content/Context;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 281
    .local v0, "buf":[B
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "weibo_for_sdk.json"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v5, "sbContent":Ljava/lang/StringBuilder;
    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, "readNum":I
    if-ne v4, v12, :cond_5

    .line 288
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {p0, p1}, Ljgj;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_7

    .line 309
    :cond_3
    if-eqz v2, :cond_4

    .line 311
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    :cond_4
    :goto_2
    move-object v8, v9

    .line 289
    goto :goto_0

    .line 285
    :cond_5
    :try_start_2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 300
    .end local v0    # "buf":[B
    .end local v4    # "readNum":I
    .end local v5    # "sbContent":Ljava/lang/StringBuilder;
    .end local v7    # "weiboContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    if-eqz v2, :cond_6

    .line 311
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    :goto_3
    move-object v8, v9

    .line 317
    goto :goto_0

    .line 292
    .restart local v0    # "buf":[B
    .restart local v4    # "readNum":I
    .restart local v5    # "sbContent":Ljava/lang/StringBuilder;
    .restart local v7    # "weiboContext":Landroid/content/Context;
    :cond_7
    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 293
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v10, "support_api"

    const/4 v11, -0x1

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 295
    .local v6, "supportApi":I
    new-instance v8, Ljgj$a;

    invoke-direct {v8}, Ljgj$a;-><init>()V

    .line 296
    .local v8, "winfo":Ljgj$a;
    iput-object p1, v8, Ljgj$a;->a:Ljava/lang/String;

    .line 297
    iput v6, v8, Ljgj$a;->b:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    if-eqz v2, :cond_1

    .line 311
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    goto :goto_0

    .line 302
    .end local v0    # "buf":[B
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "readNum":I
    .end local v5    # "sbContent":Ljava/lang/StringBuilder;
    .end local v6    # "supportApi":I
    .end local v7    # "weiboContext":Landroid/content/Context;
    .end local v8    # "winfo":Ljgj$a;
    :catch_2
    move-exception v1

    .line 303
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    if-eqz v2, :cond_6

    .line 311
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 312
    :catch_3
    move-exception v10

    goto :goto_3

    .line 304
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 305
    .local v1, "e":Lorg/json/JSONException;
    :try_start_9
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 309
    if-eqz v2, :cond_6

    .line 311
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_3

    .line 312
    :catch_5
    move-exception v10

    goto :goto_3

    .line 306
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_6
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b
    const-string/jumbo v10, "ApiUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljhg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 309
    if-eqz v2, :cond_6

    .line 311
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_3

    .line 312
    :catch_7
    move-exception v10

    goto :goto_3

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 309
    if-eqz v2, :cond_8

    .line 311
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 315
    :cond_8
    :goto_4
    throw v9

    .restart local v0    # "buf":[B
    .restart local v4    # "readNum":I
    .restart local v5    # "sbContent":Ljava/lang/StringBuilder;
    .restart local v7    # "weiboContext":Landroid/content/Context;
    :catch_8
    move-exception v10

    goto/16 :goto_2

    .line 312
    .end local v0    # "buf":[B
    .end local v4    # "readNum":I
    .end local v5    # "sbContent":Ljava/lang/StringBuilder;
    .end local v7    # "weiboContext":Landroid/content/Context;
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_9
    move-exception v10

    goto :goto_3

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_a
    move-exception v10

    goto :goto_4
.end method
