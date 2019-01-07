.class Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;
.super Ljava/lang/Object;
.source "H5SessionTabBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

.field final synthetic val$bridgeContext:Liny;

.field final synthetic val$event:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->val$bridgeContext:Liny;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->this$0:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->val$bridgeContext:Liny;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar$1;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;->access$000(Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabBar;Lcom/alipay/mobile/h5container/api/H5Event;Liny;Ljava/lang/String;)V

    .line 205
    return-void
.end method
