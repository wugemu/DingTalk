.class Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;
.super Landroid/content/BroadcastReceiver;
.source "Bizcard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "com.workapp.choose.people.from.new.contact"

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 107
    const-string/jumbo v9, "choose_user_identities"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 108
    .local v2, "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v12, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 140
    .end local v2    # "identityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string/jumbo v9, "action_name_card_select_company"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 111
    const-string/jumbo v9, "org_name"

    invoke-static {p2, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "orgName":Ljava/lang/String;
    const-string/jumbo v9, "org_id"

    const-wide/16 v10, 0x0

    invoke-static {p2, v9, v10, v11}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v6

    .line 113
    .local v6, "orgId":J
    const-string/jumbo v9, "title"

    invoke-static {p2, v9}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v9, "intent_key_org_authed"

    invoke-static {p2, v9, v12}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    .line 115
    .local v3, "isAuthed":Z
    if-nez v5, :cond_2

    .line 116
    const-string/jumbo v5, ""

    .line 118
    :cond_2
    if-nez v8, :cond_3

    .line 119
    const-string/jumbo v8, ""

    .line 122
    :cond_3
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "orgName"

    invoke-virtual {v4, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string/jumbo v9, "orgId"

    invoke-virtual {v4, v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v9, "title"

    invoke-virtual {v4, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v9, "orgAuthed"

    invoke-virtual {v4, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 127
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v10, v11, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "isAuthed":Z
    .end local v5    # "orgName":Ljava/lang/String;
    .end local v6    # "orgId":J
    .end local v8    # "title":Ljava/lang/String;
    :cond_4
    const-string/jumbo v9, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 133
    sget v9, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->UPLOAD_AVATAR_TAG:I

    const-string/jumbo v10, "activity_identify"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_0

    .line 134
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    invoke-static {v9, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 136
    :cond_5
    const-string/jumbo v9, "com.workapp.user.card_friend"

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    const-string/jumbo v10, "intent_key_user_card_friend"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->access$702(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method
