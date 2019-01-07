.class Lcom/alibaba/wukong/im/VoiceTranslate$1;
.super Liae;
.source "VoiceTranslate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/VoiceTranslate;->translateVoice(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liae",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

.field final synthetic val$duration:J

.field final synthetic val$entityId:Ljava/lang/String;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/VoiceTranslate;Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/wukong/im/VoiceTranslate;
    .param p3, "needAfterRpc"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 36
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<-Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->this$0:Lcom/alibaba/wukong/im/VoiceTranslate;

    iput-object p5, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->val$entityId:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->val$mediaId:Ljava/lang/String;

    iput-wide p7, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->val$duration:J

    invoke-direct {p0, p2, p3, p4}, Liae;-><init>(Lcom/alibaba/wukong/Callback;ZLjava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExecuteRpc(Ljava/lang/Object;Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/wukong/im/VoiceTranslate$1;->onExecuteRpc(Ljava/lang/Void;Lcom/alibaba/wukong/Callback;)V

    return-void
.end method

.method public onExecuteRpc(Ljava/lang/Void;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/wukong/im/VoiceTranslate$1$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/wukong/im/VoiceTranslate$1$1;-><init>(Lcom/alibaba/wukong/im/VoiceTranslate$1;Lcom/alibaba/wukong/Callback;)V

    .line 45
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    new-instance v1, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;

    invoke-direct {v1}, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;-><init>()V

    .line 46
    .local v1, "uploadModel":Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;
    iget-object v2, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->val$entityId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->entityId:Ljava/lang/String;

    .line 47
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->entityType:Ljava/lang/Integer;

    .line 48
    iget-object v2, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->val$mediaId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->mediaId:Ljava/lang/String;

    .line 49
    iget-wide v2, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1;->val$duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;->duration:Ljava/lang/Long;

    .line 50
    const-class v2, Lcom/alibaba/wukong/idl/translate/client/TranslateIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/idl/translate/client/TranslateIService;

    invoke-interface {v2, v1, v0}, Lcom/alibaba/wukong/idl/translate/client/TranslateIService;->translate(Lcom/alibaba/wukong/idl/translate/models/TranslateUploadModel;Liyv;)V

    .line 51
    return-void
.end method
