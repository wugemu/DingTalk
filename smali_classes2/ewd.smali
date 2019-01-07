.class public final Lewd;
.super Ljava/lang/Object;
.source "QuickMessageService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLeyo$d;)V
    .locals 3
    .param p0, "isCaller"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Leyo$d",
            "<",
            "Ljava/util/List",
            "<",
            "Leux;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "callback":Leyo$d;, "Leyo$d<Ljava/util/List<Leux;>;>;"
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-class v2, Lcom/alibaba/android/teleconf/sdk/idl/service/VoipMgrIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/VoipMgrIService;

    .line 29
    .local v1, "service":Lcom/alibaba/android/teleconf/sdk/idl/service/VoipMgrIService;
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListModel;-><init>()V

    .line 30
    .local v0, "queryModel":Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListModel;
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListModel;->maxNum:Ljava/lang/Integer;

    .line 31
    if-eqz p0, :cond_2

    const-string/jumbo v2, "caller"

    :goto_1
    iput-object v2, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListModel;->role:Ljava/lang/String;

    .line 33
    if-eqz v1, :cond_0

    .line 34
    new-instance v2, Lewd$1;

    invoke-direct {v2, p1}, Lewd$1;-><init>(Leyo$d;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/android/teleconf/sdk/idl/service/VoipMgrIService;->queryQuickReplyTextList(Lcom/alibaba/android/teleconf/sdk/idl/model/QueryQuickReplyTextListModel;Liyv;)V

    goto :goto_0

    .line 31
    :cond_2
    const-string/jumbo v2, "callee"

    goto :goto_1
.end method
