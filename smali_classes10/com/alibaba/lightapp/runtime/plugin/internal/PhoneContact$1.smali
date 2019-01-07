.class Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;
.super Lbzd;
.source "PhoneContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->checkPermissionAndUpload(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public grant()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e()V

    .line 144
    const-string/jumbo v0, "phonecontact"

    const-string/jumbo v1, "PhoneContact"

    const-string/jumbo v2, "checkPermissionAndUpload and grant, the followed is to upload contact"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "2"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 150
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 151
    const-string/jumbo v0, "phonecontact"

    const-string/jumbo v1, "PhoneContact"

    const-string/jumbo v2, "checkPermissionAndUpload and deny"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "3"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onNeverAsk()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 158
    const-string/jumbo v0, "phonecontact"

    const-string/jumbo v1, "PhoneContact"

    const-string/jumbo v2, "checkPermissionAndUpload and deny"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "4"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$1;->val$callbackId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 160
    return-void
.end method
