.class final Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;
.super Ljava/lang/Object;
.source "WXBindingXModule.java"

# interfaces
.implements Laoa$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Laoa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs findViewBy(Ljava/lang/String;[Ljava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "extension"    # [Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 272
    array-length v1, p2

    if-lez v1, :cond_0

    aget-object v1, p2, v2

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 273
    :cond_0
    const/4 v1, 0x0

    .line 276
    :goto_0
    return-object v1

    .line 275
    :cond_1
    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/String;

    .line 276
    .local v0, "instanceId":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findViewByRef(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
