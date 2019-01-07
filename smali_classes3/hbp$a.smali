.class final Lhbp$a;
.super Ljava/lang/Object;
.source "PickerFragmentPermissionCompat.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbp;
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
            "Lcom/alibaba/laiwang/photokit/picker/PickerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhbp$a;->a:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lhbp$a;-><init>(Lcom/alibaba/laiwang/photokit/picker/PickerFragment;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 120
    iget-object v1, p0, Lhbp$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 121
    .local v0, "target":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {}, Lhbp;->b()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->requestPermissions([Ljava/lang/String;I)V

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lhbp;->b()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->requestPermissions:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 128
    iget-object v1, p0, Lhbp$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;

    .line 129
    .local v0, "target":Lcom/alibaba/laiwang/photokit/picker/PickerFragment;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lhbp;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lhbp;->b()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;->onDenied:Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/alibaba/android/dingtalk/permission/compat/statistic/Statistics$Type;)V

    goto :goto_0
.end method
