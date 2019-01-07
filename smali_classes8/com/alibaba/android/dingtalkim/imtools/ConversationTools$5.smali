.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/alibaba/wukong/Callback;

.field final synthetic f:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->f:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->e:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 715
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 715
    check-cast p1, Ljava/lang/String;

    .line 1718
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 1720
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1737
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->getTemplateCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1740
    :goto_0
    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1741
    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    .line 1742
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->e:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 715
    return-void

    .line 1722
    :pswitch_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1723
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1724
    const-string/jumbo v3, "im_add_member"

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1725
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->b:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1726
    const-string/jumbo v3, "title"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1729
    const-string/jumbo v3, "im_add_member_markdown"

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1730
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->c:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1731
    const-string/jumbo v3, "markdown"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;->d:Ljava/util/Map;

    move-object v2, v1

    move-object v3, v1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    goto :goto_0

    .line 1720
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
