.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lhqu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->createGroupBeforeTransfer(JLjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhqu",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

.field final synthetic val$orgId:J


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->val$orgId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # Ljava/lang/String;
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x4

    .line 601
    invoke-static {v3, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 592
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 595
    .local p1, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$6;->val$orgId:J

    invoke-static {v0, v2, v3, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/util/List;)V

    .line 596
    return-void
.end method
