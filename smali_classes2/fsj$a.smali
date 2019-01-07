.class final Lfsj$a;
.super Ljava/lang/Object;
.source "MyConnectionsActivityPermissionCompat.java"

# interfaces
.implements Lbyw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfsj;
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
            "Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p2, "listener"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfsj$a;->a:Ljava/lang/ref/WeakReference;

    .line 71
    iput-object p2, p0, Lfsj$a;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    .param p2, "x1"    # Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lfsj$a;-><init>(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 76
    iget-object v1, p0, Lfsj$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .line 77
    .local v0, "target":Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lfsj;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 79
    invoke-static {}, Lfsj;->a()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 84
    iget-object v1, p0, Lfsj$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .line 85
    .local v0, "target":Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a()V

    .line 87
    invoke-static {}, Lfsj;->a()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 92
    iget-object v1, p0, Lfsj$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;

    .line 93
    .local v0, "target":Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;
    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lfsj$a;->b:Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity;->a(Lcom/alibaba/android/user/namecard/connection/MyConnectionsActivity$a;)V

    goto :goto_0
.end method
