.class public final Lakt;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static a:Laku;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lakt;->a:Laku;

    .line 35
    const-string/jumbo v0, "/system/bin/setprop"

    sput-object v0, Lakt;->b:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "/system/bin/monkey"

    sput-object v0, Lakt;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Laku;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-class v19, Lakt;

    monitor-enter v19

    :try_start_0
    sget-object v18, Lakt;->a:Laku;

    if-eqz v18, :cond_0

    .line 196
    sget-object v9, Lakt;->a:Laku;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :goto_0
    monitor-exit v19

    return-object v9

    .line 198
    :cond_0
    if-eqz p0, :cond_f

    .line 18178
    if-eqz p0, :cond_3

    .line 18179
    :try_start_1
    invoke-static/range {p0 .. p0}, Lakt;->b(Landroid/content/Context;)Laku;

    move-result-object v9

    .line 18181
    invoke-static/range {p0 .. p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 18232
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->t:Ljava/lang/String;

    .line 19055
    iget-object v0, v9, Laku;->a:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 19205
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 18183
    if-eqz v18, :cond_1

    .line 18184
    invoke-static/range {p0 .. p0}, Lana;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 20059
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->a:Ljava/lang/String;

    .line 20068
    :cond_1
    iget-object v0, v9, Laku;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 20205
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 18186
    if-eqz v18, :cond_2

    .line 18187
    invoke-static/range {p0 .. p0}, Lana;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 21072
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .local v9, "lDeviceInfo":Laku;
    :cond_2
    :goto_1
    if-eqz v9, :cond_a

    .line 202
    :try_start_2
    const-string/jumbo v18, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 204
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v12, :cond_4

    .line 205
    const/4 v9, 0x0

    goto :goto_0

    .line 18191
    .end local v9    # "lDeviceInfo":Laku;
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 207
    .restart local v9    # "lDeviceInfo":Laku;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21104
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 212
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 213
    .local v15, "versionName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 214
    .local v14, "versionCode":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 21176
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->o:Ljava/lang/String;

    .line 22168
    iput-object v15, v9, Laku;->n:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v14    # "versionCode":I
    .end local v15    # "versionName":Ljava/lang/String;
    :goto_2
    :try_start_4
    sget-object v18, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 24160
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->m:Ljava/lang/String;

    .line 221
    const-string/jumbo v18, "Android"

    .line 24184
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->p:Ljava/lang/String;

    .line 24318
    const-string/jumbo v18, "java.vm.name"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    const-string/jumbo v18, "java.vm.name"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "lemur"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    :cond_5
    const-string/jumbo v18, "ro.yunos.version"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 24321
    :cond_6
    const/16 v18, 0x1

    .line 222
    :goto_3
    if-eqz v18, :cond_7

    .line 223
    const-string/jumbo v18, "aliyunos"

    .line 25184
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->p:Ljava/lang/String;

    .line 225
    :cond_7
    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 25192
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->q:Ljava/lang/String;

    .line 226
    new-instance v6, Landroid/content/res/Configuration;

    invoke-direct {v6}, Landroid/content/res/Configuration;-><init>()V

    .line 227
    .local v6, "configuration":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 230
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    .line 232
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v18

    .line 26112
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->g:Ljava/lang/String;

    .line 234
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v18

    .line 26120
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->h:Ljava/lang/String;

    .line 236
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 237
    .local v5, "calendar":Ljava/util/Calendar;
    if-eqz v5, :cond_d

    .line 238
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v13

    .line 239
    .local v13, "timezone":Ljava/util/TimeZone;
    if-eqz v13, :cond_c

    .line 240
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v20

    const v21, 0x36ee80

    div-int v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 26128
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->i:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    .end local v5    # "calendar":Ljava/util/Calendar;
    .end local v13    # "timezone":Ljava/util/TimeZone;
    :goto_4
    :try_start_5
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 255
    .local v7, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v18, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    .line 257
    .local v17, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget v0, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 259
    .local v16, "width":I
    iget v8, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30038
    .local v8, "height":I
    move/from16 v0, v16

    iput v0, v9, Laku;->r:I

    .line 30046
    iput v8, v9, Laku;->s:I

    .line 262
    move/from16 v0, v16

    if-le v0, v8, :cond_8

    .line 263
    xor-int v16, v16, v8

    .line 264
    xor-int v8, v8, v16

    .line 265
    xor-int v16, v16, v8

    .line 267
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v20, "*"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 30136
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->j:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "height":I
    .end local v16    # "width":I
    .end local v17    # "wm":Landroid/view/WindowManager;
    :goto_5
    :try_start_6
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v18

    .line 31305
    move-object/from16 v0, v18

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 272
    invoke-static/range {v18 .. v18}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 32144
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->k:Ljava/lang/String;

    .line 273
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v18

    .line 32305
    move-object/from16 v0, v18

    iget-object v0, v0, Lajw;->c:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 273
    invoke-static/range {v18 .. v18}, Lalg;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 33152
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->l:Ljava/lang/String;

    .line 275
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v10

    .line 33205
    .local v10, "networkName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 277
    if-eqz v18, :cond_9

    .line 278
    const-string/jumbo v10, ""

    .line 34088
    :cond_9
    iput-object v10, v9, Laku;->d:Ljava/lang/String;

    .line 281
    invoke-static {}, Lang;->a()Ljava/lang/String;

    move-result-object v18

    .line 35080
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->c:Ljava/lang/String;

    .line 284
    new-instance v18, Ljava/io/File;

    sget-object v20, Lakt;->b:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "binTime":Ljava/lang/String;
    const-string/jumbo v18, "_"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v20, Ljava/io/File;

    sget-object v21, Lakt;->c:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35209
    iput-object v4, v9, Laku;->u:Ljava/lang/String;

    .line 290
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x9

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_a

    .line 291
    invoke-static {}, Lakt;->a()Ljava/lang/String;

    move-result-object v18

    .line 35217
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->v:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    .end local v4    # "binTime":Ljava/lang/String;
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .end local v10    # "networkName":Ljava/lang/String;
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_a
    :try_start_7
    sput-object v9, Lakt;->a:Laku;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 195
    .end local v9    # "lDeviceInfo":Laku;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 217
    .restart local v9    # "lDeviceInfo":Laku;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v18

    :try_start_8
    const-string/jumbo v18, "Unknown"

    .line 22176
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->o:Ljava/lang/String;

    .line 218
    const-string/jumbo v18, "Unknown"

    .line 23168
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->n:Ljava/lang/String;

    goto/16 :goto_2

    .line 295
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v18

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 24323
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 243
    .restart local v5    # "calendar":Ljava/util/Calendar;
    .restart local v6    # "configuration":Landroid/content/res/Configuration;
    .restart local v13    # "timezone":Ljava/util/TimeZone;
    :cond_c
    const-string/jumbo v18, "8"

    .line 27128
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->i:Ljava/lang/String;

    goto/16 :goto_4

    .line 246
    .end local v13    # "timezone":Ljava/util/TimeZone;
    :cond_d
    const-string/jumbo v18, "8"

    .line 28128
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->i:Ljava/lang/String;

    goto/16 :goto_4

    .line 249
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_e
    const-string/jumbo v18, "Unknown"

    .line 29112
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->g:Ljava/lang/String;

    .line 250
    const-string/jumbo v18, "Unknown"

    .line 29120
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->h:Ljava/lang/String;

    .line 251
    const-string/jumbo v18, "8"

    .line 29128
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->i:Ljava/lang/String;

    goto/16 :goto_4

    .line 269
    :catch_2
    move-exception v18

    const-string/jumbo v18, "Unknown"

    .line 31136
    move-object/from16 v0, v18

    iput-object v0, v9, Laku;->j:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_5

    .line 301
    .end local v6    # "configuration":Landroid/content/res/Configuration;
    .end local v9    # "lDeviceInfo":Laku;
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 308
    :try_start_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "pIMEI"    # Ljava/lang/String;
    .param p2, "pIMSI"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p0, :cond_1

    .line 1205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 2205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 42
    invoke-static {p0}, Lakv;->a(Landroid/content/Context;)Lakw;

    move-result-object v3

    .line 43
    .local v3, "lNewDevicePPC":Lakw;
    if-eqz v3, :cond_1

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "lBase64IMEI":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, "lBase64IMSI":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lamn;->b([B)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lamn;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3205
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 4205
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    const-string/jumbo v4, "EI"

    invoke-virtual {v3, v4, v1}, Lakw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v4, "SI"

    invoke-virtual {v3, v4, v2}, Lakw;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5102
    iget-object v4, v3, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_0

    .line 5103
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_2

    .line 5104
    iget-object v4, v3, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    .line 6018
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5109
    :cond_0
    :goto_1
    iget-object v4, v3, Lakw;->b:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_1

    .line 5110
    iget-object v4, v3, Lakw;->d:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 5111
    iget-object v4, v3, Lakw;->d:Landroid/content/Context;

    iget-object v5, v3, Lakw;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, v3, Lakw;->b:Landroid/content/SharedPreferences;

    .line 61
    .end local v1    # "lBase64IMEI":Ljava/lang/String;
    .end local v2    # "lBase64IMSI":Ljava/lang/String;
    .end local v3    # "lNewDevicePPC":Lakw;
    :cond_1
    return-void

    .line 49
    .restart local v1    # "lBase64IMEI":Ljava/lang/String;
    .restart local v2    # "lBase64IMSI":Ljava/lang/String;
    .restart local v3    # "lNewDevicePPC":Lakw;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 5106
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    iget-object v4, v3, Lakw;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Laku;
    .locals 25
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 92
    if-eqz p0, :cond_5

    .line 6064
    const-string/jumbo v19, "Alvin3"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 6065
    const-string/jumbo v20, "UTCommon"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 6066
    if-eqz v20, :cond_0

    if-nez v19, :cond_1

    .line 99
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lakv;->a(Landroid/content/Context;)Lakw;

    move-result-object v17

    .line 100
    .local v17, "lNewDevicePPC":Lakw;
    if-eqz v17, :cond_3

    .line 101
    const-string/jumbo v19, "EI"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lakw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, "lBase64IMEI":Ljava/lang/String;
    const-string/jumbo v19, "SI"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lakw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "lBase64IMSI":Ljava/lang/String;
    move-object v7, v8

    .line 6205
    .local v7, "lBase64DID":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 104
    if-nez v19, :cond_3

    .line 7205
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 104
    if-nez v19, :cond_3

    .line 8205
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 104
    if-nez v19, :cond_3

    .line 106
    const/4 v13, 0x0

    .line 107
    .local v13, "lIMEI":Ljava/lang/String;
    const/4 v15, 0x0

    .line 108
    .local v15, "lIMSI":Ljava/lang/String;
    const/4 v10, 0x0

    .line 110
    .local v10, "lDID":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/String;

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lamn;->a([B)[B

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .end local v13    # "lIMEI":Ljava/lang/String;
    .local v14, "lIMEI":Ljava/lang/String;
    :try_start_1
    new-instance v16, Ljava/lang/String;

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lamn;->a([B)[B

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 112
    .end local v15    # "lIMSI":Ljava/lang/String;
    .local v16, "lIMSI":Ljava/lang/String;
    :try_start_2
    new-instance v11, Ljava/lang/String;

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lamn;->a([B)[B

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .end local v10    # "lDID":Ljava/lang/String;
    .local v11, "lDID":Ljava/lang/String;
    move-object v10, v11

    .end local v11    # "lDID":Ljava/lang/String;
    .restart local v10    # "lDID":Ljava/lang/String;
    move-object/from16 v15, v16

    .end local v16    # "lIMSI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    move-object v13, v14

    .line 9205
    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    :goto_1
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 120
    if-nez v19, :cond_3

    .line 10205
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 120
    if-nez v19, :cond_3

    .line 11205
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 120
    if-nez v19, :cond_3

    .line 122
    new-instance v12, Laku;

    invoke-direct {v12}, Laku;-><init>()V

    .line 12096
    .local v12, "lDeviceInfo":Laku;
    iput-object v10, v12, Laku;->e:Ljava/lang/String;

    .line 13059
    iput-object v13, v12, Laku;->a:Ljava/lang/String;

    .line 13072
    iput-object v15, v12, Laku;->b:Ljava/lang/String;

    .line 174
    .end local v7    # "lBase64DID":Ljava/lang/String;
    .end local v8    # "lBase64IMEI":Ljava/lang/String;
    .end local v9    # "lBase64IMSI":Ljava/lang/String;
    .end local v10    # "lDID":Ljava/lang/String;
    .end local v17    # "lNewDevicePPC":Lakw;
    :goto_2
    return-object v12

    .line 6069
    .end local v12    # "lDeviceInfo":Laku;
    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v15    # "lIMSI":Ljava/lang/String;
    :cond_1
    const-string/jumbo v21, "EI"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 6070
    const-string/jumbo v22, "SI"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 6071
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 6074
    const-string/jumbo v22, "EI"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 6075
    const-string/jumbo v23, "SI"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 6077
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 6078
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    .line 6079
    const-string/jumbo v24, "EI"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6080
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6083
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 6084
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 6085
    const-string/jumbo v21, "SI"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6086
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 113
    .restart local v7    # "lBase64DID":Ljava/lang/String;
    .restart local v8    # "lBase64IMEI":Ljava/lang/String;
    .restart local v9    # "lBase64IMSI":Ljava/lang/String;
    .restart local v10    # "lDID":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    .restart local v17    # "lNewDevicePPC":Lakw;
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 116
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v4

    .line 118
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 14028
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "lBase64DID":Ljava/lang/String;
    .end local v8    # "lBase64IMEI":Ljava/lang/String;
    .end local v9    # "lBase64IMSI":Ljava/lang/String;
    .end local v10    # "lDID":Ljava/lang/String;
    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v15    # "lIMSI":Ljava/lang/String;
    :cond_3
    if-eqz p0, :cond_4

    .line 14029
    new-instance v18, Lakw;

    sget-object v19, Laks;->a:Ljava/lang/String;

    const-string/jumbo v19, "Alvin3"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lakw;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    .local v18, "ppc":Lakw;
    :goto_5
    if-eqz v18, :cond_5

    .line 135
    const-string/jumbo v19, "EI"

    invoke-virtual/range {v18 .. v19}, Lakw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "imei":Ljava/lang/String;
    const-string/jumbo v19, "SI"

    invoke-virtual/range {v18 .. v19}, Lakw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "imsi":Ljava/lang/String;
    const-string/jumbo v19, "DID"

    invoke-virtual/range {v18 .. v19}, Lakw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14205
    .local v3, "did":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 139
    if-nez v19, :cond_5

    .line 15205
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    .line 139
    if-nez v19, :cond_5

    .line 143
    const/4 v13, 0x0

    .line 144
    .restart local v13    # "lIMEI":Ljava/lang/String;
    const/4 v15, 0x0

    .line 146
    .restart local v15    # "lIMSI":Ljava/lang/String;
    :try_start_3
    new-instance v14, Ljava/lang/String;

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lamn;->a([B)[B

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 147
    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    :try_start_4
    new-instance v16, Ljava/lang/String;

    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lamn;->a([B)[B

    move-result-object v19

    const-string/jumbo v20, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v16    # "lIMSI":Ljava/lang/String;
    move-object/from16 v15, v16

    .end local v16    # "lIMSI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    move-object v13, v14

    .line 155
    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    :goto_6
    new-instance v12, Laku;

    invoke-direct {v12}, Laku;-><init>()V

    .line 16096
    .restart local v12    # "lDeviceInfo":Laku;
    iput-object v3, v12, Laku;->e:Ljava/lang/String;

    .line 17059
    iput-object v5, v12, Laku;->a:Ljava/lang/String;

    .line 17072
    iput-object v6, v12, Laku;->b:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p0

    invoke-static {v0, v13, v15}, Lakt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 14034
    .end local v3    # "did":Ljava/lang/String;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v12    # "lDeviceInfo":Laku;
    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v15    # "lIMSI":Ljava/lang/String;
    .end local v18    # "ppc":Lakw;
    :cond_4
    const/16 v18, 0x0

    goto :goto_5

    .line 149
    .restart local v3    # "did":Ljava/lang/String;
    .restart local v5    # "imei":Ljava/lang/String;
    .restart local v6    # "imsi":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    .restart local v18    # "ppc":Lakw;
    :catch_2
    move-exception v4

    .line 150
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :goto_7
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6

    .line 151
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v4

    .line 152
    .local v4, "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 165
    .end local v3    # "did":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v15    # "lIMSI":Ljava/lang/String;
    .end local v17    # "lNewDevicePPC":Lakw;
    .end local v18    # "ppc":Lakw;
    :cond_5
    new-instance v12, Laku;

    invoke-direct {v12}, Laku;-><init>()V

    .line 166
    .restart local v12    # "lDeviceInfo":Laku;
    invoke-static/range {p0 .. p0}, Lana;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 167
    .restart local v13    # "lIMEI":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lana;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 168
    .restart local v15    # "lIMSI":Ljava/lang/String;
    move-object v10, v13

    .line 18059
    .restart local v10    # "lDID":Ljava/lang/String;
    iput-object v13, v12, Laku;->a:Ljava/lang/String;

    .line 18072
    iput-object v15, v12, Laku;->b:Ljava/lang/String;

    .line 18096
    iput-object v10, v12, Laku;->e:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    invoke-static {v0, v13, v15}, Lakt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 151
    .end local v10    # "lDID":Ljava/lang/String;
    .end local v12    # "lDeviceInfo":Laku;
    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v3    # "did":Ljava/lang/String;
    .restart local v5    # "imei":Ljava/lang/String;
    .restart local v6    # "imsi":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    .restart local v17    # "lNewDevicePPC":Lakw;
    .restart local v18    # "ppc":Lakw;
    :catch_4
    move-exception v4

    move-object v13, v14

    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    goto :goto_8

    .line 149
    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    goto :goto_7

    .line 116
    .end local v3    # "did":Ljava/lang/String;
    .end local v5    # "imei":Ljava/lang/String;
    .end local v6    # "imsi":Ljava/lang/String;
    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v18    # "ppc":Lakw;
    .restart local v7    # "lBase64DID":Ljava/lang/String;
    .restart local v8    # "lBase64IMEI":Ljava/lang/String;
    .restart local v9    # "lBase64IMSI":Ljava/lang/String;
    .restart local v10    # "lDID":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    :catch_6
    move-exception v4

    move-object v13, v14

    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_4

    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    .restart local v16    # "lIMSI":Ljava/lang/String;
    :catch_7
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "lIMSI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    move-object v13, v14

    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_4

    .line 113
    .end local v13    # "lIMEI":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    :catch_8
    move-exception v4

    move-object v13, v14

    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_3

    .end local v13    # "lIMEI":Ljava/lang/String;
    .end local v15    # "lIMSI":Ljava/lang/String;
    .restart local v14    # "lIMEI":Ljava/lang/String;
    .restart local v16    # "lIMSI":Ljava/lang/String;
    :catch_9
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "lIMSI":Ljava/lang/String;
    .restart local v15    # "lIMSI":Ljava/lang/String;
    move-object v13, v14

    .end local v14    # "lIMEI":Ljava/lang/String;
    .restart local v13    # "lIMEI":Ljava/lang/String;
    goto/16 :goto_3
.end method
