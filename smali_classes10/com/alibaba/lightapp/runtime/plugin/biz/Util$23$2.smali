.class Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;

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
    .line 2888
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Util;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23$2;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Util$23;->val$videoPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Util;->access$6700(Lcom/alibaba/lightapp/runtime/plugin/biz/Util;Ljava/util/List;)V

    .line 2889
    return-void
.end method
