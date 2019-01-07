.class final Ldrg$1$1;
.super Ljava/lang/Object;
.source "EncryptVoiceTranslateHelper.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrg$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldrg$1;


# direct methods
.method constructor <init>(Ldrg$1;)V
    .locals 0
    .param p1, "this$0"    # Ldrg$1;

    .prologue
    .line 71
    iput-object p1, p0, Ldrg$1$1;->a:Ldrg$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    const-string/jumbo v0, "null"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "uploadTranslateEncryptVoice upload File Exception : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", msg : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v0, v0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v0, v0, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J
    .param p5, "i"    # I

    .prologue
    .line 74
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    check-cast p1, Lifx;

    .line 1078
    if-eqz p1, :cond_1

    .line 2034
    :try_start_0
    iget-object v0, p1, Lifx;->b:Ljava/lang/String;

    .line 1080
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v1, v1, Ldrg$1;->b:Lcom/alibaba/wukong/im/Message;

    .line 2132
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1082
    :cond_0
    :goto_0
    iget-object v1, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v1, v1, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v1, v1, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1091
    :cond_1
    :goto_1
    return-void

    .line 2135
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2136
    const-string/jumbo v3, "ext_decrypt_voice_url"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Message;->updateLocalExtrasByKeys(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uploadTranslateEncryptVoice authUrl MediaIdEncodingException "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3022
    const-string/jumbo v3, "im"

    invoke-static {v1, v2, v3}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v1, v1, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v1, :cond_1

    .line 1089
    iget-object v1, p0, Ldrg$1$1;->a:Ldrg$1;

    iget-object v1, v1, Ldrg$1;->a:Lcom/alibaba/wukong/Callback;

    const-string/jumbo v2, "uploadTranslateEncryptVoice fail"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
