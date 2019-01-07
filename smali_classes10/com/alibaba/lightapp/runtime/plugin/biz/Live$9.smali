.class Lcom/alibaba/lightapp/runtime/plugin/biz/Live$9;
.super Ljava/lang/Object;
.source "Live.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->showPlayer(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 362
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Live$9;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Live;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Live;->access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Live;)Lhea;

    move-result-object v0

    .line 363
    .local v0, "liveDelegate":Lhea;
    if-eqz v0, :cond_1

    invoke-static {}, Lhea;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1180
    iget-object v1, v0, Lhea;->b:Lbyt;

    if-eqz v1, :cond_0

    .line 1181
    iget-object v1, v0, Lhea;->b:Lbyt;

    invoke-virtual {v1}, Lbyt;->c()V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->l()V

    goto :goto_0
.end method
