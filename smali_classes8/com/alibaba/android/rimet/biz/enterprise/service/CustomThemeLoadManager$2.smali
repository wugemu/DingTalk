.class public final Lcom/alibaba/android/rimet/biz/enterprise/service/CustomThemeLoadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "CustomThemeLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Leim;


# direct methods
.method public constructor <init>(Leim;)V
    .locals 0
    .param p1, "this$0"    # Leim;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/service/CustomThemeLoadManager$2;->a:Leim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    if-eqz p2, :cond_0

    const-string/jumbo v1, "contact_theme_apply"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string/jumbo v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0    # "data":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v1, "orgId"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 93
    .local v2, "orgId":J
    const-string/jumbo v1, "url"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "url":Ljava/lang/String;
    const-string/jumbo v1, "md5"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "md5":Ljava/lang/String;
    const-string/jumbo v1, "priority"

    const-wide v10, 0x7fffffffffffffffL

    invoke-virtual {v9, v1, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 97
    .local v6, "priority":J
    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-lez v1, :cond_0

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/service/CustomThemeLoadManager$2;->a:Leim;

    invoke-virtual/range {v1 .. v7}, Leim;->a(JLjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v2    # "orgId":J
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "md5":Ljava/lang/String;
    .end local v6    # "priority":J
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 105
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    const-string/jumbo v1, "dingtalkbase"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "contact_theme_apply error data "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v2    # "orgId":J
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v5    # "md5":Ljava/lang/String;
    .restart local v6    # "priority":J
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/service/CustomThemeLoadManager$2;->a:Leim;

    invoke-virtual {v1, v2, v3}, Leim;->a(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
