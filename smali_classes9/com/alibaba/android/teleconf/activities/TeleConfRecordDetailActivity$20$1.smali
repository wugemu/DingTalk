.class final Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;
.super Ljava/lang/Object;
.source "TeleConfRecordDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "confMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 393
    .local v1, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;

    iget-object v3, v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 394
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;

    iget-object v4, v4, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    .end local v1    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20$1;->b:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;->a:Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)V

    .line 399
    return-void
.end method
