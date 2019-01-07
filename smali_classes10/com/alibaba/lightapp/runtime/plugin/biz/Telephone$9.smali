.class Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;
.super Ljava/lang/Object;
.source "Telephone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;->showQuickcallListMenu(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

.field final synthetic val$agentId:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$corpId:Ljava/lang/String;

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$typeList:Ljava/util/List;

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$phoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$uid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$content:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$agentId:Ljava/lang/String;

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$corpId:Ljava/lang/String;

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$typeList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 574
    const-class v1, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;

    invoke-static {v1}, Lhqv;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;

    .line 575
    .local v0, "quickCallProxy":Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$uid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$content:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$agentId:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$corpId:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;->val$typeList:Ljava/util/List;

    new-instance v9, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;

    invoke-direct {v9, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Telephone$9;)V

    invoke-interface/range {v0 .. v9}, Lcom/alibaba/lightapp/runtime/rpc/proxy/TeleConfQuickCallProxy;->quickCallList(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcma;)V

    .line 634
    return-void
.end method
