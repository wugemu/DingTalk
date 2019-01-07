.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1726
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1727
    .local v3, "fileNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v4, 0x0

    .line 1728
    .local v4, "totalSize":J
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1729
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 1732
    new-instance v0, Ljava/io/File;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1736
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 1737
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1740
    .end local v0    # "file":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;)V

    .line 1763
    .local v6, "listener":Lcma;, "Lcma<Lgre;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$75;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;JLcma;)V

    .line 1764
    return-void
.end method
