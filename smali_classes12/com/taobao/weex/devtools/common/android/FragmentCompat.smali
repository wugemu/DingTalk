.class public abstract Lcom/taobao/weex/devtools/common/android/FragmentCompat;
.super Ljava/lang/Object;
.source "FragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FRAGMENT:",
        "Ljava/lang/Object;",
        "DIA",
        "LOG_FRAGMENT:Ljava/lang/Object;",
        "FRAGMENT_MANAGER:",
        "Ljava/lang/Object;",
        "FRAGMENT_ACTIVITY:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static sFrameworkInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

.field private static final sHasSupportFragment:Z

.field private static sSupportInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "android.support.v4.app.Fragment"

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sHasSupportFragment:Z

    .line 51
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    .local p0, "this":Lcom/taobao/weex/devtools/common/android/FragmentCompat;, "Lcom/taobao/weex/devtools/common/android/FragmentCompat<TFRAGMENT;TDIALOG_FRAGMENT;TFRAGMENT_MANAGER;TFRAGMENT_ACTIVITY;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static getFrameworkInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sFrameworkInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatFramework;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sFrameworkInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    .line 59
    :cond_0
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sFrameworkInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    return-object v0
.end method

.method public static getSupportLibInstance()Lcom/taobao/weex/devtools/common/android/FragmentCompat;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sSupportInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sHasSupportFragment:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib;

    invoke-direct {v0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib;-><init>()V

    sput-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sSupportInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    .line 68
    :cond_0
    sget-object v0, Lcom/taobao/weex/devtools/common/android/FragmentCompat;->sSupportInstance:Lcom/taobao/weex/devtools/common/android/FragmentCompat;

    return-object v0
.end method


# virtual methods
.method public abstract forDialogFragment()Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/common/android/DialogFragmentAccessor",
            "<TDIA",
            "LOG_FRAGMENT;",
            "TFRAGMENT;TFRAGMENT_MANAGER;>;"
        }
    .end annotation
.end method

.method public abstract forFragment()Lcom/taobao/weex/devtools/common/android/FragmentAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/common/android/FragmentAccessor",
            "<TFRAGMENT;TFRAGMENT_MANAGER;>;"
        }
    .end annotation
.end method

.method public abstract forFragmentActivity()Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor",
            "<TFRAGMENT_ACTIVITY;TFRAGMENT_MANAGER;>;"
        }
    .end annotation
.end method

.method public abstract forFragmentManager()Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor",
            "<TFRAGMENT_MANAGER;TFRAGMENT;>;"
        }
    .end annotation
.end method

.method public abstract getDialogFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TDIA",
            "LOG_FRAGMENT;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFragmentActivityClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TFRAGMENT_ACTIVITY;>;"
        }
    .end annotation
.end method

.method public abstract getFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TFRAGMENT;>;"
        }
    .end annotation
.end method
