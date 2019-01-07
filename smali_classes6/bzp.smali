.class public final Lbzp;
.super Ljava/lang/Object;
.source "PermissionPageManager.java"


# static fields
.field private static a:Lbzo;

.field private static b:Lbzo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lbzn;

    invoke-direct {v0}, Lbzn;-><init>()V

    sput-object v0, Lbzp;->b:Lbzo;

    .line 33
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 47
    :goto_1
    return-void

    .line 33
    :sswitch_0
    const-string/jumbo v2, "Xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "Meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "Huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "OPPO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 35
    :pswitch_0
    new-instance v0, Lbzt;

    invoke-direct {v0}, Lbzt;-><init>()V

    sput-object v0, Lbzp;->a:Lbzo;

    goto :goto_1

    .line 38
    :pswitch_1
    new-instance v0, Lbzr;

    invoke-direct {v0}, Lbzr;-><init>()V

    sput-object v0, Lbzp;->a:Lbzo;

    goto :goto_1

    .line 41
    :pswitch_2
    new-instance v0, Lbzq;

    invoke-direct {v0}, Lbzq;-><init>()V

    sput-object v0, Lbzp;->a:Lbzo;

    goto :goto_1

    .line 44
    :pswitch_3
    new-instance v0, Lbzs;

    invoke-direct {v0}, Lbzs;-><init>()V

    sput-object v0, Lbzp;->a:Lbzo;

    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e8471f9 -> :sswitch_2
        -0x63e01f25 -> :sswitch_0
        0x251fa0 -> :sswitch_3
        0x46c94ac -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 114
    const/high16 v0, 0x14000000

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x17

    const/4 v2, 0x0

    .line 50
    if-nez p0, :cond_0

    .line 61
    :goto_0
    return v2

    .line 1065
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 54
    .local v0, "result":Z
    :goto_1
    if-nez v0, :cond_1

    .line 1100
    sget-object v1, Lbzp;->a:Lbzo;

    if-eqz v1, :cond_6

    .line 1101
    sget-object v1, Lbzp;->a:Lbzo;

    invoke-interface {v1, p0}, Lbzo;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1102
    invoke-static {p0, v1}, Lbzp;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 1104
    .end local v0    # "result":Z
    :goto_2
    if-nez v0, :cond_1

    .line 1105
    sget-object v1, Lbzp;->b:Lbzo;

    invoke-interface {v1, p0}, Lbzo;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1106
    invoke-static {p0, v1}, Lbzp;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 57
    .restart local v0    # "result":Z
    :cond_1
    if-nez v0, :cond_2

    .line 58
    sget v1, Lbyz$a;->dt_permission_goto_settings_failed:I

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "gotoPermissionPage, result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2012
    const-string/jumbo v2, "permission"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 61
    goto :goto_0

    .line 1070
    .end local v0    # "result":Z
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_3
    packed-switch v1, :pswitch_data_0

    :cond_5
    move v1, v2

    :goto_4
    move v0, v1

    .line 1094
    goto :goto_1

    .line 1070
    :sswitch_0
    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_3

    :sswitch_1
    const-string/jumbo v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :sswitch_2
    const-string/jumbo v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    .line 1072
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_5

    .line 1073
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1075
    invoke-static {p0, v1}, Lbzp;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_4

    .line 1079
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_5

    .line 1080
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.action.MANAGE_WRITE_SETTINGS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1082
    invoke-static {p0, v1}, Lbzp;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    goto :goto_4

    .line 1086
    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_5

    .line 1087
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "package:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1089
    invoke-static {p0, v1}, Lbzp;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    goto/16 :goto_4

    .restart local v0    # "result":Z
    :cond_6
    move v0, v2

    goto/16 :goto_2

    .line 1070
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
.end method
