.class Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;
.super Ljava/lang/Object;
.source "FragmentCompatSupportLib.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentActivityAccessorSupportLib"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/android/FragmentActivityAccessor",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcn;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$1;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager(Landroid/support/v4/app/FragmentActivity;)Lcn;
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFragmentManager(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/devtools/common/android/FragmentCompatSupportLib$FragmentActivityAccessorSupportLib;->getFragmentManager(Landroid/support/v4/app/FragmentActivity;)Lcn;

    move-result-object v0

    return-object v0
.end method
