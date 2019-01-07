.class public final Lbzy;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static final a:Lfw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfw",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 30
    new-instance v0, Lfw;

    invoke-direct {v0}, Lfw;-><init>()V

    .line 31
    sput-object v0, Lbzy;->a:Lfw;

    const-string/jumbo v1, "android.permission.USE_SIP"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lbzy;->a:Lfw;

    const-string/jumbo v1, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lbzy;->a:Lfw;

    const-string/jumbo v1, "android.permission.READ_CALL_LOG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lbzy;->a:Lfw;

    const-string/jumbo v1, "android.permission.WRITE_CALL_LOG"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lbzy;->a:Lfw;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lbzy;->a:Lfw;

    const-string/jumbo v1, "android.permission.BODY_SENSORS"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    const/16 v8, 0x17

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 55
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1244
    :cond_0
    :goto_0
    return v2

    .line 59
    :cond_1
    invoke-static {p0, p1}, Lbzv;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_3

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 77
    :cond_3
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_4
    move v3, v1

    :goto_2
    packed-switch v3, :pswitch_data_2

    .line 3016
    :cond_5
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_e

    .line 3017
    :cond_6
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 3018
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3017
    invoke-static {p0, p1, v3, v5, v6}, Landroid/support/v4/content/PermissionChecker;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    .local v1, "op":I
    :cond_7
    :goto_3
    if-nez v1, :cond_11

    .local v2, "result":Z
    :goto_4
    goto :goto_0

    .line 66
    .end local v1    # "op":I
    .end local v2    # "result":Z
    :sswitch_0
    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    .line 1204
    :pswitch_0
    if-eqz p0, :cond_8

    .line 1207
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_8

    .line 1208
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0

    :cond_8
    move v2, v4

    .line 68
    goto :goto_0

    .line 1219
    :pswitch_1
    if-eqz p0, :cond_9

    .line 1222
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_9

    .line 1223
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v2

    goto/16 :goto_0

    :cond_9
    move v2, v4

    .line 70
    goto/16 :goto_0

    .line 1234
    :pswitch_2
    if-eqz p0, :cond_a

    .line 1237
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_0

    .line 1238
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1239
    if-eqz v3, :cond_a

    .line 1240
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    move v2, v4

    .line 72
    goto/16 :goto_0

    .line 77
    :pswitch_3
    const-string/jumbo v5, "Xiaomi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto/16 :goto_2

    .line 79
    :pswitch_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_5

    .line 2101
    invoke-static {p0, p1}, Lcd;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 2102
    if-nez v3, :cond_d

    .line 2105
    const-string/jumbo v3, "appops"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 2106
    if-eqz v3, :cond_d

    .line 2107
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2108
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 2109
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 2110
    if-nez v3, :cond_c

    .line 81
    .restart local v2    # "result":Z
    :cond_b
    :goto_5
    goto/16 :goto_0

    .line 2113
    .end local v2    # "result":Z
    :cond_c
    const/4 v5, 0x4

    if-ne v3, v5, :cond_d

    invoke-static {p0}, Lbzz;->a(Landroid/content/Context;)I

    move-result v3

    if-lt v3, v8, :cond_b

    :cond_d
    move v2, v4

    .line 2122
    goto :goto_5

    .line 3020
    :cond_e
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 3021
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3023
    invoke-virtual {p0, p1, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eq v5, v1, :cond_7

    .line 3027
    invoke-static {p1}, Lcad;->a(Ljava/lang/String;)I

    move-result v5

    .line 3028
    if-eq v5, v1, :cond_10

    .line 3032
    if-nez v3, :cond_f

    .line 3033
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 3034
    if-eqz v3, :cond_7

    array-length v7, v3

    if-lez v7, :cond_7

    .line 3037
    const/4 v7, 0x0

    aget-object v3, v3, v7

    .line 3040
    :cond_f
    invoke-static {p0, v6, v5, v3}, Lcad;->a(Landroid/content/Context;IILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 3041
    if-eqz v3, :cond_10

    .line 3042
    const/4 v1, -0x2

    goto/16 :goto_3

    :cond_10
    move v1, v4

    .line 3045
    goto/16 :goto_3

    .restart local v1    # "op":I
    :cond_11
    move v2, v4

    .line 86
    goto/16 :goto_4

    .line 87
    .end local v1    # "op":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "hasSelfPermission, error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4012
    const-string/jumbo v4, "permission"

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto/16 :goto_0

    .line 66
    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7be1381d -> :sswitch_1
        -0x5d1492dd -> :sswitch_0
        0x69eee241 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x63e01f25
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 46
    sget-object v1, Lbzy;->a:Lfw;

    invoke-virtual {v1, p0}, Lfw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 47
    .local v0, "minVersion":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
