.class Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

.field final synthetic val$isTransparent:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->this$0:Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->val$isTransparent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->this$0:Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround$1;->val$isTransparent:Z

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;->access$000(Lcom/alipay/mobile/nebulacore/util/AndroidBug5497Workaround;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5AndroidBug5497Workaround"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
