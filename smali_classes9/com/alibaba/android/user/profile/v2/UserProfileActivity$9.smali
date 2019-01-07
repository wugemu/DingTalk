.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    iput-wide p2, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1312
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "my_user_model"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->a:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1315
    :try_start_0
    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 1316
    .local v3, "reader":Lcom/google/gson/stream/JsonReader;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 1317
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    const-class v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-static {v5, v3, v6}, Lcor;->a(Lcom/google/gson/Gson;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1319
    .local v4, "userProfileExtensionObjectFromJson":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v4, :cond_0

    .line 1320
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v5, v4}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1322
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    .line 2084
    iget-object v2, v5, Lccr;->d:Lccs;

    .line 1323
    .local v2, "localizationConverter":Lccs;
    if-eqz v2, :cond_0

    .line 1324
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v5

    invoke-interface {v2, v5}, Lccs;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    .end local v2    # "localizationConverter":Lccs;
    .end local v3    # "reader":Lcom/google/gson/stream/JsonReader;
    .end local v4    # "userProfileExtensionObjectFromJson":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;->b:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;

    invoke-direct {v6, p0, v0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$9;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1348
    return-void

    .line 1327
    :catch_0
    move-exception v1

    .line 1328
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
