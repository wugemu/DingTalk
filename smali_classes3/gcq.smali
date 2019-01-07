.class public abstract Lgcq;
.super Lgcj;
.source "ThirdPartMessageFavorite.java"


# instance fields
.field protected g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lgcj;-><init>(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Conversation;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lgcq;->c()V

    .line 25
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lgcq;->b:Lcom/alibaba/wukong/im/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgcq;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgcq;->b:Lcom/alibaba/wukong/im/Message;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lgcq;->b:Lcom/alibaba/wukong/im/Message;

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    iput-object v0, p0, Lgcq;->g:Ljava/lang/Object;

    .line 31
    :cond_0
    return-void
.end method
