.class Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;
.super Ljava/lang/Object;
.source "FragmentCompat.java"

# interfaces
.implements Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/devtools/common/android/FragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentManagerAccessorViaReflection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FRAGMENT_MANAGER:",
        "Ljava/lang/Object;",
        "FRAGMENT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taobao/weex/devtools/common/android/FragmentManagerAccessor",
        "<TFRAGMENT_MANAGER;TFRAGMENT;>;"
    }
.end annotation


# instance fields
.field private mFieldMAdded:Ljava/lang/reflect/Field;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    .local p0, "this":Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;, "Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection<TFRAGMENT_MANAGER;TFRAGMENT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedFragments(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFRAGMENT_MANAGER;)",
            "Ljava/util/List",
            "<TFRAGMENT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    .local p0, "this":Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;, "Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection<TFRAGMENT_MANAGER;TFRAGMENT;>;"
    .local p1, "fragmentManager":Ljava/lang/Object;, "TFRAGMENT_MANAGER;"
    iget-object v1, p0, Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;->mFieldMAdded:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mAdded"

    .line 95
    invoke-static {v1, v2}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->tryGetDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 99
    .local v0, "fieldMAdded":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    iput-object v0, p0, Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;->mFieldMAdded:Ljava/lang/reflect/Field;

    .line 105
    .end local v0    # "fieldMAdded":Ljava/lang/reflect/Field;
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;->mFieldMAdded:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/devtools/common/android/FragmentCompat$FragmentManagerAccessorViaReflection;->mFieldMAdded:Ljava/lang/reflect/Field;

    .line 106
    invoke-static {v1, p1}, Lcom/taobao/weex/devtools/common/ReflectionUtil;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 105
    goto :goto_0
.end method
