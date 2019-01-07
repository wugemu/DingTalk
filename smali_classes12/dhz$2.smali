.class public final Ldhz$2;
.super Ljava/lang/Object;
.source "SendFileHandler.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldhz;


# direct methods
.method public constructor <init>(Ldhz;Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ldhz;

    .prologue
    .line 87
    iput-object p1, p0, Ldhz$2;->c:Ldhz;

    iput-object p2, p0, Ldhz$2;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Ldhz$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1090
    if-eqz p1, :cond_0

    .line 1091
    iget-object v0, p0, Ldhz$2;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1092
    :goto_0
    return-void

    .line 1095
    :cond_0
    new-instance v1, Lcom/alibaba/wukong/im/CreateConversationParams;

    invoke-direct {v1}, Lcom/alibaba/wukong/im/CreateConversationParams;-><init>()V

    .line 1096
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTitle(Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setIcon(Ljava/lang/String;)V

    .line 1098
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setMessage(Lcom/alibaba/wukong/im/Message;)V

    .line 1099
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setTypeMask(I)V

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    iget-object v2, p0, Ldhz$2;->b:Ljava/lang/String;

    invoke-static {v2}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/im/CreateConversationParams;->setOpenIds(Ljava/util/List;)V

    .line 1103
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Ldhz$2$1;

    invoke-direct {v2, p0}, Ldhz$2$1;-><init>(Ldhz$2;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/CreateConversationParams;)V

    goto :goto_0
.end method
