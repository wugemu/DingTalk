.class final Lhkr$a;
.super Ljava/lang/Object;
.source "LocationBrowserActivityPermissionCompat.java"

# interfaces
.implements Lbyw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhkr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhkr$a;->a:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object p2, p0, Lhkr$a;->b:Landroid/os/Bundle;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lhkr$a;-><init>(Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 77
    iget-object v1, p0, Lhkr$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;

    .line 78
    .local v0, "target":Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lhkr;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 80
    invoke-static {}, Lhkr;->a()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 85
    iget-object v1, p0, Lhkr$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;

    .line 86
    .local v0, "target":Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lhkr;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lhkr;->a()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 93
    iget-object v1, p0, Lhkr$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;

    .line 94
    .local v0, "target":Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/location/LocationBrowserActivity;->a()V

    goto :goto_0
.end method
