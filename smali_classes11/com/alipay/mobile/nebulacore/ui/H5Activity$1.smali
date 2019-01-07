.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;
.super Lcom/alipay/mobile/framework/loading/LoadingView;
.source "H5Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->showFrameworkLoadingView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/framework/loading/LoadingView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method
