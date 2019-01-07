.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$1;
.super Ljava/lang/Object;
.source "H5TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;->createTabView(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;)Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 297
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;

    .line 298
    .local v0, "tabView":Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$TabView;->getTab()Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5TabLayout$Tab;->select()V

    .line 299
    return-void
.end method
