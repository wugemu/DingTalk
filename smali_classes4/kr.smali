.class public final Lkr;
.super Ljava/lang/Object;
.source "AppLifecycle.java"


# static fields
.field private static a:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static b:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lkr$1;

    invoke-direct {v0}, Lkr$1;-><init>()V

    sput-object v0, Lkr;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 62
    new-instance v0, Lkr$2;

    invoke-direct {v0}, Lkr$2;-><init>()V

    sput-object v0, Lkr;->b:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 20
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lkr;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 21
    invoke-static {}, Lic;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lkr;->b:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 23
    :cond_0
    return-void
.end method
