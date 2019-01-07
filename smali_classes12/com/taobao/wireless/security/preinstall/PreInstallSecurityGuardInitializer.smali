.class public final Lcom/taobao/wireless/security/preinstall/PreInstallSecurityGuardInitializer;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Initialize(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/taobao/wireless/security/preinstall/PreInstallSecurityGuardInitializer;->Initialize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static Initialize(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInitializer()Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/alibaba/wireless/security/open/initialize/a;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alibaba/wireless/security/open/initialize/a;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Landroid/content/Context;Ljava/lang/String;Z)I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method
