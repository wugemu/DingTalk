.class final Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$6;
.super Ljava/lang/Object;
.source "AddMutiExternalActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$6;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 330
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 332
    .local v0, "builder":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;
    const-string/jumbo v4, "LocalContactFragment"

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->g(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 333
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 334
    const/16 v4, 0x33

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 335
    const-string/jumbo v4, "IDENTIFIY_ADD_MUTI_EXTERNAL"

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 336
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->m(Z)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v2, "uncheckedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$6;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 340
    iget-object v4, p0, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity$6;->a:Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;->a(Lcom/alibaba/android/user/external/list/AddMutiExternalActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/external/ExternalEditContract$a;

    .line 341
    .local v1, "objectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    if-eqz v5, :cond_0

    .line 342
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 343
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, v1, Lcom/alibaba/android/user/external/ExternalEditContract$a;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    iput-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 344
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v1    # "objectWrapper":Lcom/alibaba/android/user/external/ExternalEditContract$a;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 349
    const-string/jumbo v4, "intent_key_contact_choose_request"

    .line 2053
    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 349
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 350
    return-object p1
.end method
