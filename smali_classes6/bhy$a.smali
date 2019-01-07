.class final Lbhy$a;
.super Ljava/lang/Object;
.source "DingDetailFragmentPermissionCompat.java"

# interfaces
.implements Lbyw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbhy;
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
            "Lcom/alibaba/android/ding/fragment/DingDetailFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/amap/api/services/core/PoiItem;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Landroid/app/Activity;Lcom/amap/api/services/core/PoiItem;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "poiItem"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbhy$a;->a:Ljava/lang/ref/WeakReference;

    .line 74
    iput-object p2, p0, Lbhy$a;->b:Landroid/app/Activity;

    .line 75
    iput-object p3, p0, Lbhy$a;->c:Lcom/amap/api/services/core/PoiItem;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Landroid/app/Activity;Lcom/amap/api/services/core/PoiItem;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lbhy$a;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;Landroid/app/Activity;Lcom/amap/api/services/core/PoiItem;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 80
    iget-object v1, p0, Lbhy$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 81
    .local v0, "target":Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lbhy;->a()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lbhy;->a()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 88
    iget-object v1, p0, Lbhy$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 89
    .local v0, "target":Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lbhy;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lbhy;->a()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 96
    iget-object v1, p0, Lbhy$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .line 97
    .local v0, "target":Lcom/alibaba/android/ding/fragment/DingDetailFragment;
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lbhy$a;->b:Landroid/app/Activity;

    iget-object v2, p0, Lbhy$a;->c:Lcom/amap/api/services/core/PoiItem;

    invoke-static {v1, v2}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Landroid/app/Activity;Lcom/amap/api/services/core/PoiItem;)V

    goto :goto_0
.end method
