.class Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;
.super Ljava/lang/Object;
.source "Certify.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->takePhoto(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

.field final synthetic val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic val$takeMode:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$takeMode:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onProgress(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "i"    # I

    .prologue
    .line 181
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->onProgress(Landroid/os/Bundle;I)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 133
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz p1, :cond_2

    .line 135
    const-string/jumbo v9, "key_certify_url"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, "url":Ljava/lang/String;
    const-string/jumbo v9, "key_certify_code"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v9, "key_certify_name"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v9, "key_certify_err_code"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "errCode":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "url"

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$takeMode:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    sget-object v10, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    if-ne v9, v10, :cond_3

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    :cond_0
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    invoke-static {v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lhdn$k;->dt_certify_take_photo_id_card_recognize_fail:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "reason":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .local v4, "errObj":Lorg/json/JSONObject;
    const-string/jumbo v9, "errorMessage"

    invoke-virtual {v1, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string/jumbo v9, "errorMessage"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v9, "errorCode"

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v9, v4, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 171
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "errCode":Ljava/lang/String;
    .end local v4    # "errObj":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "reason":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 153
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "errCode":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v5, "info":Lorg/json/JSONObject;
    const-string/jumbo v9, "code"

    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    const-string/jumbo v9, "name"

    invoke-virtual {v5, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v9, "info"

    invoke-virtual {v1, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "errCode":Ljava/lang/String;
    .end local v5    # "info":Lorg/json/JSONObject;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "url":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v9, v1, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "errCode":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "url":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 159
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .restart local v4    # "errObj":Lorg/json/JSONObject;
    const-string/jumbo v9, "errorMessage"

    const-string/jumbo v10, "key_certify_err_msg"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string/jumbo v9, "errorMessage"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string/jumbo v9, "errorCode"

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->val$req:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v10, v10, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-static {v9, v4, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 166
    .end local v4    # "errObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
