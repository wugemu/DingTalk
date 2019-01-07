.class Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;
.super Ljava/lang/Object;
.source "PhoneContact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

.field final synthetic val$request:Lcom/alibaba/doraemon/request/Request;

.field final synthetic val$response:Lcom/alibaba/doraemon/request/Response;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->val$request:Lcom/alibaba/doraemon/request/Request;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->val$response:Lcom/alibaba/doraemon/request/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->val$request:Lcom/alibaba/doraemon/request/Request;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v13

    .line 177
    .local v13, "url":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->val$response:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 181
    const/4 v10, 0x0

    .line 183
    .local v10, "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->val$response:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v10

    .line 184
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lchi;

    .line 185
    .local v11, "localContactNewObject":Lchi;
    if-eqz v11, :cond_2

    iget-object v1, v11, Lchi;->d:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v10}, Lcom/alibaba/doraemon/request/RequestInputStream;->toBytes()[B

    move-result-object v1

    iput-object v1, v11, Lchi;->c:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 189
    .end local v11    # "localContactNewObject":Lchi;
    :catch_0
    move-exception v9

    .line 190
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    if-eqz v10, :cond_3

    .line 194
    :try_start_2
    invoke-virtual {v10}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    .end local v10    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :goto_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v12, 0x0

    .line 206
    .local v12, "size":I
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lchi;

    .line 207
    .local v8, "contactObject":Lchi;
    if-eqz v8, :cond_4

    iget-object v0, v8, Lchi;->a:Ljava/lang/String;

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v8, Lchi;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lchi;->b:Ljava/util/List;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 213
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a()Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;

    move-result-object v0

    iget-object v1, v8, Lchi;->a:Ljava/lang/String;

    iget-object v2, v8, Lchi;->c:[B

    iget-object v4, v8, Lchi;->b:Ljava/util/List;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/dingtalk/telebase/TelPhoneContactInterface;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    add-int/lit8 v12, v12, 0x1

    .line 219
    goto :goto_4

    .line 192
    .end local v8    # "contactObject":Lchi;
    .end local v12    # "size":I
    .restart local v10    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_5
    if-eqz v10, :cond_6

    .line 194
    :try_start_3
    invoke-virtual {v10}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 195
    :catch_1
    move-exception v9

    .line 196
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 195
    .local v9, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 196
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 192
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_7

    .line 194
    :try_start_4
    invoke-virtual {v10}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 199
    :cond_7
    :goto_6
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw v0

    .line 195
    :catch_3
    move-exception v9

    .line 196
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 202
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "iStream":Lcom/alibaba/doraemon/request/RequestInputStream;
    :cond_8
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 221
    .restart local v12    # "size":I
    :cond_9
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v12, v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 226
    :goto_7
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v0, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$502(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver$1;->this$1:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact$AvatarResponseReceiver;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;->access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/PhoneContact;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_7
.end method
