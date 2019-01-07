.class final Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;
.super Lcom/taobao/weex/devtools/common/android/FragmentCompat;
.source "FragmentCompatFramework.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;,
        Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;,
        Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkJellyBean;,
        Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/devtools/common/android/FragmentCompat",
        "<",
        "Landroid/app/Fragment;",
        "Landroid/app/DialogFragment;",
        "Landroid/app/FragmentManager;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDialogFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;

.field private static final sFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

.field private static final sFragmentActivityAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;

.field private static final sFragmentManagerAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection",
            "<",
            "Landroid/app/FragmentManager;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentManagerAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    .line 31
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;

    invoke-direct {v0, v2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$1;)V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentActivityAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 36
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkJellyBean;

    invoke-direct {v0, v2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkJellyBean;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$1;)V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

    .line 41
    :goto_0
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;

    sget-object v1, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

    invoke-direct {v0, v1}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentAccessor;)V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sDialogFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

    invoke-direct {v0, v2}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;-><init>(Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$1;)V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic forDialogFragment()Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->forDialogFragment()Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;

    move-result-object v0

    return-object v0
.end method

.method public final forDialogFragment()Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sDialogFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$DialogFragmentAccessorFramework;

    return-object v0
.end method

.method public final bridge synthetic forFragment()Lcom/taobao/weex/devtools/common/android/FragmentAccessor;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->forFragment()Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

    move-result-object v0

    return-object v0
.end method

.method public final forFragment()Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentAccessorFrameworkHoneycomb;

    return-object v0
.end method

.method public final bridge synthetic forFragmentActivity()Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->forFragmentActivity()Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;

    move-result-object v0

    return-object v0
.end method

.method public final forFragmentActivity()Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentActivityAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework$FragmentActivityAccessorFramework;

    return-object v0
.end method

.method public final forFragmentManager()Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection",
            "<",
            "Landroid/app/FragmentManager;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->sFragmentManagerAccessor:Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    return-object v0
.end method

.method public final bridge synthetic forFragmentManager()Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;->forFragmentManager()Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;

    move-result-object v0

    return-object v0
.end method

.method public final getDialogFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/DialogFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Landroid/app/DialogFragment;

    return-object v0
.end method

.method public final getFragmentActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const-class v0, Landroid/app/Activity;

    return-object v0
.end method

.method public final getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Landroid/app/Fragment;

    return-object v0
.end method
