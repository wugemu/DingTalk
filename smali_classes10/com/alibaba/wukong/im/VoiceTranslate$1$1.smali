.class Lcom/alibaba/wukong/im/VoiceTranslate$1$1;
.super Lhzy;
.source "VoiceTranslate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/wukong/im/VoiceTranslate$1;->onExecuteRpc(Ljava/lang/Void;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhzy",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/wukong/im/VoiceTranslate$1;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/VoiceTranslate$1;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/wukong/im/VoiceTranslate$1;

    .prologue
    .line 39
    .local p2, "x0":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/alibaba/wukong/im/VoiceTranslate$1$1;->this$1:Lcom/alibaba/wukong/im/VoiceTranslate$1;

    invoke-direct {p0, p2}, Lhzy;-><init>(Lcom/alibaba/wukong/Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertDo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/alibaba/wukong/im/VoiceTranslate$1$1;->convertDo(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public convertDo(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "resultModel"    # Ljava/lang/Void;

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
