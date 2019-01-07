.class Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

.field final synthetic val$index:[I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;[I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->val$index:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 366
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;->val$extensionObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->val$index:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 367
    .local v0, "oid":J
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;->val$corpId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact$3;->val$userList:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Contact;JLjava/lang/String;Ljava/util/List;)V

    .line 369
    return-void
.end method
