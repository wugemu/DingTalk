.class public Lcom/alipay/share/sdk/plugin/APVersionCheck;
.super Ljava/lang/Object;
.source "APVersionCheck.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/share/sdk/plugin/APVersionCheck;->context:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public getZFBAppVersionCode()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/alipay/share/sdk/plugin/APVersionCheck;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    .line 21
    const/16 v4, 0x40

    .line 20
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 22
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 24
    :catch_0
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method
