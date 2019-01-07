.class public final Lics;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "TranslateHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lcom/alibaba/wukong/idl/translate/models/TranslateModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const-string/jumbo v0, "translate"

    const-class v1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;

    invoke-direct {p0, v0, v1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    check-cast p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;

    .line 1024
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->entityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1027
    new-instance v3, Lcom/alibaba/wukong/im/VoiceTranslateData;

    invoke-direct {v3}, Lcom/alibaba/wukong/im/VoiceTranslateData;-><init>()V

    .line 1028
    iget-object v0, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->content:Ljava/lang/String;

    iput-object v0, v3, Lcom/alibaba/wukong/im/VoiceTranslateData;->content:Ljava/lang/String;

    .line 1029
    iget-object v0, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->finish:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->finish:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/alibaba/wukong/im/VoiceTranslateData;->finished:Z

    .line 1030
    iget-object v0, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->version:Ljava/lang/Long;

    invoke-static {v0}, Ligb;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/wukong/im/VoiceTranslateData;->version:J

    .line 1031
    invoke-static {}, Lcom/alibaba/wukong/im/VoiceTranslate;->getInstance()Lcom/alibaba/wukong/im/VoiceTranslate;

    move-result-object v0

    iget-object v4, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->entityId:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/alibaba/wukong/im/VoiceTranslate;->dispatchVoiceTranslateEvent(Ljava/lang/String;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    .line 1033
    iget-object v0, p1, Lcom/alibaba/wukong/idl/translate/models/TranslateModel;->entityId:Ljava/lang/String;

    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1034
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1036
    aget-object v1, v0, v1

    invoke-static {v1}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v4

    .line 1037
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 1039
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getMessageCache()Libs;

    move-result-object v1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, v4, v5}, Libs;->a(Ljava/lang/String;J)Lcom/alibaba/wukong/im/message/MessageImpl;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_0

    .line 1042
    invoke-static {v0, v3}, Libv;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/VoiceTranslateData;)V

    .line 2014
    :cond_0
    invoke-static {p2, v2}, Lhzw;->a(Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;Z)V

    .line 16
    return-void

    :cond_1
    move v0, v2

    .line 1029
    goto :goto_0
.end method
