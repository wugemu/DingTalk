.class public Leyx;
.super Ljava/lang/Object;
.source "TelePermissionCheckUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Leyx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyx;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcpi$a;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    const/4 v3, 0x1

    .line 80
    invoke-static {p0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1, v3}, Lcpi$a;->a(Z)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    new-instance v1, Leyx$2;

    invoke-direct {v1, p1}, Leyx$2;-><init>(Lcpi$a;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Lcpi$a;)V
    .locals 4
    .param p0, "context"    # Landroid/support/v4/app/Fragment;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    const/4 v3, 0x1

    .line 44
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1, v3}, Lcpi$a;->a(Z)V

    goto :goto_0

    .line 53
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    new-instance v1, Leyx$1;

    invoke-direct {v1, p1}, Leyx$1;-><init>(Lcpi$a;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-static {p0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    :goto_0
    return v0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Lcpi$a;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-static {p0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1, v3}, Lcpi$a;->a(Z)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    new-instance v1, Leyx$3;

    invoke-direct {v1, p1}, Leyx$3;-><init>(Lcpi$a;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static b(Landroid/support/v4/app/Fragment;Lcpi$a;)V
    .locals 4
    .param p0, "context"    # Landroid/support/v4/app/Fragment;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    const/4 v3, 0x1

    .line 232
    if-nez p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    if-eqz p1, :cond_0

    .line 237
    invoke-interface {p1, v3}, Lcpi$a;->a(Z)V

    goto :goto_0

    .line 242
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    new-instance v1, Leyx$5;

    invoke-direct {v1, p1}, Leyx$5;-><init>(Lcpi$a;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/support/v4/app/Fragment;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 113
    invoke-static {p0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    :goto_0
    return v0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Lcpi$a;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "listener"    # Lcpi$a;

    .prologue
    const/4 v3, 0x1

    .line 196
    if-nez p0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {p0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-interface {p1, v3}, Lcpi$a;->a(Z)V

    goto :goto_0

    .line 205
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    new-instance v1, Leyx$4;

    invoke-direct {v1, p1}, Leyx$4;-><init>(Lcpi$a;)V

    invoke-static {p0, v3, v0, v1}, Lbyy;->a(Landroid/app/Activity;I[Ljava/lang/String;Lbzc;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 189
    invoke-static {p0}, Leyx;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return v0

    :cond_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 33
    :goto_0
    return v0

    .line 31
    :cond_0
    const-string/jumbo v1, "permission_check_list"

    invoke-static {p0, v1, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    .local v0, "isInWhiteList":Z
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Leyx;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "White list "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
