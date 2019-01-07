.class final Lbxp$b;
.super Ljava/lang/Object;
.source "CreateLiveActivityPermissionCompat.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbxp$b;->a:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lbxp$b;-><init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 121
    iget-object v1, p0, Lbxp$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .line 122
    .local v0, "target":Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lbxp;->b()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcd;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 124
    invoke-static {}, Lbxp;->b()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 129
    iget-object v1, p0, Lbxp$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;

    .line 130
    .local v0, "target":Lcom/alibaba/android/dingtalk/live/ui/anchor/CreateLiveActivity;
    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {}, Lbxp;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lbxp;->b()[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method
