.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;
.super Lcmi;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->setRule(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhjl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

.field final synthetic val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

.field final synthetic val$limitTips:Ljava/lang/String;

.field final synthetic val$maxUsers:I

.field final synthetic val$multiple:Z

.field final synthetic val$orgId:J

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;ZLjava/lang/String;ILcom/alibaba/android/dingtalk/userbase/model/FilterObject;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iput-wide p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$orgId:J

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$title:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$multiple:Z

    iput-object p6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$limitTips:Ljava/lang/String;

    iput p7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$maxUsers:I

    iput-object p8, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$filter:Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    iput-object p9, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    const/16 v1, 0x9

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3700(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1629
    return-void
.end method

.method public onLoadSuccess(Lhjl;)V
    .locals 5
    .param p1, "microAppRuleUsersModel"    # Lhjl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1590
    iget-object v2, p1, Lhjl;->a:Ljava/util/List;

    .line 1591
    .local v2, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p1, Lhjl;->b:Ljava/util/List;

    .line 1592
    .local v0, "deptIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    invoke-static {v3, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$3500(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1595
    .local v1, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;Ljava/util/List;)V

    invoke-virtual {v3, v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 1624
    return-void
.end method

.method public bridge synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1587
    check-cast p1, Lhjl;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$12;->onLoadSuccess(Lhjl;)V

    return-void
.end method
