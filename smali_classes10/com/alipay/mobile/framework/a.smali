.class public final Lcom/alipay/mobile/framework/a;
.super Ljava/lang/Object;
.source "BundleContext.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 1106
    .local v0, "resources":Landroid/content/res/Resources;
    sget-object v1, Lcom/alipay/mobile/context/a;->a:Landroid/content/Context;

    .line 23
    if-eqz v1, :cond_0

    .line 2106
    sget-object v1, Lcom/alipay/mobile/context/a;->a:Landroid/content/Context;

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    :cond_0
    return-object v0
.end method

.method public static b()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 3106
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    sget-object v1, Lcom/alipay/mobile/context/a;->a:Landroid/content/Context;

    .line 37
    if-eqz v1, :cond_0

    .line 4106
    sget-object v1, Lcom/alipay/mobile/context/a;->a:Landroid/content/Context;

    .line 38
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    :cond_0
    return-object v0
.end method
