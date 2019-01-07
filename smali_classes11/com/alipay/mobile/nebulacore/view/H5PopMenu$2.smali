.class Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;
.super Ljava/lang/Object;
.source "H5PopMenu.java"

# interfaces
.implements Lioi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->getMenuIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->this$0:Lcom/alipay/mobile/nebulacore/view/H5PopMenu;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$2;->val$name:Ljava/lang/String;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu;->access$000(Lcom/alipay/mobile/nebulacore/view/H5PopMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-void
.end method
