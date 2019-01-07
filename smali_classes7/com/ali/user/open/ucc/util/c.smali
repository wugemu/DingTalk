.class public Lcom/ali/user/open/ucc/util/c;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    if-nez p0, :cond_0

    .line 12
    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p1, "\u4eb2\uff0c\u60a8\u7684\u624b\u673a\u7f51\u7edc\u4e0d\u592a\u987a\u7545\u5594~"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    goto :goto_0
.end method
