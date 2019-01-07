.class final Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;
.super Ljava/lang/Object;
.source "VoiceTranslateManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

.field final synthetic b:Lcom/alibaba/wukong/im/Message;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->c:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->a:Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 221
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "tryTranslateEncryptVoice exception : "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", msg : "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    const-string/jumbo v1, "im"

    invoke-static {v3, v0, v1}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->c:Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->b:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;->a(Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    check-cast p1, Ljava/lang/String;

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->a:Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/im/MessageContent$EncryptAudioContent;->setUrl(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/VoiceTranslateManager$1;->b:Lcom/alibaba/wukong/im/Message;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->translateVoice(Lcom/alibaba/wukong/Callback;)V

    .line 211
    return-void
.end method
