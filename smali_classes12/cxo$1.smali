.class final Lcxo$1;
.super Ljava/lang/Object;
.source "SpaceFileUploadDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcxo;


# direct methods
.method constructor <init>(Lcxo;)V
    .locals 0
    .param p1, "this$0"    # Lcxo;

    .prologue
    .line 54
    iput-object p1, p0, Lcxo$1;->a:Lcxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 57
    iget-object v4, p0, Lcxo$1;->a:Lcxo;

    .line 1026
    iget-object v4, v4, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 57
    if-eqz v4, :cond_0

    iget-object v4, p0, Lcxo$1;->a:Lcxo;

    .line 2026
    iget-object v4, v4, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 57
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    if-nez v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v4, p0, Lcxo$1;->a:Lcxo;

    .line 3026
    iget-object v4, v4, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 61
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 63
    .local v1, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    if-eqz v4, :cond_0

    .line 71
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    .line 74
    .local v0, "customMessageContent":Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;->extension()Ljava/util/Map;

    move-result-object v4

    const-class v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v4, v5}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 76
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    if-eqz v2, :cond_0

    .line 80
    iget-object v4, p0, Lcxo$1;->a:Lcxo;

    .line 4026
    iget-object v4, v4, Lcxo;->d:Landroid/widget/ImageView;

    .line 80
    if-eqz v4, :cond_2

    .line 81
    iget-object v4, p0, Lcxo$1;->a:Lcxo;

    .line 5026
    iget-object v4, v4, Lcxo;->d:Landroid/widget/ImageView;

    .line 81
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :cond_2
    iget-object v3, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 86
    .local v3, "uploadFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    iget-object v5, p0, Lcxo$1;->a:Lcxo;

    .line 6026
    iget-object v5, v5, Lcxo;->a:Landroid/content/Context;

    .line 86
    iget-object v6, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v7, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
