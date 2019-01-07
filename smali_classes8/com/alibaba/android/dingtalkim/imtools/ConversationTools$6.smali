.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V
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

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/alibaba/wukong/Callback;

.field final synthetic g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .prologue
    .line 785
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->f:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->f:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 785
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 785
    check-cast p1, Ljava/lang/String;

    .line 1788
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 1791
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1868
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->a:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->getTemplateCode()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1869
    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1870
    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    .line 1871
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->f:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v8}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 785
    return-void

    .line 1795
    :pswitch_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1796
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1797
    const-string/jumbo v3, "im_add_member"

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1798
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->b:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1799
    const-string/jumbo v3, "title"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1802
    const-string/jumbo v3, "im_add_member_markdown"

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1803
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->c:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1804
    const-string/jumbo v3, "markdown"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->d:Ljava/util/Map;

    move-object v2, v1

    move-object v3, v1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    .line 1808
    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1809
    invoke-interface {v0, v2, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    .line 1811
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1812
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1813
    invoke-interface {v0, v2, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->setMessageExcludeReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    .line 1814
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1818
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1819
    const-string/jumbo v3, "im_add_member"

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1820
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->b:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1821
    const-string/jumbo v3, "title"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    new-instance v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v2}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1824
    const-string/jumbo v3, "im_add_member_markdown"

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1825
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->c:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1826
    const-string/jumbo v3, "markdown"

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->e:Ljava/util/List;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v4, v2

    move v2, v6

    .line 1841
    :goto_1
    if-nez v2, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1842
    invoke-static {v4}, Lcoh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1843
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1844
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    const-string/jumbo v4, "md_ver"

    const-string/jumbo v6, "3"

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    new-instance v4, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;

    invoke-direct {v4}, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;-><init>()V

    .line 1847
    const-string/jumbo v6, "im_add_member_markdown_recall"

    iput-object v6, v4, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateId:Ljava/lang/String;

    .line 1848
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->c:Ljava/util/List;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1850
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->c:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1852
    :cond_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    iput-object v6, v4, Lcom/alibaba/wukong/idl/im/models/AttachmentExtensionModel;->templateData:Ljava/util/List;

    .line 1854
    const-string/jumbo v2, "new_markdown"

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;->d:Ljava/util/Map;

    move-object v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/im/MessageBuilder;->buildRobotMarkdownIconExMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1857
    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1858
    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/MessageBuilder;->appendSenderName(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    .line 1860
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1862
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->setMessageReceivers(Lcom/alibaba/wukong/im/Message;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    .line 1863
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1834
    :catch_0
    move-exception v2

    .line 1835
    const-string/jumbo v3, "im"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v9, "[ConversationTools]buildSystemMessageV2Async exception:"

    aput-object v9, v4, v6

    .line 1837
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 1836
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1835
    invoke-static {v3, v1, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v7

    move-object v4, v1

    .line 1839
    goto/16 :goto_1

    .line 1791
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
