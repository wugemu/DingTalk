.class Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;
.super Ljava/lang/Object;
.source "Live.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->initPlayer(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

.field final synthetic val$height:I

.field final synthetic val$isLandscape:I

.field final synthetic val$liveUrl:Ljava/lang/String;

.field final synthetic val$playerContentMode:I

.field final synthetic val$playerType:I

.field final synthetic val$poster:Ljava/lang/String;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$visitAuth:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$liveUrl:Ljava/lang/String;

    iput p3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$playerType:I

    iput p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$width:I

    iput p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$height:I

    iput p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$isLandscape:I

    iput p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$visitAuth:I

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$poster:Ljava/lang/String;

    iput p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$playerContentMode:I

    iput-object p10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;)Lhea;

    move-result-object v1

    .line 265
    .local v1, "liveDelegate":Lhea;
    if-eqz v1, :cond_0

    invoke-static {}, Lhea;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$liveUrl:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$playerType:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$width:I

    iget v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$height:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$isLandscape:I

    iget v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$visitAuth:I

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$poster:Ljava/lang/String;

    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$playerContentMode:I

    .line 1069
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v12

    new-instance v0, Lhea$1;

    invoke-direct/range {v0 .. v10}, Lhea$1;-><init>(Lhea;Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Ljava/lang/String;IIIIILjava/lang/String;I)V

    invoke-virtual {v12, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 268
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 291
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v11, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5$1;

    invoke-direct {v11, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;)V

    .line 288
    .local v11, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$liveUrl:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$playerType:I

    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$width:I

    iget v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$height:I

    iget v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$isLandscape:I

    iget v8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$visitAuth:I

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$poster:Ljava/lang/String;

    iget v10, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$5;->val$playerContentMode:I

    invoke-virtual/range {v2 .. v11}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->a(Ljava/lang/String;IIIIILjava/lang/String;ILcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
