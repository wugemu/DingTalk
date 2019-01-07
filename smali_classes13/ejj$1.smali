.class final Lejj$1;
.super Ljava/lang/Object;
.source "FastConfigJsonHandler.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/ResponseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lejj;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lejj;


# direct methods
.method constructor <init>(Lejj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lejj;

    .prologue
    .line 90
    iput-object p1, p0, Lejj$1;->b:Lejj;

    iput-object p2, p0, Lejj$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChange(Lcom/alibaba/doraemon/request/Request;JJ)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "l"    # J
    .param p4, "l1"    # J

    .prologue
    .line 118
    return-void
.end method

.method public final onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 13
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 94
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    invoke-interface {p2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    .line 96
    .local v2, "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Lcom/alibaba/doraemon/utils/IOUtils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "content":Ljava/lang/String;
    iget-object v7, p0, Lejj$1;->b:Lejj;

    iget-object v4, p0, Lejj$1;->a:Ljava/lang/String;

    .line 1124
    invoke-static {v0}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 1125
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1126
    const-string/jumbo v8, "topics"

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 1127
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1129
    const-string/jumbo v6, "cs-idx-ver"

    invoke-static {v6, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-static {v4}, Lcom/alibaba/wukong/WKManager;->saveConfigVersion(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    move v6, v5

    .line 1132
    :goto_0
    if-ge v6, v9, :cond_2

    .line 1133
    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 1134
    const-string/jumbo v10, "name"

    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1135
    invoke-static {v4}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1136
    const/4 v4, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1171
    invoke-static {}, Leji;->a()Leji;

    move-result-object v4

    new-instance v12, Lejj$5;

    invoke-direct {v12, v7, v10}, Lejj$5;-><init>(Lejj;Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Leji;->a(Ljava/lang/String;Lejh;)V

    .line 1132
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 1136
    :sswitch_0
    const-string/jumbo v12, "hpm"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move v4, v5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v12, "web"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v12, "biz_group"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v12, "sw"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v12, "sw_apps"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    .line 1138
    :pswitch_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateHpmFastConfigData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 105
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v4, "fast_config"

    const-string/jumbo v5, "onRequestFinsh parse fail"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_3
    return-void

    .line 1141
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "stream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->updateWebConfigData(Ljava/lang/String;)V

    goto :goto_2

    .line 1144
    :pswitch_2
    invoke-static {}, Leji;->a()Leji;

    move-result-object v4

    new-instance v10, Lejj$2;

    invoke-direct {v10, v7}, Lejj$2;-><init>(Lejj;)V

    invoke-virtual {v4, v11, v10}, Leji;->a(Ljava/lang/String;Lejh;)V

    goto :goto_2

    .line 1153
    :pswitch_3
    invoke-static {}, Leji;->a()Leji;

    move-result-object v4

    new-instance v10, Lejj$3;

    invoke-direct {v10, v7}, Lejj$3;-><init>(Lejj;)V

    invoke-virtual {v4, v11, v10}, Leji;->a(Ljava/lang/String;Lejh;)V

    goto/16 :goto_2

    .line 1162
    :pswitch_4
    invoke-static {}, Leji;->a()Leji;

    move-result-object v4

    new-instance v10, Lejj$4;

    invoke-direct {v10, v7}, Lejj$4;-><init>(Lejj;)V

    invoke-virtual {v4, v11, v10}, Leji;->a(Ljava/lang/String;Lejh;)V

    goto/16 :goto_2

    .line 99
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "content="

    .line 100
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 101
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 102
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "description":Ljava/lang/String;
    const-string/jumbo v4, "fast_config"

    const-string/jumbo v5, "tag=onRequestFinsh"

    invoke-static {v4, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1136
    :sswitch_data_0
    .sparse-switch
        -0x6c1a2c93 -> :sswitch_4
        0xe64 -> :sswitch_3
        0x19465 -> :sswitch_0
        0x1cb54 -> :sswitch_1
        0x3b437c53 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 113
    return-void
.end method
