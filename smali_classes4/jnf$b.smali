.class final Ljnf$b;
.super Ljava/lang/Object;
.source "RecognizeCardFragmentV2PermissionCompat.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljnf;
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
            "Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V
    .locals 1
    .param p1, "target"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljnf$b;->a:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;B)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Ljnf$b;-><init>(Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Ljnf$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .line 121
    .local v0, "target":Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Ljnf;->b()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->requestPermissions([Ljava/lang/String;I)V

    .line 123
    invoke-virtual {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ljnf;->b()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Ljnf$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;

    .line 129
    .local v0, "target":Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ljnf;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/taobao/ma/ui/recognition/RecognizeCardFragmentV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Ljnf;->b()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method
