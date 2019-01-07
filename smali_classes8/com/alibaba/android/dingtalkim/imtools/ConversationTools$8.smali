.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJILjava/util/List;Lcom/alibaba/wukong/Callback;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .prologue
    .line 990
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->e:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->b:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->c:I

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 990
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 990
    move-object v4, p1

    check-cast v4, Ljava/util/List;

    .line 1994
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->a:Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->b:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->c:I

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/ConversationService;->addMembersV2(Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/util/List;[Ljava/lang/Long;)V

    .line 990
    return-void

    .line 1994
    :cond_0
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Long;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Long;

    goto :goto_0
.end method
